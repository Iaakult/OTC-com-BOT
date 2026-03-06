WheelDestiny = {}

WheelDestiny.Sides = {
    ["topLeft"] = {
        child = {1, 7, 2, 13, 8, 3, 14, 9, 15},
        perks = {
            [1] = {
                largeClip = 0,
                text = "Gift of Life\nAllows you to survive an\notherwise fatal blow.",
                revelation = "Gift of Life"
            },
            [2] = {
                largeClip = 0,
                text = "Gift of Life\nAllows you to survive an\notherwise fatal blow.",
                revelation = "Gift of Life"
            },
            [3] = {
                largeClip = 0,
                text = "Gift of Life\nAllows you to survive an\notherwise fatal blow.",
                revelation = "Gift of Life"
            },
            [4] = {
                largeClip = 0,
                text = "Gift of Life\nAllows you to survive an\notherwise fatal blow.",
                revelation = "Gift of Life"
            },
            [5] = {
                largeClip = 0,
                text = "Gift of Life\nAllows you to survive an\notherwise fatal blow.",
                revelation = "Gift of Life"
            },
        }
    },
    ["topRight"] = {
        child = {6, 5, 12, 11, 4, 10, 18, 17, 16},
        perks = {
            [1] = {
                largeClip = 1,
                text = "Executioner's Throw\nThrowing attack that deals\nmassive damage to\nenemies with low hit\npoints.",
                revelation = "Executioner's ..."
                
            },
            [2] = {
                largeClip = 4,
                text = "Divine Grenade\nDeploy a powerful delayed\neffect that deals holy\ndamage.",
                revelation = "Divine Grenade"
            },
            [3] = {
                largeClip = 7,
                text = "Beam Mastery\nBoosts all of your beam\nspells and unlocks a beam\nspell that deals death\ndamage.",
                revelation = "Beam Mastery"
            },
            [4] = {
                largeClip = 11,
                text = "Blessing Of the Grove\nIncreases your healing if\nthe target's missing hit\npoints is below certain\nthresholds.",
                revelation = "Blessing Of the..."
            },
            [5] = {
                largeClip = 13,
                text = "Spiritual Outburst\nA powerful spell that\nconsumes Harmony to release\na massive chain attack.",
                revelation = "Spiritual Outburst"
            }
        }
    },
    ["bottomLeft"] = {
        child = {21, 20, 27, 19, 26, 33, 25, 32, 31},
        perks = {
            [1] = {
                largeClip = 2,
                text = "Combat Mastery\nImprove your combat\nprowess based on the\nequipment you use.",
                revelation = "Combat Mastery"
            },
            [2] = {
                largeClip = 5,
                text = "Divine Empowerment\nThis support spell creates\na field that increases your\ndealt damage.",
                revelation = "Divine Empow..."
            },
            [3] = {
                largeClip = 8,
                text = "Drain Body\nImprove your crippling\nspells by adding mana or\nlife leech to them.",
                revelation = "Drain Body"
            },
            [4] = {
                largeClip = 10,
                text = "Twin Bursts\nPowerful ring spell that\ndeals ice or earth damage\nthat is enchanced against\ntargets with high hit points.",
                revelation = "Twin Bursts"
            },
            [5] = {
                largeClip = 14,
                text = "Ascetic\nImprove all spenders and\nallows mantra to improve the\ndamage of your attacks.",
                revelation = "Ascetic"
            }
        }
    },
    ["bottomRight"] = {
        child = {22, 23, 28, 34, 29, 24, 30, 35, 36},
        perks = {
            [1] = {
                largeClip = 3,
                text = "Avatar of Steel\nTransforms you into a\npowerful form that reeduces\ndamage taken and\nincreases damage dealt.",
                revelation = "Avatar of Steel"
            },
            [2] = {
                largeClip = 6,
                text = "Avatar of Light\nTransforms you into a\npowerful form that reeduces\ndamage taken and\nincreases damage dealt.",
                revelation = "Avatar of Light"
            },
            [3] = {
                largeClip = 9,
                text = "Avatar of Storm\nTransforms you into a\npowerful form that reeduces\ndamage taken and\nincreases damage dealt.",
                revelation = "Avatar of Storm"
            },
            [4] = {
                largeClip = 12,
                text = "Avatar of Nature\nTransforms you into a\npowerful form that reeduces\ndamage taken and\nincreases damage dealt.",
                revelation = "Avatar of Nature"
            },
            [5] = {
                largeClip = 15,
                text = "Avatar of Balance\nTransforms you into a\npowerful form that reduces\ndamage taken and increases\ndamage dealt.",
                revelation = "Avatar of Balance"
            }
        }
    }
}

WheelDestiny.Slots = {
    [1] = {min = 0, max = 200, brothers = {7, 2}, dependency = {}, perk = {}},
    [2] = {min = 0, max = 150, brothers = {8, 3, 7}, dependency = {1}, perk = {}},
    [3] = {min = 0, max = 100, brothers = {9, 8, 4}, dependency = {2}, perk = {}},
    [4] = {min = 0, max = 100, brothers = {10, 3, 11}, dependency = {5}, perk = {}},
    [5] = {min = 0, max = 150, brothers = {4, 11, 12}, dependency = {6}, perk = {}},
    [6] = {min = 0, max = 200, brothers = {5, 12}, dependency = {}, perk = {}},
    [7] = {min = 0, max = 150, brothers = {13, 8, 2}, dependency = {1}, perk = {}},
    [8] = {min = 0, max = 100, brothers = {14, 9, 3, 13}, dependency = {7, 2}, perk = {}},
    [9] = {min = 0, max = 75, brothers = {15, 14, 10}, dependency = {3, 8}, perk = {}},
    [10] = {min = 0, max = 75, brothers = {16, 17, 9}, dependency = {4, 11}, perk = {}},
    [11] = {min = 0, max = 100, brothers = {10, 17, 4, 18}, dependency = {5, 12}, perk = {}},
    [12] = {min = 0, max = 150, brothers = {11, 18, 5}, dependency = {6}, perk = {}},
    [13] = {min = 0, max = 100, brothers = {14, 19, 8}, dependency = {7}, perk = {}},
    [14] = {min = 0, max = 75, brothers = {15, 9, 20}, dependency = {13, 8}, perk = {}},
    [15] = {min = 0, max = 50, brothers = {}, dependency = {14, 9}, perk = {}},
    [16] = {min = 0, max = 50, brothers = {}, dependency = {10, 17}, perk = {}},
    [17] = {min = 0, max = 75, brothers = {16, 23, 10}, dependency = {11, 18}, perk = {}},
    [18] = {min = 0, max = 100, brothers = {17, 11, 24}, dependency = {12}, perk = {}},
    [19] = {min = 0, max = 100, brothers = {20, 13, 26}, dependency = {25}, perk = {}},
    [20] = {min = 0, max = 75, brothers = {21, 14, 27}, dependency = {19, 26}, perk = {}},
    [21] = {min = 0, max = 50, brothers = {}, dependency = {20, 27}, perk = {}},
    [22] = {min = 0, max = 50, brothers = {}, dependency = {28, 23}, perk = {}},
    [23] = {min = 0, max = 75, brothers = {22, 17, 28}, dependency = {24, 29}, perk = {}},
    [24] = {min = 0, max = 100, brothers = {23, 29, 18}, dependency = {30}, perk = {}},
    [25] = {min = 0, max = 150, brothers = {19, 26, 32}, dependency = {31}, perk = {}},
    [26] = {min = 0, max = 100, brothers = {20, 27, 19, 33}, dependency = {25, 32}, perk = {}},
    [27] = {min = 0, max = 75, brothers = {21, 20, 28}, dependency = {26, 33}, perk = {}},
    [28] = {min = 0, max = 75, brothers = {22, 27, 23}, dependency = {34, 29}, perk = {}},
    [29] = {min = 0, max = 100, brothers = {28, 23, 24, 34}, dependency = {35, 30}, perk = {}},
    [30] = {min = 0, max = 150, brothers = {29, 24, 35}, dependency = {36}, perk = {}},
    [31] = {min = 0, max = 200, brothers = {25, 32}, dependency = {}, perk = {}},
    [32] = {min = 0, max = 150, brothers = {25, 26, 33}, dependency = {31}, perk = {}},
    [33] = {min = 0, max = 100, brothers = {27, 26, 34}, dependency = {32}, perk = {}},
    [34] = {min = 0, max = 100, brothers = {28, 33, 29}, dependency = {35}, perk = {}},
    [35] = {min = 0, max = 150, brothers = {34, 29, 30}, dependency = {36}, perk = {}},
    [36] = {min = 0, max = 200, brothers = {35, 30}, dependency = {}, perk = {}}
}

WheelDestiny.SocketsTier = {
    [0] = { -- Top Left
        [1] = { enabled = 1, disabled = 13 },
        [2] = { enabled = 2, disabled = 14 },
        [3] = { enabled = 3, disabled = 15 }
    },
    [1] = { -- Top Right
        [1] = { enabled = 4, disabled = 16 },
        [2] = { enabled = 5, disabled = 17 },
        [3] = { enabled = 6, disabled = 18 }
    },
    [2] = { -- Bottom Left
        [1] = { enabled = 7, disabled = 19 },
        [2] = { enabled = 8, disabled = 20 },
        [3] = { enabled = 9, disabled = 21 }
    },
    [3] = { -- Bottom Right
        [1] = { enabled = 10, disabled = 22 },
        [2] = { enabled = 11, disabled = 23 },
        [3] = { enabled = 12, disabled = 24 }
    }
}

WheelDestiny.GemSlots = {
    [15] = { affinity = 0, index = 1 },
    [3] = { affinity = 0, index = 2 },
    [7] = { affinity = 0, index = 3 },

    [10] = { affinity = 1, index = 1 },
    [18] = { affinity = 1, index = 2 },
    [5] = { affinity = 1, index = 3 },

    [27] = {affinity = 2, index = 1 },
    [19] = { affinity = 2, index = 2 },
    [32] = { affinity = 2, index = 3 },

    [22] = { affinity = 3, index = 1 },
    [34] = { affinity = 3, index = 2 },
    [30] = { affinity = 3, index = 3 },
}


WheelDestiny.MediumPerkInfos = {
    [1] = {
        FormatType = "PlusFullPercent",
        LongInfo = "",
        Name = "Fire Resistance",
        SummaryPriority = 3
    },
    [2] = {
        FormatType = "PlusFullPercent",
        LongInfo = "",
        Name = "Energy Resistance",
        SummaryPriority = 3
    },
    [3] = {
        FormatType = "PlusFullPercent",
        LongInfo = "",
        Name = "Ice Resistance",
        SummaryPriority = 3
    },
    [4] = {
        FormatType = "PlusFullPercent",
        LongInfo = "",
        Name = "Earth Resistance",
        SummaryPriority = 3
    },
    [5] = {
        FormatType = "SpecialFormat",
        LongInfo = "",
        Name = "Holy and Death Resistance",
        SummaryPriority = 2
    },
    [6] = {
        FormatType = "PlusPercentWithTwoFloatingpoints",
        LongInfo = "",
        Name = "Mana Leech",
        SummaryPriority = 4
    },
    [7] = {
        FormatType = "PlusPercentWithTwoFloatingpoints",
        LongInfo = "",
        Name = "Life Leech",
        SummaryPriority = 4
    },
    [8] = {
        FormatType = "PlusInteger",
        LongInfo = "Applies to sword, axe and club fighting",
        Name = "Weapon Skill Boost",
        SummaryPriority = 0
    },
    [9] = {
        FormatType = "NoEffectDisplay",
        LongInfo = "Gain +6 shielding and +1 sword/axe/club fighting when 5 creatures are on adjacent squares.\nFor each additional creature, up to a maximum of 8, you get +6 shielding and +1 sword/axe/club fighting more.",
        Name = "Battle Instinct",
        SummaryPriority = 0
    },
    [10] = {
        FormatType = "NoEffectDisplay",
        LongInfo = "For each creature challenged, you will heal yourself for a small amount. This amount scales with your shielding skill. Heals for double the amount if you have less than 60% of your hit points and triple the amount if you have less than 30% of your hit points.",
        Name = "Battle Healing",
        SummaryPriority = 0
    },
    [11] = {
        Aug1Info = "-30 Mana Cost",
        Aug2Info = "+10% Base Damage",
        FormatType = "RomanNumerals",
        Name = "Augmented Fierce Berserk|Aug. Fierce Berserk",
        SummaryPriority = 1
    },
    [12] = {
        Aug1Info = "+125% Base Healing",
        Aug2Info = "-300s Cooldown",
        FormatType = "RomanNumerals",
        Name = "Augmented Intense Wound Cleansing|Aug. Intense Wound Cleansing",
        SummaryPriority = 1
    },
    [13] = {
        Aug1Info = "Adds 5% life leech to this spell",
        Aug2Info = "+14% Base Damage",
        FormatType = "RomanNumerals",
        Name = "Augmented Front Sweep|Aug. Front Sweep",
        SummaryPriority = 1
    },
    [14] = {
        Aug1Info = "+12.5% Base Damage",
        Aug2Info = "-2s Cooldown",
        FormatType = "RomanNumerals",
        Name = "Augmented Groundshaker|Aug. Groundshaker",
        SummaryPriority = 1
    },
    [15] = {
        Aug1Info = "-20 Mana Cost",
        Aug2Info = "Jumps to +1 additional target",
        FormatType = "RomanNumerals",
        Name = "Augmented Chivalrous Challenge|Aug. Chivalrous Challenge",
        SummaryPriority = 1
    },
    [16] = {
        FormatType = "PlusInteger",
        LongInfo = "",
        Name = "Distance Skill Boost",
        SummaryPriority = 0
    },
    [17] = {
        FormatType = "NoEffectDisplay",
        LongInfo = "The critical extra damage for attacks with a crossbow is increased by 10%.\nWhile wielding a bow your attacks and spells treat the targets physical and holy sensitivity as being 2% higher.",
        Name = "Ballistic Mastery",
        SummaryPriority = 0
    },
    [18] = {
        FormatType = "NoEffectDisplay",
        LongInfo = "Gain +3 distance fighting while no monster is within 1 squares. Otherwise gain +3 holy magic level and +3 healing magic level.",
        Name = "Positional Tactics",
        SummaryPriority = 0
    },
    [19] = {
        Aug1Info = "-20 Mana Cost",
        Aug2Info = "+8.5% Base Damage",
        FormatType = "RomanNumerals",
        Name = "Augmented Divine Caldera|Aug. Divine Caldera",
        SummaryPriority = 1
    },
    [20] = {
        Aug1Info = "Focus secondary group cooldown -8s. Attacks and spells are enabled but dealt damage is reduced by 50%.",
        Aug2Info = "-6s Cooldown and the damage dealt is no longer reduced.",
        FormatType = "RomanNumerals",
        Name = "Augmented Swift Foot|Aug. Swift Foot",
        SummaryPriority = 1
    },
    [21] = {
        Aug1Info = "Jumps to +1 additional target",
        Aug2Info = "Duration increased; -4s Cooldown",
        FormatType = "RomanNumerals",
        Name = "Augmented Divine Dazzle|Aug. Divine Dazzle",
        SummaryPriority = 1
    },
    [22] = {
        Aug1Info = "-2s Cooldown",
        Aug2Info = "+380% Base Damage",
        FormatType = "RomanNumerals",
        Name = "Augmented Strong Ethereal Spear|Aug. Strong Ethereal Spear",
        SummaryPriority = 1
    },
    [23] = {
        Aug1Info = "Enables the casting of support spells while active and Focus secondary group cooldown -8s",
        Aug2Info = "-6s Cooldown; distance skill bonus increased by +5%",
        FormatType = "RomanNumerals",
        Name = "Augmented Sharpshooter|Aug. Sharpshooter",
        SummaryPriority = 1
    },
    [24] = {
        FormatType = "NoEffectDisplay",
        LongInfo = "Increases the damage of your next damage spell by 35% within 12 seconds after casting a focus spell.",
        Name = "Focus Mastery",
        SummaryPriority = 0
    },
    [25] = {
        Aug1Info = "Adds 15% critical extra damage for this spell and grants a 10% chance (non-cumulative) for a critical hit.",
        Aug2Info = "+5% Base Damage",
        FormatType = "RomanNumerals",
        Name = "Augmented Great Fire Wave|Aug. Great Fire Wave",
        SummaryPriority = 1
    },
    [26] = {
        Aug1Info = "+5% Base Damage",
        Aug2Info = "Affected area enlarged",
        FormatType = "RomanNumerals",
        Name = "Augmented Energy Wave|Aug. Energy Wave",
        SummaryPriority = 1
    },
    [27] = {
        Aug1Info = "Affected area enlarged",
        Aug2Info = "Damage reduction increased by +1%",
        FormatType = "RomanNumerals",
        Name = "Augmented Sap Strength|Aug. Sap Strength",
        SummaryPriority = 1
    },
    [28] = {
        Aug1Info = "+5% Base Damage for Hell's Core and Rage of the Skies",
        Aug2Info = "-4s Cooldown; Focus secondary group cooldown -4s for Hell's Core and Rage of the Skies",
        FormatType = "RomanNumerals",
        Name = "Augmented Focus Spells|Aug. Focus Spells",
        SummaryPriority = 1
    },
    [29] = {
        FormatType = "NoEffectDisplay",
        LongInfo = "If you heal someone with Nature's Embrace or Heal Friend, you also heal yourself for 10% of the applied healing.",
        Name = "Healing Link",
        SummaryPriority = 0
    },
    [30] = {
        Aug1Info = "-10 Mana Cost",
        Aug2Info = "+5.5% Base Healing",
        FormatType = "RomanNumerals",
        Name = "Augmented Heal Friend|Aug. Heal Friend",
        SummaryPriority = 1
    },
    [31] = {
        Aug1Info = "+6.5% Base Damage",
        Aug2Info = "Adds 5% life leech to this spell",
        FormatType = "RomanNumerals",
        Name = "Augmented Terra Wave|Aug. Terra Wave",
        SummaryPriority = 1
    },
    [32] = {
        Aug1Info = "Adds 3% mana leech to this spell",
        Aug2Info = "+10% Base Damage",
        FormatType = "RomanNumerals",
        Name = "Augmented Strong Ice Wave|Aug. Strong Ice Wave",
        SummaryPriority = 1
    },
    [33] = {
        Aug1Info = "+4% Base Healing",
        Aug2Info = "Affected area enlarged",
        FormatType = "RomanNumerals",
        Name = "Augmented Mass Healing|Aug. Mass Healing",
        SummaryPriority = 1
    },
    [34] = {
        Aug1Info = "+11% Base Healing",
        Aug2Info = "-10s Cooldown",
        FormatType = "RomanNumerals",
        Name = "Augmented Nature's Embrace|Aug. Nature's Embrace",
        SummaryPriority = 1
    },
    [35] = {
        FormatType = "PlusInteger",
        LongInfo = "",
        Name = "Magic Skill Boost",
        SummaryPriority = 0
    },
    [36] = {
        FormatType = "NoEffectDisplay",
        LongInfo = "If you use a rune, you have a 25% chance of increasing your magic level by 10%, or by 20% if you use a rune that can be created by your vocation.",
        Name = "Runic Mastery",
        SummaryPriority = 0
    },
    [37] = {
        Aug1Info = "Enhanced effect",
        Aug2Info = "-6s Cooldown",
        FormatType = "RomanNumerals",
        Name = "Augmented Magic Shield|Aug. Magic Shield",
        SummaryPriority = 1
    },
    [38] = {
        FormatType = "RomanNumerals",
        LongInfo = "Each level of Vessel Resonance unlocks equivalent Gem Mods in its domain. If the Vessel Resonance matches the gem quality, a damage and healing bonus is granted.",
        Name = "Vessel Resonance Top Left|VR Top Left",
        SummaryPriority = 4
    },
    [39] = {
        FormatType = "RomanNumerals",
        LongInfo = "Each level of Vessel Resonance unlocks equivalent Gem Mods in its domain. If the Vessel Resonance matches the gem quality, a damage and healing bonus is granted.",
        Name = "Vessel Resonance Top Right|VR Top Right",
        SummaryPriority = 4
    },
    [40] = {
        FormatType = "RomanNumerals",
        LongInfo = "Each level of Vessel Resonance unlocks equivalent Gem Mods in its domain. If the Vessel Resonance matches the gem quality, a damage and healing bonus is granted.",
        Name = "Vessel Resonance Bottom Left|VR Bottom Left",
        SummaryPriority = 4
    },
    [41] = {
        FormatType = "RomanNumerals",
        LongInfo = "Each level of Vessel Resonance unlocks equivalent Gem Mods in its domain. If the Vessel Resonance matches the gem quality, a damage and healing bonus is granted.",
        Name = "Vessel Resonance Bottom Right|VR Bottom Right",
        SummaryPriority = 4
    },
    [42] = {
        FormatType = "NoEffectDisplay",
        LongInfo = "Consuming Harmony creates a field lasting 5 seconds, increasing your damage and healing done by 2% for each Harmony consumed.",
        Name = "Sanctuary",
        SummaryPriority = 0
    },
    [43] = {
        FormatType = "NoEffectDisplay",
        LongInfo = "Gain an aura that shares your mantra with members of your group.",
        Name = "Guiding Presence",
        SummaryPriority = 0
    },
    [44] = {
        FormatType = "PlusInteger",
        LongInfo = "",
        Name = "Fist Fighting Skill Boost",
        SummaryPriority = 0
    },
    [45] = {
        Aug1Info = "Adds 3% mana leech to this spell",
        Aug2Info = "Adds 25% critical extra damage for this spell and grants a 10% chance (non-cumulative) for a critical hit.",
        FormatType = "RomanNumerals",
        Name = "Augmented Sweeping Takedown|Aug. Sweeping Takedown",
        SummaryPriority = 1
    },
    [46] = {
        Aug1Info = "+8% Base Healing",
        Aug2Info = "Affected area enlarged",
        FormatType = "RomanNumerals",
        Name = "Augmented Mass Spirit Mend|Aug. Mass Spirit Mend",
        SummaryPriority = 1
    },
    [47] = {
        Aug1Info = "-4s Cooldown",
        Aug2Info = "+40% Base Damage",
        FormatType = "RomanNumerals",
        Name = "Augmented Mystic Repulse|Aug. Mystic Repulse",
        SummaryPriority = 1
    },
    [48] = {
        Aug1Info = "Jumps to +1 additional target",
        Aug2Info = "Jumps to +1 additional target",
        FormatType = "RomanNumerals",
        Name = "Augmented Chained Penance|Aug. Chained Penance",
        SummaryPriority = 1
    },
    [49] = {
        Aug1Info = "Adds 5% life leech to this spell",
        Aug2Info = "+12% Base Damage",
        FormatType = "RomanNumerals",
        Name = "Augmented Flurry of Blows|Aug. Flurry of Blows",
        SummaryPriority = 1
    },
    AugGeneralInfo = "The Conviction Perk is unlocked when the maximum number of\npromotion points for this slice has been assigned.\n\nThere are always two identical Augmentations within the Wheel of\nDestiny. Regardless of the order of unlocking, bonus I will always\nbe available before bonus II.",
    DisplayName = "Conviction Perk",
    GeneralInfo = "The Conviction Perk is unlocked when the maximum number of\npromotion points for this slice has been assigned.\n\nMost Conviction Perks can be found more than once within the\nWheel of Destiny. When they are unlocked, their effect adds up."
}

WDHit = 1
WDMana = 2
WDCap = 3
WDMit = 4

WheelDestiny.Dedications = {
    [WDHit] = { text = "Hit Points"},
    [WDMana] = { text = "Mana"},
    [WDCap] = { text = "Capacity"},
    [WDMit] = { text = "Mitigation Multiplier", percent = true}
}

WheelDestiny.INFO_DEDICATIONS = 1
WheelDestiny.INFO_CONVICTIONS = 2
WheelDestiny.MIN_VOCATION = 1
WheelDestiny.MAX_VOCATION = 5

WheelDestiny.INFO_CONVICTION_MEDIUM = 2

WheelDestiny.CreateDedicationInfo = function(data)
    local result = {}
    result.text = data.id
    result.quantity = data.quantity
    result.percent = WheelDestiny.Dedications[data.id].percent or false
    return result
end

WheelDestiny.CreateConvictionInfo = function(data, convType)
    if convType == WheelDestiny.INFO_CONVICTION_MEDIUM then
        local perkInfo = WheelDestiny.MediumPerkInfos[data.id]
        local result = {}
        local name = perkInfo.Name

        if string.find(perkInfo.Name, "|") then
            local sepName = perkInfo.Name:split("|")
            name = sepName[1]
            if name:len() >= 27 then
                result.longName = sepName[1]
                name = sepName[2]
            end
        end

        if perkInfo.LongInfo then
            result.text = name .. "\n" .. perkInfo.LongInfo
        else
            result.text = name
        end
        result.priority = perkInfo.SummaryPriority
        result.quantity = data.quantity
        if result.quantity and result.quantity < 1  then
            result.percent = true
        end
        return result
    end
    return {text = "", priority = 0}
end

WheelDestiny.CreateConvictionAug = function(augId, data)
    local result = {}
    result.augmentation = augId
    result.text = data
    return result
end

WheelDestiny.AddSlotData = function(slot, vocation, data)
    if not WheelDestiny.Slots[slot].perk[vocation] then
        WheelDestiny.Slots[slot].perk[vocation] = {}
    end

    WheelDestiny.Slots[slot].perk[vocation].mediumClip = data.icon
    WheelDestiny.Slots[slot].perk[vocation].smallClip = data.subIcon

    if not WheelDestiny.Slots[slot].perk[vocation].dedications then
        WheelDestiny.Slots[slot].perk[vocation].dedications = {}
        WheelDestiny.Slots[slot].perk[vocation].convictions = {}
    end

    local perkData = data.perkData

    if perkData.convictions then
        if perkData.convictions.medium then
            for conv = 1,#perkData.convictions.medium do
                table.insert(WheelDestiny.Slots[slot].perk[vocation].convictions, WheelDestiny.CreateConvictionInfo(perkData.convictions.medium[conv], WheelDestiny.INFO_CONVICTION_MEDIUM))
                
                local convId = perkData.convictions.medium[conv].id
                if WheelDestiny.MediumPerkInfos[convId].Aug1Info then
                    for i = 1,2 do
                        if WheelDestiny.MediumPerkInfos[convId]["Aug" .. i .. "Info"] then
                            table.insert(WheelDestiny.Slots[slot].perk[vocation].convictions, WheelDestiny.CreateConvictionAug(i, WheelDestiny.MediumPerkInfos[convId]["Aug" .. i .. "Info"]))
                        end
                    end
                end
            end
        end
    end

    if perkData.dedications then
        for ded = 1,#perkData.dedications do
            table.insert(WheelDestiny.Slots[slot].perk[vocation].dedications, WheelDestiny.CreateDedicationInfo(perkData.dedications[ded]))
        end
    end
end


-- Knight (Vocation 1)
WheelDestiny.AddSlotData(1, VocationsClient.Knight, {icon = 8, subIcon = 2, perkData = {
    dedications = { {id = WDHit, quantity = 3}, {id = WDMana, quantity = 1} },
    convictions = { medium = {{id = 9}} }
}})
WheelDestiny.AddSlotData(2, VocationsClient.Knight, {icon = 2, subIcon = 4, perkData = {
    dedications = { {id = WDMit, quantity = 0.03} },
    convictions = { medium = {{id = 6, quantity = 0.75}} }
}})
WheelDestiny.AddSlotData(3, VocationsClient.Knight, {icon = 37, subIcon = 0, perkData = {
    dedications = { {id = WDHit, quantity = 3} },
    convictions = { medium = {{id = 38}} }
}})
WheelDestiny.AddSlotData(4, VocationsClient.Knight, {icon = 7, subIcon = 1, perkData = {
    dedications = { {id = WDMana, quantity = 1} },
    convictions = { medium = {{id = 8, quantity = 1}} } 
}})
WheelDestiny.AddSlotData(5, VocationsClient.Knight, {icon = 38, subIcon = 0, perkData = {
    dedications = { {id = WDHit, quantity = 3} },
    convictions = { medium = {{id = 39}} }
}})
WheelDestiny.AddSlotData(6, VocationsClient.Knight, {icon = 12, subIcon = 2, perkData = {
    dedications = { {id = WDHit, quantity = 3}, {id = WDMana, quantity = 1} },
    convictions = { medium = {{id = 13}} }
}})
WheelDestiny.AddSlotData(7, VocationsClient.Knight, {icon = 37, subIcon = 4, perkData = {
    dedications = { {id = WDMit, quantity = 0.03} },
    convictions = { medium = {{id = 38}} }
}})
WheelDestiny.AddSlotData(8, VocationsClient.Knight, {icon = 13, subIcon = 0, perkData = {
    dedications = { {id = WDHit, quantity = 3} },
    convictions = { medium = {{id = 14}} }
}})
WheelDestiny.AddSlotData(9, VocationsClient.Knight, {icon = 4, subIcon = 1, perkData = {
    dedications = { {id = WDCap, quantity = 1} },
    convictions = { medium = {{id = 7, quantity = 0.75}} }
}})
WheelDestiny.AddSlotData(10, VocationsClient.Knight, {icon = 38, subIcon = 3, perkData = {
    dedications = { {id = WDCap, quantity = 5} },
    convictions = { medium = {{id = 39}} }
}})
WheelDestiny.AddSlotData(11, VocationsClient.Knight, {icon = 14, subIcon = 1, perkData = {
    dedications = { {id = WDMana, quantity = 1} },
    convictions = { medium = {{id = 15}} } 
}})
WheelDestiny.AddSlotData(12, VocationsClient.Knight, {icon = 4, subIcon = 0, perkData = {
    dedications = { {id = WDHit, quantity = 3} },
    convictions = { medium = {{id = 6, quantity = 0.25}} }
}})
WheelDestiny.AddSlotData(13, VocationsClient.Knight, {icon = 11, subIcon = 0, perkData = {
    dedications = { {id = WDHit, quantity = 3} },
    convictions = { medium = {{id = 12}} }  
}})
WheelDestiny.AddSlotData(14, VocationsClient.Knight, {icon = 7, subIcon = 1, perkData = {
    dedications = { {id = WDMana, quantity = 1} },
    convictions = { medium = {{id = 8, quantity = 1}} }
}})
WheelDestiny.AddSlotData(15, VocationsClient.Knight, {icon = 37, subIcon = 3, perkData = {
    dedications = { {id = WDCap, quantity = 5}},
    convictions = { medium = {{id = 38}} }
}})
WheelDestiny.AddSlotData(16, VocationsClient.Knight, {icon = 10, subIcon = 4, perkData = {
    dedications = { {id = WDMit, quantity = 0.03} },
    convictions = { medium = {{id = 11}} } 
}})
WheelDestiny.AddSlotData(17, VocationsClient.Knight, {icon = 6, subIcon = 3, perkData = {
    dedications = { {id = WDCap, quantity = 5} },
    convictions = { medium = {{id = 7, quantity = 0.75}} } 
}})
WheelDestiny.AddSlotData(18, VocationsClient.Knight, {icon = 38, subIcon = 1, perkData = {
    dedications = { {id = WDMana, quantity = 1} },
    convictions = { medium = {{id = 39}} } 
}})
WheelDestiny.AddSlotData(19, VocationsClient.Knight, {icon = 39, subIcon = 4, perkData = {
    dedications = { {id = WDMit, quantity = 0.03} },
    convictions = { medium = {{id = 40}} } 
}})
WheelDestiny.AddSlotData(20, VocationsClient.Knight, {icon = 5, subIcon = 0, perkData = {
    dedications = { {id = WDHit, quantity = 3} },
    convictions = { medium = {{id = 6, quantity = 0.25}} }      
}})
WheelDestiny.AddSlotData(21, VocationsClient.Knight, {icon = 12, subIcon = 1, perkData = {
    dedications = { {id = WDMana, quantity = 1} },
    convictions = { medium = {{id = 13}} }  
}})
WheelDestiny.AddSlotData(22, VocationsClient.Knight, {icon = 40, subIcon = 0, perkData = {
    dedications = { {id = WDHit, quantity = 3} },
    convictions = { medium = {{id = 41}} }     
}})
WheelDestiny.AddSlotData(23, VocationsClient.Knight, {icon = 7, subIcon = 4, perkData = {
    dedications = { {id = WDMit, quantity = 0.03} },
    convictions = { medium = {{id = 8}} }   
}})
WheelDestiny.AddSlotData(24, VocationsClient.Knight, {icon = 13, subIcon = 3, perkData = {
    dedications = { {id = WDCap, quantity = 5} },
    convictions = { medium = {{id = 14}} }    
}})
WheelDestiny.AddSlotData(25, VocationsClient.Knight, {icon = 4, subIcon = 3, perkData = {
    dedications = { {id = WDCap, quantity = 5} },
    convictions = { medium = {{id = 7, quantity = 0.75}} }   
}})
WheelDestiny.AddSlotData(26, VocationsClient.Knight, {icon = 14, subIcon = 4, perkData = {
    dedications = { {id = WDMit, quantity = 0.03} },
    convictions = { medium = {{id = 15}} }
}})
WheelDestiny.AddSlotData(27, VocationsClient.Knight, {icon = 39, subIcon = 0, perkData = {
    dedications = { {id = WDHit, quantity = 3} },
    convictions = { medium = {{id = 40}} }
}})
WheelDestiny.AddSlotData(28, VocationsClient.Knight, {icon = 4, subIcon = 4, perkData = {
    dedications = { {id = WDMit, quantity = 0.03} },
    convictions = { medium = {{id = 6, quantity = 0.25}} } 
}})
WheelDestiny.AddSlotData(29, VocationsClient.Knight, {icon = 11, subIcon = 3, perkData = {
    dedications = { {id = WDCap, quantity = 5} },
    convictions = { medium = {{id = 12}} }   
}})
WheelDestiny.AddSlotData(30, VocationsClient.Knight, {icon = 40, subIcon = 1, perkData = {
    dedications = { {id = WDMana, quantity = 1} },
    convictions = { medium = {{id = 41}} }    
}})
WheelDestiny.AddSlotData(31, VocationsClient.Knight, {icon = 10, subIcon = 2, perkData = {
    dedications = { {id = WDHit, quantity = 3}, {id = WDMana, quantity = 1} },
    convictions = { medium = {{id = 11}} }   
}})
WheelDestiny.AddSlotData(32, VocationsClient.Knight, {icon = 39, subIcon = 3, perkData = {
    dedications = { {id = WDCap, quantity = 5} },
    convictions = { medium = {{id = 40}} }  
}})
WheelDestiny.AddSlotData(33, VocationsClient.Knight, {icon = 7, subIcon = 4, perkData = {
    dedications = { {id = WDMit, quantity = 0.03} },
    convictions = { medium = {{id = 8}} }
}})
WheelDestiny.AddSlotData(34, VocationsClient.Knight, {icon = 40, subIcon = 3, perkData = {
    dedications = { {id = WDCap, quantity = 5} },
    convictions = { medium = {{id = 41}} }   
}})
WheelDestiny.AddSlotData(35, VocationsClient.Knight, {icon = 3, subIcon = 1, perkData = {
    dedications = { {id = WDMana, quantity = 1} },
    convictions = { medium = {{id = 7, quantity = 0.75}} }
}})
WheelDestiny.AddSlotData(36, VocationsClient.Knight, {icon = 9, subIcon = 2, perkData = {
    dedications = { {id = WDHit, quantity = 3}, {id = WDMana, quantity = 1} },
    convictions = { medium = {{id = 10}} }   
}})

-- Paladin (Vocation 2)
WheelDestiny.AddSlotData(1, VocationsClient.Paladin, {icon = 17, subIcon = 2, perkData = {
    dedications = { {id = WDHit, quantity = 2}, {id = WDMana, quantity = 3} },
    convictions = { medium = {{id = 18}} }    
}})
WheelDestiny.AddSlotData(2, VocationsClient.Paladin, {icon = 2, subIcon = 4, perkData = {
    dedications = { {id = WDMit, quantity = 0.03} },
    convictions = { medium = {{id = 6, quantity  = 0.25}} }
}})
WheelDestiny.AddSlotData(3, VocationsClient.Paladin, {icon = 37, subIcon = 0, perkData = {
    dedications = { {id = WDHit, quantity = 2} },
    convictions = { medium = {{id = 38}} }
}})
WheelDestiny.AddSlotData(4, VocationsClient.Paladin, {icon = 15, subIcon = 1, perkData = {
    dedications = { {id = WDMana, quantity = 3} },
    convictions = { medium = {{id = 16, quantity = 1}} }
}})
WheelDestiny.AddSlotData(5, VocationsClient.Paladin, {icon = 38, subIcon = 0, perkData = {
    dedications = { {id = WDHit, quantity = 2} },
    convictions = { medium = {{id = 39}} }
}})
WheelDestiny.AddSlotData(6, VocationsClient.Paladin, {icon = 22, subIcon = 2, perkData = {
    dedications = { {id = WDHit, quantity = 2}, {id = WDMana, quantity = 3} },
    convictions = { medium = {{id = 23}} }  
}})
WheelDestiny.AddSlotData(7, VocationsClient.Paladin, {icon = 37, subIcon = 4, perkData = {
    dedications = { {id = WDMit, quantity = 0.03} },
    convictions = { medium = {{id = 38}} }
}})
WheelDestiny.AddSlotData(8, VocationsClient.Paladin, {icon = 21, subIcon = 0, perkData = {
    dedications = { {id = WDHit, quantity = 2} },
    convictions = { medium = {{id = 39}} }
}})
WheelDestiny.AddSlotData(9, VocationsClient.Paladin, {icon = 4, subIcon = 1, perkData = {
    dedications = { {id = WDMana, quantity = 3} },
    convictions = { medium = {{id = 7, quantity = 0.75}} }
}})
WheelDestiny.AddSlotData(10, VocationsClient.Paladin, {icon = 38, subIcon = 3, perkData = {
    dedications = { {id = WDCap, quantity = 4} },
    convictions = { medium = {{id = 39}} }
}})
WheelDestiny.AddSlotData(11, VocationsClient.Paladin, {icon = 20, subIcon = 1, perkData = {
    dedications = { {id = WDMana, quantity = 3} },
    convictions = { medium = {{id = 21}} }
}})
WheelDestiny.AddSlotData(12, VocationsClient.Paladin, {icon = 4, subIcon = 0, perkData = {
    dedications = { {id = WDHit, quantity = 2} },
    convictions = { medium = {{id = 6, quantity = 0.25}} } 
}})
WheelDestiny.AddSlotData(13, VocationsClient.Paladin, {icon = 19, subIcon = 0, perkData = {
    dedications = { {id = WDHit, quantity = 2} },
    convictions = { medium = {{id = 20}} }  
}})
WheelDestiny.AddSlotData(14, VocationsClient.Paladin, {icon = 15, subIcon = 1, perkData = {
    dedications = { {id = WDMana, quantity = 3} },
    convictions = { medium = {{id = 16, quantity = 1}} }  
}})
WheelDestiny.AddSlotData(15, VocationsClient.Paladin, {icon = 37, subIcon = 3, perkData = {
    dedications = { {id = WDCap, quantity = 4} },
    convictions = { medium = {{id = 38}} }  
}})
WheelDestiny.AddSlotData(16, VocationsClient.Paladin, {icon = 18, subIcon = 4, perkData = {
    dedications = { {id = WDMit, quantity = 0.03} },
    convictions = { medium = {{id = 19}} }  
}})
WheelDestiny.AddSlotData(17, VocationsClient.Paladin, {icon = 6, subIcon = 3, perkData = {
    dedications = { {id = WDCap, quantity = 4} },
    convictions = { medium = {{id = 7, quantity = 0.75}} } 
}})
WheelDestiny.AddSlotData(18, VocationsClient.Paladin, {icon = 38, subIcon = 1, perkData = {
    dedications = { {id = WDMana, quantity = 3} },
    convictions = { medium = {{id = 39}} }  
}})
WheelDestiny.AddSlotData(19, VocationsClient.Paladin, {icon = 39, subIcon = 4, perkData = {
    dedications = { {id = WDMit, quantity = 0.03} },
    convictions = { medium = {{id = 40}} }  
}})
WheelDestiny.AddSlotData(20, VocationsClient.Paladin, {icon = 5, subIcon = 0, perkData = {
    dedications = { {id = WDHit, quantity = 2} },
    convictions = { medium = {{id = 6, quantity = 0.25}} }  
}})
WheelDestiny.AddSlotData(21, VocationsClient.Paladin, {icon = 22, subIcon = 1, perkData = {
    dedications = { {id = WDMana, quantity = 3} },
    convictions = { medium = {{id = 23}} }  
}})
WheelDestiny.AddSlotData(22, VocationsClient.Paladin, {icon = 40, subIcon = 0, perkData = {
    dedications = { {id = WDHit, quantity = 2} },
    convictions = { medium = {{id = 41}} }  
}})
WheelDestiny.AddSlotData(23, VocationsClient.Paladin, {icon = 15, subIcon = 4, perkData = {
    dedications = { {id = WDMit, quantity = 0.03} },
    convictions = { medium = {{id = 16, quantity = 1}} }  
}})
WheelDestiny.AddSlotData(24, VocationsClient.Paladin, {icon = 21, subIcon = 3, perkData = {
    dedications = { {id = WDCap, quantity = 4} },
    convictions = { medium = {{id = 22}} }  
}})
WheelDestiny.AddSlotData(25, VocationsClient.Paladin, {icon = 4, subIcon = 3, perkData = {
    dedications = { {id = WDCap, quantity = 4} },
    convictions = { medium = {{id = 7, quantity = 0.75}} }
}})
WheelDestiny.AddSlotData(26, VocationsClient.Paladin, {icon = 20, subIcon = 4, perkData = {
    dedications = { {id = WDMit, quantity = 0.03} },
    convictions = { medium = {{id = 21}} }
}})
WheelDestiny.AddSlotData(27, VocationsClient.Paladin, {icon = 39, subIcon = 0, perkData = {
    dedications = { {id = WDHit, quantity = 2} },
    convictions = { medium = {{id = 40}} }
}})
WheelDestiny.AddSlotData(28, VocationsClient.Paladin, {icon = 4, subIcon = 4, perkData = {
    dedications = { {id = WDMit, quantity = 0.03} },
    convictions = { medium = {{id = 6, quantity = 0.25}} }
}})
WheelDestiny.AddSlotData(29, VocationsClient.Paladin, {icon = 19, subIcon = 3, perkData = {
    dedications = { {id = WDCap, quantity = 4} },
    convictions = { medium = {{id = 20}} }
}})
WheelDestiny.AddSlotData(30, VocationsClient.Paladin, {icon = 40, subIcon = 1, perkData = {
    dedications = { {id = WDMana, quantity = 3} },
    convictions = { medium = {{id = 41}} }
}})
WheelDestiny.AddSlotData(31, VocationsClient.Paladin, {icon = 18, subIcon = 2, perkData = {
    dedications = { {id = WDHit, quantity = 2}, {id = WDMana, quantity = 3} },
    convictions = { medium = {{id = 19}} }
}})
WheelDestiny.AddSlotData(32, VocationsClient.Paladin, {icon = 39, subIcon = 3, perkData = {
    dedications = { {id = WDCap, quantity = 4} },
    convictions = { medium = {{id = 40}} }
}})
WheelDestiny.AddSlotData(33, VocationsClient.Paladin, {icon = 15, subIcon = 4, perkData = {
    dedications = { {id = WDMit, quantity = 0.03} },
    convictions = { medium = {{id = 16, quantity = 1}} }
}})
WheelDestiny.AddSlotData(34, VocationsClient.Paladin, {icon = 40, subIcon = 3, perkData = {
    dedications = { {id = WDCap, quantity = 4} },
    convictions = { medium = {{id = 41}} }
}})
WheelDestiny.AddSlotData(35, VocationsClient.Paladin, {icon = 3, subIcon = 1, perkData = {
    dedications = { {id = WDMana, quantity = 3} },
    convictions = { medium = {{id = 7, quantity = 0.75}} }
}})
WheelDestiny.AddSlotData(36, VocationsClient.Paladin, {icon = 16, subIcon = 2, perkData = {
    dedications = { {id = WDHit, quantity = 2}, {id = WDMana, quantity = 3} },
    convictions = { medium = {{id = 17}} }
}})

-- Sorcerer (Vocation 3)
WheelDestiny.AddSlotData(1, VocationsClient.Sorcerer, {icon = 35, subIcon = 2, perkData = {
    dedications = { {id = WDHit, quantity = 1}, {id = WDMana, quantity = 6} },
    convictions = { medium = {{id = 36}} }
}})
WheelDestiny.AddSlotData(2, VocationsClient.Sorcerer, {icon = 2, subIcon = 4, perkData = {
    dedications = { {id = WDMit, quantity = 0.03} },
    convictions = { medium = {{id = 6, quantity = 0.25}} }
}})
WheelDestiny.AddSlotData(3, VocationsClient.Sorcerer, {icon = 37, subIcon = 0, perkData = {
    dedications = { {id = WDHit, quantity = 1} },
    convictions = { medium = {{id = 38}} }
}})
WheelDestiny.AddSlotData(4, VocationsClient.Sorcerer, {icon = 34, subIcon = 1, perkData = {
    dedications = { {id = WDMana, quantity = 6} },
    convictions = { medium = {{id = 35, quantity = 1}} }
}})
WheelDestiny.AddSlotData(5, VocationsClient.Sorcerer, {icon = 38, subIcon = 0, perkData = {
    dedications = { {id = WDHit, quantity = 1} },
    convictions = { medium = {{id = 39}} }
}})
WheelDestiny.AddSlotData(6, VocationsClient.Sorcerer, {icon = 27, subIcon = 2, perkData = {
    dedications = { {id = WDHit, quantity = 1}, {id = WDMana, quantity = 6} },
    convictions = { medium = {{id = 28}} }
}})
WheelDestiny.AddSlotData(7, VocationsClient.Sorcerer, {icon = 37, subIcon = 4, perkData = {
    dedications = { {id = WDMit, quantity = 0.03} },
    convictions = { medium = {{id = 38}} }
}})
WheelDestiny.AddSlotData(8, VocationsClient.Sorcerer, {icon = 36, subIcon = 0, perkData = {
    dedications = { {id = WDHit, quantity = 1} },
    convictions = { medium = {{id = 37}} }
}})
WheelDestiny.AddSlotData(9, VocationsClient.Sorcerer, {icon = 4, subIcon = 1, perkData = {
    dedications = { {id = WDMana, quantity = 6} },
    convictions = { medium = {{id = 7, quantity = 0.75}} }
}})
WheelDestiny.AddSlotData(10, VocationsClient.Sorcerer, {icon = 38, subIcon = 3, perkData = {
    dedications = { {id = WDCap, quantity = 2} },
    convictions = { medium = {{id = 39}} }
}})
WheelDestiny.AddSlotData(11, VocationsClient.Sorcerer, {icon = 26, subIcon = 1, perkData = {
    dedications = { {id = WDMana, quantity = 6} },
    convictions = { medium = {{id = 27}} }
}})
WheelDestiny.AddSlotData(12, VocationsClient.Sorcerer, {icon = 4, subIcon = 0, perkData = {
    dedications = { {id = WDHit, quantity = 1} },
    convictions = { medium = {{id = 6, quantity = 0.25}} }
}})
WheelDestiny.AddSlotData(13, VocationsClient.Sorcerer, {icon = 25, subIcon = 0, perkData = {
    dedications = { {id = WDHit, quantity = 1} },
    convictions = { medium = {{id = 26}} }
}})
WheelDestiny.AddSlotData(14, VocationsClient.Sorcerer, {icon = 34, subIcon = 1, perkData = {
    dedications = { {id = WDMana, quantity = 6} },
    convictions = { medium = {{id = 35, quantity = 1}} }
}})
WheelDestiny.AddSlotData(15, VocationsClient.Sorcerer, {icon = 37, subIcon = 3, perkData = {
    dedications = { {id = WDCap, quantity = 2} },
    convictions = { medium = {{id = 38}} }
}})
WheelDestiny.AddSlotData(16, VocationsClient.Sorcerer, {icon = 24, subIcon = 4, perkData = {
    dedications = { {id = WDMit, quantity = 0.03} },
    convictions = { medium = {{id = 25}} }
}})
WheelDestiny.AddSlotData(17, VocationsClient.Sorcerer, {icon = 6, subIcon = 3, perkData = {
    dedications = { {id = WDCap, quantity = 2} },
    convictions = { medium = {{id = 7, quantity = 0.75}} }
}})
WheelDestiny.AddSlotData(18, VocationsClient.Sorcerer, {icon = 38, subIcon = 1, perkData = {
    dedications = { {id = WDMana, quantity = 6} },
    convictions = { medium = {{id = 39}} }
}})
WheelDestiny.AddSlotData(19, VocationsClient.Sorcerer, {icon = 39, subIcon = 4, perkData = {
    dedications = { {id = WDMit, quantity = 0.03} },
    convictions = { medium = {{id = 40}} }
}})
WheelDestiny.AddSlotData(20, VocationsClient.Sorcerer, {icon = 5, subIcon = 0, perkData = {
    dedications = { {id = WDHit, quantity = 1} },
    convictions = { medium = {{id = 6, quantity = 0.25}} }
}})
WheelDestiny.AddSlotData(21, VocationsClient.Sorcerer, {icon = 27, subIcon = 1, perkData = {
    dedications = { {id = WDMana, quantity = 6} },
    convictions = { medium = {{id = 28}} }
}})
WheelDestiny.AddSlotData(22, VocationsClient.Sorcerer, {icon = 40, subIcon = 0, perkData = {
    dedications = { {id = WDHit, quantity = 1} },
    convictions = { medium = {{id = 41}} }
}})
WheelDestiny.AddSlotData(23, VocationsClient.Sorcerer, {icon = 34, subIcon = 4, perkData = {
    dedications = { {id = WDMit, quantity = 0.03} },
    convictions = { medium = {{id = 35, quantity = 1}} }
}})
WheelDestiny.AddSlotData(24, VocationsClient.Sorcerer, {icon = 36, subIcon = 3, perkData = {
    dedications = { {id = WDCap, quantity = 2} },
    convictions = { medium = {{id = 37}} }
}})
WheelDestiny.AddSlotData(25, VocationsClient.Sorcerer, {icon = 4, subIcon = 3, perkData = {
    dedications = { {id = WDCap, quantity = 2} },
    convictions = { medium = {{id = 7, quantity = 0.75}} }
}})
WheelDestiny.AddSlotData(26, VocationsClient.Sorcerer, {icon = 26, subIcon = 4, perkData = {
    dedications = { {id = WDMit, quantity = 0.03} },
    convictions = { medium = {{id = 27}} }
}})
WheelDestiny.AddSlotData(27, VocationsClient.Sorcerer, {icon = 39, subIcon = 0, perkData = {
    dedications = { {id = WDHit, quantity = 1} },
    convictions = { medium = {{id = 40}} }
}})
WheelDestiny.AddSlotData(28, VocationsClient.Sorcerer, {icon = 4, subIcon = 4, perkData = {
    dedications = { {id = WDMit, quantity = 0.03} },
    convictions = { medium = {{id = 6, quantity = 0.25}} }
}})
WheelDestiny.AddSlotData(29, VocationsClient.Sorcerer, {icon = 25, subIcon = 3, perkData = {
    dedications = { {id = WDCap, quantity = 2} },
    convictions = { medium = {{id = 26}} }
}})
WheelDestiny.AddSlotData(30, VocationsClient.Sorcerer, {icon = 40, subIcon = 1, perkData = {
    dedications = { {id = WDMana, quantity = 6} },
    convictions = { medium = {{id = 41}} }
}})
WheelDestiny.AddSlotData(31, VocationsClient.Sorcerer, {icon = 24, subIcon = 2, perkData = {
    dedications = { {id = WDHit, quantity = 1}, {id = WDMana, quantity = 6} },
    convictions = { medium = {{id = 25}} }
}})
WheelDestiny.AddSlotData(32, VocationsClient.Sorcerer, {icon = 39, subIcon = 3, perkData = {
    dedications = { {id = WDCap, quantity = 2} },
    convictions = { medium = {{id = 40}} }
}})
WheelDestiny.AddSlotData(33, VocationsClient.Sorcerer, {icon = 34, subIcon = 4, perkData = {
    dedications = { {id = WDMit, quantity = 0.03} },
    convictions = { medium = {{id = 35, quantity = 1}} }
}})
WheelDestiny.AddSlotData(34, VocationsClient.Sorcerer, {icon = 40, subIcon = 3, perkData = {
    dedications = { {id = WDCap, quantity = 2} },
    convictions = { medium = {{id = 41}} }
}})
WheelDestiny.AddSlotData(35, VocationsClient.Sorcerer, {icon = 3, subIcon = 1, perkData = {
    dedications = { {id = WDMana, quantity = 6} },
    convictions = { medium = {{id = 7, quantity = 0.75}} }
}})
WheelDestiny.AddSlotData(36, VocationsClient.Sorcerer, {icon = 23, subIcon = 2, perkData = {
    dedications = { {id = WDHit, quantity = 1}, {id = WDMana, quantity = 6} },
    convictions = { medium = {{id = 24}} }
}})

-- Druid (Vocation 4)
WheelDestiny.AddSlotData(1, VocationsClient.Druid, {icon = 28, subIcon = 2, perkData = {
    dedications = { {id = WDHit, quantity = 1}, {id = WDMana, quantity = 6} },
    convictions = { medium = {{id = 29}} }
}})
WheelDestiny.AddSlotData(2, VocationsClient.Druid, {icon = 2, subIcon = 4, perkData = {
    dedications = { {id = WDMit, quantity = 0.03} },
    convictions = { medium = {{id = 6, quantity = 0.25}} }
}})
WheelDestiny.AddSlotData(3, VocationsClient.Druid, {icon = 37, subIcon = 0, perkData = {
    dedications = { {id = WDHit, quantity = 1} },
    convictions = { medium = {{id = 38}} }
}})
WheelDestiny.AddSlotData(4, VocationsClient.Druid, {icon = 34, subIcon = 1, perkData = {
    dedications = { {id = WDMana, quantity = 6} },
    convictions = { medium = {{id = 35, quantity = 1}} }
}})
WheelDestiny.AddSlotData(5, VocationsClient.Druid, {icon = 38, subIcon = 0, perkData = {
    dedications = { {id = WDHit, quantity = 1} },
    convictions = { medium = {{id = 39}} }
}})
WheelDestiny.AddSlotData(6, VocationsClient.Druid, {icon = 31, subIcon = 2, perkData = {
    dedications = { {id = WDHit, quantity = 1}, {id = WDMana, quantity = 6} },
    convictions = { medium = {{id = 32}} }
}})
WheelDestiny.AddSlotData(7, VocationsClient.Druid, {icon = 37, subIcon = 4, perkData = {
    dedications = { {id = WDMit, quantity = 0.03} },
    convictions = { medium = {{id = 38}} }
}})
WheelDestiny.AddSlotData(8, VocationsClient.Druid, {icon = 32, subIcon = 0, perkData = {
    dedications = { {id = WDHit, quantity = 1} },
    convictions = { medium = {{id = 33}} }
}})
WheelDestiny.AddSlotData(9, VocationsClient.Druid, {icon = 4, subIcon = 1, perkData = {
    dedications = { {id = WDMana, quantity = 6} },
    convictions = { medium = {{id = 7, quantity = 0.75}} }
}})
WheelDestiny.AddSlotData(10, VocationsClient.Druid, {icon = 38, subIcon = 3, perkData = {
    dedications = { {id = WDCap, quantity = 2} },
    convictions = { medium = {{id = 39}} }
}})
WheelDestiny.AddSlotData(11, VocationsClient.Druid, {icon = 33, subIcon = 1, perkData = {
    dedications = { {id = WDMana, quantity = 6} },
    convictions = { medium = {{id = 34}} }
}})
WheelDestiny.AddSlotData(12, VocationsClient.Druid, {icon = 4, subIcon = 0, perkData = {
    dedications = { {id = WDHit, quantity = 1} },
    convictions = { medium = {{id = 6, quantity = 0.25}} }
}})
WheelDestiny.AddSlotData(13, VocationsClient.Druid, {icon = 30, subIcon = 0, perkData = {
    dedications = { {id = WDHit, quantity = 1} },
    convictions = { medium = {{id = 31}} }
}})
WheelDestiny.AddSlotData(14, VocationsClient.Druid, {icon = 34, subIcon = 1, perkData = {
    dedications = { {id = WDMana, quantity = 6} },
    convictions = { medium = {{id = 35, quantity = 1}} }
}})
WheelDestiny.AddSlotData(15, VocationsClient.Druid, {icon = 37, subIcon = 3, perkData = {
    dedications = { {id = WDCap, quantity = 2} },
    convictions = { medium = {{id = 38}} }
}})
WheelDestiny.AddSlotData(16, VocationsClient.Druid, {icon = 29, subIcon = 4, perkData = {
    dedications = { {id = WDMit, quantity = 0.03} },
    convictions = { medium = {{id = 30}} }
}})
WheelDestiny.AddSlotData(17, VocationsClient.Druid, {icon = 6, subIcon = 3, perkData = {
    dedications = { {id = WDCap, quantity = 2} },
    convictions = { medium = {{id = 7, quantity = 0.75}} }
}})
WheelDestiny.AddSlotData(18, VocationsClient.Druid, {icon = 38, subIcon = 1, perkData = {
    dedications = { {id = WDMana, quantity = 6} },
    convictions = { medium = {{id = 39}} }
}})
WheelDestiny.AddSlotData(19, VocationsClient.Druid, {icon = 39, subIcon = 4, perkData = {
    dedications = { {id = WDMit, quantity = 0.03} },
    convictions = { medium = {{id = 40}} }
}})
WheelDestiny.AddSlotData(20, VocationsClient.Druid, {icon = 5, subIcon = 0, perkData = {
    dedications = { {id = WDHit, quantity = 1} },
    convictions = { medium = {{id = 6, quantity = 0.25}} }
}})
WheelDestiny.AddSlotData(21, VocationsClient.Druid, {icon = 31, subIcon = 1, perkData = {
    dedications = { {id = WDMana, quantity = 6} },
    convictions = { medium = {{id = 32}} }
}})
WheelDestiny.AddSlotData(22, VocationsClient.Druid, {icon = 40, subIcon = 0, perkData = {
    dedications = { {id = WDHit, quantity = 1} },
    convictions = { medium = {{id = 41}} }
}})
WheelDestiny.AddSlotData(23, VocationsClient.Druid, {icon = 34, subIcon = 4, perkData = {
    dedications = { {id = WDMit, quantity = 0.03} },
    convictions = { medium = {{id = 35, quantity = 1}} }
}})
WheelDestiny.AddSlotData(24, VocationsClient.Druid, {icon = 32, subIcon = 3, perkData = {
    dedications = { {id = WDCap, quantity = 2} },
    convictions = { medium = {{id = 33}} }
}})
WheelDestiny.AddSlotData(25, VocationsClient.Druid, {icon = 4, subIcon = 3, perkData = {
    dedications = { {id = WDCap, quantity = 2} },
    convictions = { medium = {{id = 7, quantity = 0.75}} }
}})
WheelDestiny.AddSlotData(26, VocationsClient.Druid, {icon = 33, subIcon = 4, perkData = {
    dedications = { {id = WDMit, quantity = 0.03} },
    convictions = { medium = {{id = 34}} }
}})
WheelDestiny.AddSlotData(27, VocationsClient.Druid, {icon = 39, subIcon = 0, perkData = {
    dedications = { {id = WDHit, quantity = 1} },
    convictions = { medium = {{id = 40}} }
}})
WheelDestiny.AddSlotData(28, VocationsClient.Druid, {icon = 4, subIcon = 4, perkData = {
    dedications = { {id = WDMit, quantity = 0.03} },
    convictions = { medium = {{id = 6, quantity = 0.25}} }
}})
WheelDestiny.AddSlotData(29, VocationsClient.Druid, {icon = 30, subIcon = 3, perkData = {
    dedications = { {id = WDCap, quantity = 2} },
    convictions = { medium = {{id = 31}} }
}})
WheelDestiny.AddSlotData(30, VocationsClient.Druid, {icon = 40, subIcon = 1, perkData = {
    dedications = { {id = WDMana, quantity = 6} },
    convictions = { medium = {{id = 41}} }
}})
WheelDestiny.AddSlotData(31, VocationsClient.Druid, {icon = 29, subIcon = 2, perkData = {
    dedications = { {id = WDHit, quantity = 1}, {id = WDMana, quantity = 6} },
    convictions = { medium = {{id = 30}} }
}})
WheelDestiny.AddSlotData(32, VocationsClient.Druid, {icon = 39, subIcon = 3, perkData = {
    dedications = { {id = WDCap, quantity = 2} },
    convictions = { medium = {{id = 40}} }
}})
WheelDestiny.AddSlotData(33, VocationsClient.Druid, {icon = 34, subIcon = 4, perkData = {
    dedications = { {id = WDMit, quantity = 0.03} },
    convictions = { medium = {{id = 35, quantity = 1}} }
}})
WheelDestiny.AddSlotData(34, VocationsClient.Druid, {icon = 40, subIcon = 3, perkData = {
    dedications = { {id = WDCap, quantity = 2} },
    convictions = { medium = {{id = 41}} }
}})
WheelDestiny.AddSlotData(35, VocationsClient.Druid, {icon = 3, subIcon = 1, perkData = {
    dedications = { {id = WDMana, quantity = 6} },
    convictions = { medium = {{id = 7, quantity = 0.75}} }
}})
WheelDestiny.AddSlotData(36, VocationsClient.Druid, {icon = 35, subIcon = 2, perkData = {
    dedications = { {id = WDHit, quantity = 1}, {id = WDMana, quantity = 6} },
    convictions = { medium = {{id = 36}} }
}})

-- Monk (Vocation 5)
WheelDestiny.AddSlotData(1, VocationsClient.Monk, {icon = 42, subIcon = 2, perkData = {
    dedications = { {id = WDHit, quantity = 2}, {id = WDMana, quantity = 2} },
    convictions = { medium = {{id = 43}} }    
}})
WheelDestiny.AddSlotData(2, VocationsClient.Monk, {icon = 6, subIcon = 4, perkData = {
    dedications = { {id = WDMit, quantity = 0.03} },
    convictions = { medium = {{id = 6, quantity = 0.25}} }    
}})
WheelDestiny.AddSlotData(3, VocationsClient.Monk, {icon = 37, subIcon = 0, perkData = {
    dedications = { {id = WDHit, quantity = 2} },
    convictions = { medium = {{id = 38}} }    
}})
WheelDestiny.AddSlotData(4, VocationsClient.Monk, {icon = 43, subIcon = 1, perkData = {
    dedications = { {id = WDMana, quantity = 2} },
    convictions = { medium = {{id = 44, quantity = 1}} }    
}})
WheelDestiny.AddSlotData(5, VocationsClient.Monk, {icon = 38, subIcon = 0, perkData = {
    dedications = { {id = WDHit, quantity = 2} },
    convictions = { medium = {{id = 39}} }   
}})
WheelDestiny.AddSlotData(6, VocationsClient.Monk, {icon = 44, subIcon = 2, perkData = {
    dedications = { {id = WDHit, quantity = 2}, {id = WDMana, quantity = 2} },
    convictions = { medium = {{id = 45}} }   
}})
WheelDestiny.AddSlotData(7, VocationsClient.Monk, {icon = 37, subIcon = 4, perkData = {
    dedications = { {id = WDMit, quantity = 0.03} },
    convictions = { medium = {{id = 38}} }   
}})
WheelDestiny.AddSlotData(8, VocationsClient.Monk, {icon = 45, subIcon = 0, perkData = {
    dedications = { {id = WDHit, quantity = 2} },
    convictions = { medium = {{id = 46}} }  
}})
WheelDestiny.AddSlotData(9, VocationsClient.Monk, {icon = 6, subIcon = 1, perkData = {
    dedications = { {id = WDMana, quantity = 2} },
    convictions = { medium = {{id = 6, quantity = 0.75}} }    
}})
WheelDestiny.AddSlotData(10, VocationsClient.Monk, {icon = 38, subIcon = 3, perkData = {
    dedications = { {id = WDCap, quantity = 5} },
    convictions = { medium = {{id = 39}} }   
}})
WheelDestiny.AddSlotData(11, VocationsClient.Monk, {icon = 46, subIcon = 1, perkData = {
    dedications = { {id = WDMana, quantity = 2} },
    convictions = { medium = {{id = 47}} }   
}})
WheelDestiny.AddSlotData(12, VocationsClient.Monk, {icon = 6, subIcon = 0, perkData = {
    dedications = { {id = WDHit, quantity = 2} },
    convictions = { medium = {{id = 6, quantity = 0.25}} }    
}})
WheelDestiny.AddSlotData(13, VocationsClient.Monk, {icon = 47, subIcon = 0, perkData = {
    dedications = { {id = WDHit, quantity = 2} },
    convictions = { medium = {{id = 48}} }      
}})
WheelDestiny.AddSlotData(14, VocationsClient.Monk, {icon = 43, subIcon = 1, perkData = {
    dedications = { {id = WDMana, quantity = 2} },
    convictions = { medium = {{id = 44, quantity = 1}} }    
}})
WheelDestiny.AddSlotData(15, VocationsClient.Monk, {icon = 37, subIcon = 3, perkData = {
    dedications = { {id = WDCap, quantity = 5} },
    convictions = { medium = {{id = 38}} }    
}})
WheelDestiny.AddSlotData(16, VocationsClient.Monk, {icon = 48, subIcon = 4, perkData = {
    dedications = { {id = WDMit, quantity = 0.03} },
    convictions = { medium = {{id = 49}} }   
}})
WheelDestiny.AddSlotData(17, VocationsClient.Monk, {icon = 6, subIcon = 3, perkData = {
    dedications = { {id = WDCap, quantity = 5} },
    convictions = { medium = {{id = 6, quantity = 0.75}} }
}})
WheelDestiny.AddSlotData(18, VocationsClient.Monk, {icon = 38, subIcon = 1, perkData = {
    dedications = { {id = WDMana, quantity = 2} },
    convictions = { medium = {{id = 39}} }    
}})
WheelDestiny.AddSlotData(19, VocationsClient.Monk, {icon = 39, subIcon = 4, perkData = {
    dedications = { {id = WDMit, quantity = 0.03} },
    convictions = { medium = {{id = 40}} }   
}})
WheelDestiny.AddSlotData(20, VocationsClient.Monk, {icon = 5, subIcon = 0, perkData = {
    dedications = { {id = WDHit, quantity = 2} },
    convictions = { medium = {{id = 6, quantity = 0.25}} }  
}})
WheelDestiny.AddSlotData(21, VocationsClient.Monk, {icon = 44, subIcon = 1, perkData = {
    dedications = { {id = WDMana, quantity = 2} },
    convictions = { medium = {{id = 45}} }  
}})
WheelDestiny.AddSlotData(22, VocationsClient.Monk, {icon = 40, subIcon = 0, perkData = {
    dedications = { {id = WDHit, quantity = 2} },
    convictions = { medium = {{id = 41}} }  
}})
WheelDestiny.AddSlotData(23, VocationsClient.Monk, {icon = 43, subIcon = 4, perkData = {
    dedications = { {id = WDMit, quantity = 0.03} },
    convictions = { medium = {{id = 44, quantity = 1}} }   
}})
WheelDestiny.AddSlotData(24, VocationsClient.Monk, {icon = 45, subIcon = 3, perkData = {
    dedications = { {id = WDCap, quantity = 5} },
    convictions = { medium = {{id = 46}} }
}})
WheelDestiny.AddSlotData(25, VocationsClient.Monk, {icon = 6, subIcon = 3, perkData = {
    dedications = { {id = WDCap, quantity = 5} },
    convictions = { medium = {{id = 6, quantity = 0.75}} }
}})
WheelDestiny.AddSlotData(26, VocationsClient.Monk, {icon = 46, subIcon = 4, perkData = {
    dedications = { {id = WDMit, quantity = 0.03} },
    convictions = { medium = {{id = 47}} }   
}})
WheelDestiny.AddSlotData(27, VocationsClient.Monk, {icon = 39, subIcon = 0, perkData = {
    dedications = { {id = WDHit, quantity = 2} },
    convictions = { medium = {{id = 40}} }    
}})
WheelDestiny.AddSlotData(28, VocationsClient.Monk, {icon = 46, subIcon = 4, perkData = {
    dedications = { {id = WDMit, quantity = 0.03} },
    convictions = { medium = {{id = 6, quantity = 0.25}} }
}})
WheelDestiny.AddSlotData(29, VocationsClient.Monk, {icon = 47, subIcon = 3, perkData = {
    dedications = { {id = WDCap, quantity = 5} },
    convictions = { medium = {{id = 48}} }
}})
WheelDestiny.AddSlotData(30, VocationsClient.Monk, {icon = 40, subIcon = 1, perkData = {
    dedications = { {id = WDMana, quantity = 2} },
    convictions = { medium = {{id = 41}} }  
}})
WheelDestiny.AddSlotData(31, VocationsClient.Monk, {icon = 48, subIcon = 2, perkData = {
    dedications = { {id = WDHit, quantity = 2}, {id = WDMana, quantity = 2} },
    convictions = { medium = {{id = 49}} }  
}})
WheelDestiny.AddSlotData(32, VocationsClient.Monk, {icon = 39, subIcon = 3, perkData = {
    dedications = { {id = WDCap, quantity = 5} },
    convictions = { medium = {{id = 40}} }
}})
WheelDestiny.AddSlotData(33, VocationsClient.Monk, {icon = 43, subIcon = 4, perkData = {
    dedications = { {id = WDMit, quantity = 0.03} },
    convictions = { medium = {{id = 44, quantity = 1}} }   
}})
WheelDestiny.AddSlotData(34, VocationsClient.Monk, {icon = 40, subIcon = 3, perkData = {
    dedications = { {id = WDCap, quantity = 5} },
    convictions = { medium = {{id = 41}} }
}})
WheelDestiny.AddSlotData(35, VocationsClient.Monk, {icon = 6, subIcon = 1, perkData = {
    dedications = { {id = WDMana, quantity = 2} },
    convictions = { medium = {{id = 6, quantity = 0.75}} }
}})
WheelDestiny.AddSlotData(36, VocationsClient.Monk, {icon = 41, subIcon = 2, perkData = {
    dedications = { {id = WDHit, quantity = 2}, {id = WDMana, quantity = 2} },
    convictions = { medium = {{id = 44}} }  
}})