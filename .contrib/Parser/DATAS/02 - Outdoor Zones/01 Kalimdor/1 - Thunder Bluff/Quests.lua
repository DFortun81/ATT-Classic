---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(THUNDER_BLUFF, {
			n(QUESTS, {
				q(7822, {	-- A Donation of Mageweave
					["qg"] = 14728,	-- Rumstag Proudstrider
					["cost"] = { { "i", 4338, 60 } },	-- Mageweave Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
				}),
				q(7823, {	-- A Donation of Runecloth
					["qg"] = 14728,	-- Rumstag Proudstrider
					["cost"] = { { "i", 14047, 60 } },	-- Runecloth
					["races"] = HORDE_ONLY,
					["lvl"] = 50,
				}),
				q(7821, {	-- A Donation of Silk
					["qg"] = 14728,	-- Rumstag Proudstrider
					["cost"] = { { "i", 4306, 60 } },	-- Silk Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 26,
				}),
				q(7820, {	-- A Donation of Wool
					["qg"] = 14728,	-- Rumstag Proudstrider
					["cost"] = { { "i", 2592, 60 } },	-- Wool Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
				}),
				q(2968, {	-- A Future Task
					["lvl"] = 45,
					["races"] = HORDE_ONLY,
				}),
				q(7825, {	-- Additional Runecloth
					["qg"] = 14728,	-- Rumstag Proudstrider
					["sourceQuest"] = 7823,	-- A Donation of Runecloth
					["cost"] = { { "i", 14047, 20 } },	-- Runecloth
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 50,
				}),
				q(3762, {	-- Assisting Arch Druid Runetotem
					["qg"] = 6746,	-- Innkeeper Pala
					["altQuests"] = {
						936,	-- Assisting Arch Druid Runetotem
						3784, 	-- Assisting Arch Druid Runetotem
					},
					["isBreadcrumb"] = true,
					["races"] = HORDE_ONLY,
					["lvl"] = 47,
				}),
				q(1066, {	-- Blood of Innocents
					["qg"] = 2216,	-- Apothecary Lydon
					["coord"] = { 61.4, 19.2, HILLSBRAD_FOOTHILLS },
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5620, 5 },	-- Vial of Innocent Blood
					},
					["lvl"] = 13,
				}),
				q(1845, {	-- Brutal Helm
					["qg"] = 6410,	-- Orm Stonehoof
					["sourceQuest"] = 1844,	-- Chimaeric Horn
					["coord"] = { 39, 55.8, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 20,
					["groups"] = {
						i(7130),	-- Brutal Helm
					},
				}),
				q(1844, {	-- Chimaeric Horn
					["qg"] = 6410,	-- Orm Stonehoof
					["sourceQuest"] = 1840,	-- Orm Stonehoof and the Brutal Helm
					["coord"] = { 39, 55.8, THUNDER_BLUFF },
					["maps"] = { STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["cost"] = {
						{ "i", 6840, 1 },	-- Galvanized Horn
					},
					["lvl"] = 20,
				}),
				q(1064, {	-- Forsaken Aid
					["qg"] = 4046,	-- Magatha Grimtotem
					["coord"] = { 69.85, 30.91, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["lvl"] = 13,
					["sourceQuest"] = 1063,	-- The Elder Crone
				}),
				q(1136, {	-- Frostmaw
					["qg"] = 3441,	-- Melor Stonehoof
					["coord"] = { 61.52, 80.88, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["lvl"] = 26,
					["g"] = {
						i(6720),	-- Spirit Hunter Headdress
						i(5810),	-- Fresh Carcass
					},
				}),
				q(1065, {	-- Journey to Tarren Mill
					["qg"] = 3419,	-- Apothecary Zamah
					["coord"] = { 22.85, 20.90, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["lvl"] = 13,
					["sourceQuest"] = 1064,	-- Forsaken Aid
				}),
				q(769, {	-- Kodo Hide Bag
					["lvl"] = 4,
					["races"] = HORDE_ONLY,
					["qg"] = 3050,	-- Veren Tallstrider
					["requireSkill"] = LEATHERWORKING,
					["g"] = {
						i(5083),	-- Pattern: Kodo Hide Bag
					},
				}),
				q(8250, {	-- Magecraft
					["qg"] = 3047,	-- Archmage Shymm <Mage Trainer>
					["coord"] = { 22.6, 14.8, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["classes"] = { MAGE },
					["lvl"] = 50,
				}),
				q(1130, {	-- Melor Sends Word
					["lvl"] = 20,
					["races"] = HORDE_ONLY,
					["qg"] = 3387,	-- Jorn Skyseer
					["isBreadcrumb"] = true,
				}),
				q(3786, {	-- Morrowgrain Research
					["lvl"] = 47,
					["races"] = HORDE_ONLY,
					["qg"] = 9087,	-- Bashana Runetotem
					["g"] = {
						i(11887),	-- Cenarion Circle Cache
					},
				}),
				q(3782, {	-- Morrowgrain Research
					["lvl"] = 47,
					["races"] = HORDE_ONLY,
					["qg"] = 5769,	-- Arch Druid Hamuul Runetotem
					["g"] = {
						i(11022),	-- Packet of Tharlendris Seeds
					},
				}),
				q(3804, {	-- Morrowgrain to Thunder Bluff
					["lvl"] = 47,
					["races"] = HORDE_ONLY,
					["qg"] = 9087,	-- Bashana Runetotem
					["repeatable"] = true,
					["g"] = {
						i(11887),	-- Cenarion Circle Cache
					},
				}),
				q(1840, {	-- Orm Stonehoof and the Brutal Helm
					["qg"] = 5878,	-- Thun'grim Firegaze
					["sourceQuest"] = 1838,	-- Brutal Armor
					["coord"] = { 57.2, 30.2, THE_BARRENS },
					["maps"] = { THE_BARRENS },
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 20,
				}),
				q(2965, {	-- Portents of Uldum
					["sourceQuest"] = 2440,	-- The Platinum Discs [Horde - Part 3]
					["qg"] = 3978,	-- Sage Truthseeker
					["races"] = HORDE_ONLY,
					["lvl"] = 45,
				}),
				q(744, {	-- Preparation for Ceremony
					["lvl"] = 7,
					["races"] = HORDE_ONLY,
					["qg"] = 2987,	-- Eyahn Eagletalon
					["g"] = {
						i(4968),	-- Bound Harness
						i(4967),	-- Tribal Warrior's Shield
					},
				}),
				q(1959, {	-- Report to Anastasia
					["qg"] = 3049,	-- Thurston Xane <Mage Trainer>
					["coord"] = { 25, 20.6, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["classes"] = { MAGE },
					["isBreadcrumb"] = true,
					["lvl"] = 15,
				}),
				q(2967, {	-- Return to Thunder Bluff
					["lvl"] = 45,
					["races"] = HORDE_ONLY,
					["provider"] = { "o", 142343 },	-- Uldum Pedestal
				}),
				q(1067, {	-- Return to Thunder Bluff
					["lvl"] = 13,
					["races"] = HORDE_ONLY,
					["qg"] = 2216,	-- Apothecary Lydon
				}),
				q(2966, {	-- Seeing What Happens
					["lvl"] = 45,
					["races"] = HORDE_ONLY,
				}),
				q(860, {	-- Sergra Darkthorn
					["qg"] = 3441,	-- Melor Stonehoof
					["sourceQuest"] = 861,	-- The Hunter's Way
					["coord"] = { 61.52, 80.91, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(1131, {	-- Steelsnap
					["qg"] = 3441,	-- Melor Stonehoof
					["coord"] = { 61.51, 80.88, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
				}),
				q(742, {	-- The Ashenvale Hunt
					["qg"] = 10881,	-- Bluff Runner Windstrider
					["coord"] = { 41.4, 54.2, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["altQuests"] = {
						6383,	-- The Ashenvale Hunt
					},
					["lvl"] = 20,
				}),
				q(1086, {	-- The Flying Machine Airport
					["qg"] = 3419,	-- Apothecary Zamah
					["sourceQuest"] = 1067,	-- Return to Thunder Bluff
					["coord"] = { 22.85, 20.90, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["lvl"] = 13,
				}),
				q(8151, {	-- The Hunter's Charm
					["qg"] = 3038,	-- Kary Thunderhorn <Hunter Trainer>
					["coord"] = { 58.4, 88.0, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["classes"] = { HUNTER },
					["lvl"] = 50,
				}),
				q(1195, {	-- The Sacred Flame
					["qg"] = 4721,	-- Zangen Stonehoof
					["coord"] = { 54.97, 51.32, THUNDER_BLUFF },
					["maps"] = { ASHENVALE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5868, 1 },	-- Filled Etched Phial
					},
					["lvl"] = 20,
				}),
				q(1196, {	-- The Sacred Flame
					["qg"] = 4721,	-- Zangen Stonehoof
					["sourceQuest"] = 1195,	-- The Sacred Flame
					["coord"] = { 54.97, 51.32, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5868, 1 },	-- Filled Etched Phial
					},
					["lvl"] = 20,
				}),
				q(1197, {	-- The Sacred Flame
					["qg"] = 4722,	-- Rau Cliffrunner
					["coord"] = { 46.13, 51.69, THOUSAND_NEEDLES },
					["maps"] = { THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5868, 1 },	-- Filled Etched Phial
						{ "i", 5869, 1 },	-- Cloven Hoof
					},
					["lvl"] = 20,
					["g"] = {
						i(6739),	-- Cliffrunner's Aim
						i(6740),	-- Azure Sash
					},
				}),
				q(3761, {	-- Un'Goro Soil
					["lvl"] = 47,
					["races"] = HORDE_ONLY,
					["qg"] = 5769,	-- Arch Druid Hamuul Runetotem
				}),
				q(264, {	-- Until Death Do Us Part
					["coord"] = { 28.19, 25.31, THUNDER_BLUFF },
					["qg"] = 5543,	-- Clarice Foster
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
				}),
			}),
		}),
	}),
};
