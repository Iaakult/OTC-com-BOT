#!/usr/bin/env python3

import argparse
import hashlib
import json
import sys
from pathlib import Path
import zipfile

INCLUDE_ROOTS = ["data", "mods", "modules", "init.lua", "OTBaiak OTC.exe"]
EXCLUDE_SUFFIXES = {".log"}
EXCLUDE_FILES = {"release_windows.py"}
BUNDLE_PART_MAX_BYTES = 80 * 1024 * 1024
BUNDLE_ROOT = "data/things/1511"


def sha256_file(path: Path) -> str:
    hasher = hashlib.sha256()
    with path.open("rb") as handle:
        for chunk in iter(lambda: handle.read(1024 * 1024), b""):
            hasher.update(chunk)
    return hasher.hexdigest()


def write_json(path: Path, payload):
    with path.open("w", encoding="utf-8") as handle:
        json.dump(payload, handle, indent=2, ensure_ascii=False)
        handle.write("\n")


def write_sha256(path: Path):
    digest = sha256_file(path)
    out = path.with_suffix(path.suffix + ".sha256")
    out.write_text(f"{digest}  {path.name}\n", encoding="utf-8")


def collect_file_paths(root: Path):
    files = []

    for item in INCLUDE_ROOTS:
        path = root / item
        if not path.exists():
            continue

        if path.is_file():
            if path.name in EXCLUDE_FILES or path.suffix in EXCLUDE_SUFFIXES:
                continue
            files.append(path)
            continue

        for candidate in sorted(path.rglob("*")):
            if not candidate.is_file():
                continue
            if candidate.name in EXCLUDE_FILES:
                continue
            if candidate.suffix in EXCLUDE_SUFFIXES:
                continue
            files.append(candidate)

    return sorted(set(files), key=lambda p: p.as_posix())


def build_file_entry(root: Path, path: Path):
    rel = path.relative_to(root).as_posix()
    digest = sha256_file(path)
    size = path.stat().st_size
    return {
        "url": rel,
        "localfile": rel,
        "packedhash": digest,
        "packedsize": size,
        "unpackedhash": digest,
        "unpackedsize": size,
    }


def collect_files(root: Path):
    return [build_file_entry(root, file_path) for file_path in collect_file_paths(root)]


def build_bundle_parts(root: Path, files: list[Path]) -> list[Path]:
    if not files:
        raise RuntimeError("No files available for bundle generation")

    parts: list[list[Path]] = []
    current_part: list[Path] = []
    current_size = 0

    for file_path in files:
        file_size = file_path.stat().st_size
        if current_part and current_size + file_size > BUNDLE_PART_MAX_BYTES:
            parts.append(current_part)
            current_part = []
            current_size = 0

        current_part.append(file_path)
        current_size += file_size

    if current_part:
        parts.append(current_part)

    bundle_paths: list[Path] = []
    for index, part_files in enumerate(parts, start=1):
        bundle_path = root / f"assets.bundle.part{index}.zip"
        with zipfile.ZipFile(bundle_path, "w", compression=zipfile.ZIP_DEFLATED, compresslevel=9) as archive:
            for file_path in part_files:
                arcname = file_path.relative_to(root).as_posix()
                archive.write(file_path, arcname=arcname)
        bundle_paths.append(bundle_path)

    return bundle_paths


def collect_bundle_paths(root: Path):
    bundle_root = root / BUNDLE_ROOT
    if not bundle_root.is_dir():
        raise FileNotFoundError(f"Missing bundle directory: {bundle_root}")

    files = []
    for candidate in sorted(bundle_root.rglob("*")):
        if not candidate.is_file():
            continue
        if candidate.name in EXCLUDE_FILES:
            continue
        if candidate.suffix in EXCLUDE_SUFFIXES:
            continue
        files.append(candidate)

    if not files:
        raise RuntimeError(f"No files found in bundle directory: {bundle_root}")

    return files


def main() -> int:
    parser = argparse.ArgumentParser(description="Generate OTC release manifests for launcher updates")
    parser.add_argument("--generation", required=True, help="Release generation, e.g. otc-v1")
    parser.add_argument("--revision", required=True, type=int, help="Numeric revision")
    parser.add_argument("--version", required=True, help="Display version, e.g. OTC-1.0")
    parser.add_argument("--variant", default="otc-com-bot", help="Variant name")
    parser.add_argument("--root", default=".", help="Project root (default: current dir)")
    args = parser.parse_args()

    root = Path(args.root).resolve()
    executable = root / "OTBaiak OTC.exe"
    if not executable.exists():
        print(f"ERROR: missing executable {executable}", file=sys.stderr)
        return 1

    file_paths = collect_file_paths(root)
    files = [build_file_entry(root, file_path) for file_path in file_paths]
    if not files:
        print("ERROR: no files collected for manifest", file=sys.stderr)
        return 1

    bundle_file_paths = collect_bundle_paths(root)
    bundle_parts = build_bundle_parts(root, bundle_file_paths)
    bundle_urls = [path.name for path in bundle_parts]
    bundle_sha_list = [sha256_file(path) for path in bundle_parts]

    client_manifest = {
        "revision": args.revision,
        "version": args.version,
        "files": files,
        "executable": "OTBaiak OTC.exe",
        "generation": args.generation,
        "variant": args.variant,
    }

    assets_manifest = {
        "version": args.revision,
        "files": [],
    }

    version_manifest = {
        "revision": args.revision,
        "version": args.version,
        "generation": args.generation,
        "variant": args.variant,
        "assets_bundle_urls": bundle_urls,
        "assets_bundle_sha256_list": bundle_sha_list,
        "assets_bundle_url": bundle_urls[0],
        "assets_bundle_sha256": bundle_sha_list[0],
    }

    client_path = root / "client.windows.json"
    assets_path = root / "assets.windows.json"
    version_path = root / "version.json"

    write_json(client_path, client_manifest)
    write_json(assets_path, assets_manifest)
    write_json(version_path, version_manifest)

    for path in [client_path, assets_path, version_path, executable, *bundle_parts]:
        write_sha256(path)

    print("Release files generated:")
    print("- client.windows.json")
    print(f"- client.windows.json entries: {len(files)}")
    print("- assets.windows.json")
    print("- version.json")
    print("- assets bundles:")
    for path in bundle_parts:
        print(f"  * {path.name}")
    print("- OTBaiak OTC.exe.sha256")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
