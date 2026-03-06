#!/usr/bin/env python3

import argparse
import hashlib
import json
import sys
from pathlib import Path

INCLUDE_ROOTS = ["data", "mods", "modules", "init.lua", "OTBaiak OTC.exe"]
EXCLUDE_SUFFIXES = {".log"}
EXCLUDE_FILES = {"release_windows.py"}


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

    unique = sorted(set(files), key=lambda p: p.as_posix())
    return [build_file_entry(root, file_path) for file_path in unique]


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

    files = collect_files(root)
    if not files:
        print("ERROR: no files collected for manifest", file=sys.stderr)
        return 1

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
    }

    client_path = root / "client.windows.json"
    assets_path = root / "assets.windows.json"
    version_path = root / "version.json"

    write_json(client_path, client_manifest)
    write_json(assets_path, assets_manifest)
    write_json(version_path, version_manifest)

    for path in [client_path, assets_path, version_path, executable]:
        write_sha256(path)

    print("Release files generated:")
    print("- client.windows.json")
    print(f"- client.windows.json entries: {len(files)}")
    print("- assets.windows.json")
    print("- version.json")
    print("- OTBaiak OTC.exe.sha256")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
