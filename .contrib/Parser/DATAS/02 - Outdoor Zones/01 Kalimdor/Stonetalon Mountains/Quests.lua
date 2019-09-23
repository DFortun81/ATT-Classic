---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {	-- Kalimdor
		m(STONETALON_MOUNTAINS, {	-- Stonetalon Mountains
			n(-17, {	-- Quests
				q(1071, {	-- A Gnome's Respite
					["qg"] = 4077,	-- Gaxim Rustfizzle
					["sourceQuest"] = 1085,	-- On Guard in Stonetalon
					--["coord"] = { },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
				}),
				q(1075, {	-- A Scroll from Mauren
					["qg"] = 4077,	-- Gaxim Rustfizzle
					-- ["coord"] = ,
					["lvl"] = 17,
					["races"] = ALLIANCE_ONLY,
				}),
				q(1072, {	-- An Old Colleague
					["qg"] = 4077,	-- Gaxim Rustfizzle
					-- ["coord"] = ,
					["lvl"] = 17,
					["races"] = ALLIANCE_ONLY,
				}),
				q(6284, {	-- Arachnophobia
					["provider"] = { "o", 177904 },	-- Wanted Poster: Besseleth
					["coord"] = { 59.09, 75.76, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 15,
					["g"] = {
						i(16891),	-- Claystone Shortsword
						i(16894),	-- Clear Crystal Rod
					},
				}),
				q(6548, {	-- Avenge My Village
					["qg"] = 11857,	-- Makaba Flathoof
					["coord"] = { 35.23, 27.79, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
				}),
				q(6461, {	-- Blood Feeders
					["qg"] = 12816,	-- Xen'Zilla
					["coord"] = { 71.25, 95.00, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 13,
				}),
				q(6283, {	-- Bloodfury Bloodline
					["qg"] = 11860,	-- Maggran Earthbinder
					["sourceQuest"] = 6282,	-- Harpies Threaten
					["coord"] = { 47.17, 61.08, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 18,
					["g"] = {
						i(16990),	-- Spritekin Cloak
						i(16987),	-- Screecher Belt
					},
				}),
				q(6421, {	-- Boulderslide Ravine
					["qg"] = 11861,	-- Mor'rogal
					["coord"] = { 47.17, 64.10, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 14,
				}),
				q(5881, {	-- Calling in the Reserves
					["qg"] = 11860,	-- Maggran Earthbinder
					["coord"] = { 47.17, 61.08, STONETALON_MOUNTAINS },
					["maps"] = { THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 23,
				}),
				q(1087, {	-- Cenarius' Legacy
					["qg"] = 4198,	-- Braelyn Firehand
					["coord"] = { 45.91, 60.35, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
				}),
				q(1079, {	-- Covert Ops - Alpha
					["qg"] = 4077,	-- Gaxim Rustfizzle
					["sourceQuests"] = {
						1074,	-- Ineptitude + Chemicals = Fun
						1077,	-- Special Delivery for Gaxim
					},
					--["coord"] = { },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
					["g"] = {
						i(5695),	-- NG-5 Explosives (Blue)
						i(5694),	-- NG-5 Explosives (Red)
					},
				}),
				q(1080, {	-- Covert Ops - Beta
					["qg"] = 4077,	-- Gaxim Rustfizzle
					["sourceQuests"] = {
						1074,	-- Ineptitude + Chemicals = Fun
						1077,	-- Special Delivery for Gaxim
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
				}),
				q(6301, {	-- Cycle of Rebirth
					["qg"] = 11864,	-- Tammra Windfield
					["coord"] = { 47.44, 58.47, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
				}),
				q(1076, {	-- Devils in Westfall
					["qg"] = 4078,	-- Collin Mauren
					["sourceQuest"] = 1075,	-- A Scroll from Mauren
					--["coord"] = { },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
				}),
				q(6481, {	-- Earthen Arise
					["qg"] = 11861,	-- Mor'rogal
					["sourceQuest"] = 6421,	-- Boulderslide Ravine
					["coord"] = { 47.17, 64.10, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 14,
					["g"] = {
						i(16981),	-- Owlbeard Bracers
						i(1306),	-- Wolfmane Wristguards
					},
				}),
				q(6393, {	-- Elemental War
					["qg"] = 11862,	-- Tsunaman
					["coord"] = { 47.28, 64.31, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 19,
				}),
				q(1083, {	-- Enraged Spirits
					["qg"] = 4080,	-- Kaela Shadowspear
					["sourceQuest"] = 1091,	-- Kaela's Update
					--["coord"] = { },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(1094, {	-- Further Instructions
					["qg"] = 4201,	-- Ziz Fizziks
					["sourceQuest"] = 1093,	-- Super Reaper 6000
					["coord"] = { 59.00, 62.53, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 16,
				}),
				q(1095, {	-- Further Instructions
					["qg"] = 3442,	-- Sputtervalve
					["sourceQuest"] = 1094,	-- Further Instructions
					["coord"] = { 62.97, 37.19, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 16,
				}),
				q(1096, {	-- Gerenzo Wrenchwhistle
					["qg"] = 4201,	-- Ziz Fizziks
					["sourceQuest"] = 1095,	-- Further Instructions
					["coord"] = { 59.00, 62.53, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 16,
					["g"] = {
						i(6667),	-- Engineer's Cloak
						i(6668),	-- Draftsman Boots
					},
				}),
				q(1090, {	-- Gerenzo's Orders
					["qg"] = 4276,	-- Piznik
					["coord"] = { 71.80, 60.05, STONETALON_MOUNTAINS },
					["lvl"] = 17,
				}),
				q(1092, {	-- Gerenzo's Orders
					["qg"] = 4276,	-- Piznik
					["coord"] = { 71.80, 60.05, STONETALON_MOUNTAINS },
					["lvl"] = 17,
					["g"] = {
						i(6666),	-- Dredge Boots
					},
				}),
				q(1062, {	-- Goblin Invaders
					["qg"] = 4049,	-- Seereth Stonebreak
					["sourceQuest"] = 1061,	-- The Spirits of Stonetalon
					["coord"] = { 35.28, 27.84, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 13,
				}),
				q(6282, {	-- Harpies Threaten
					["qg"] = 11860,	-- Maggran Earthbinder
					["coord"] = { 47.17, 61.08, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 18,
				}),
				q(1073, {	-- Ineptitude + Chemicals = Fun
					["qg"] = 4081,	-- Lomac Gearstrip
					--["coord"] = { },
					["sourceQuest"] = 1072,	-- An Old Colleague
					["cost"] = {
						{ "i", 2455, 4 },	-- Minor Mana Potion
						{ "i", 2458, 2 },	-- Elixir of Minor Fortitude
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
				}),
				q(1074, {	-- Ineptitude + Chemicals = Fun
					["qg"] = 4081,	-- Lomac Gearstrip
					--["coord"] = { },
					["sourceQuest"] = 1073,	-- Ineptitude + Chemicals = Fun
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
				}),
				q(1058, {	-- Jin'Zil's Forest Magic
					["qg"] = 3995,	-- Witch Doctor Jin'Zil
					["coord"] = { 74.54, 97.84, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["g"] = {
						i(6664),	-- Voodoo Mantle
						i(6665),	-- Hexed Bracers
					},
				}),
				q(1091, {	-- Kaela's Update
					["qg"] = 4077,	-- Gaxim Rustfizzle
					["sourceQuests"] = {
						1079,	-- Covert Ops - Alpha
						1080,	-- Covert Ops - Beta
					},
					--["coord"] = { },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
				}),
				q(6401, {	-- Kaya's Alive
					["qg"] = 11857,	-- Makaba Flathoof
					["sourceQuest"] = 6523,	-- Protect Kaya
					["coord"] = { 35.23, 27.79, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
				}),
				q(6629, {	-- Kill Grundig Darkcloud
					["qg"] = 11857,	-- Makaba Flathoof
					["sourceQuest"] = 6548,	-- Avenge My Village
					["coord"] = { 35.23, 27.79, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
				}),
				q(6381, {	-- New Life
					["qg"] = 11864,	-- Tammra Windfield
					["sourceQuest"] = 6301,	-- Cycle of Rebirth
					["coord"] = { 47.44, 58.47, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
					["g"] = {
						i(16985),	-- Windseeker Boots
						i(16986),	-- Sandspire Gloves
					},
				}),
				q(1088, {	-- Ordanus
					["qg"] = 4198,	-- Braelyn Firehand
					["sourceQuest"] = 1087,	-- Cenarius' Legacy
					["coord"] = { 45.91, 60.35, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
				}),
				q(6523, {	-- Protect Kaya
					["qg"] = 11856,	-- Kaya Flathoof
					["coord"] = { 73.51, 85.68, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
				}),
				q(1081, {	-- Reception from Tyrande
					["qg"] = 4079,	-- Sentinel Thenysil
					["sourceQuest"] = 1082,	-- Update for Sentinel Thenysil
					--["coord"] = { },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
					["g"] = {
						i(7334),	-- Efflorescent Robe
						i(7335),	-- Grizzly Tunic
						i(7336),	-- Wildwood Chain
						i(6678),	-- Band of Elven Grace
					},
				}),
				q(1057, {	-- Reclaiming the Charred Vale
					["qg"] = 3994,	-- Keeper Albagorm
					--["coord"] = { },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(1059, {	-- Reclaiming the Charred Vale
					["qg"] = 3994,	-- Keeper Albagorm
					["sourceQuest"] = 1057,	-- Reclaiming the Charred Vale
					--["coord"] = { },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["g"] = {
						i(6675),	-- Tempered Bracers
						i(6676),	-- Constable Buckler
					},
				}),
				q(6542, {	-- Report to Kadrak
					["qg"] = 11821,	-- Darn Talongrip
					["isBreadcrumb"] = true,
					["coord"] = { 73.23, 94.91, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
				}),
				q(1078, {	-- Retrieval for Mauren
					["qg"] = 4078,	-- Collin Mauren
					--["coord"] = { },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
					["g"] = {
						i(6677),	-- Spellcrafter Wand
					},
				}),
				q(1068, {	-- Shredding Machines
					["qg"] = 4049,	-- Seereth Stonebreak
					["sourceQuest"] = 1062,	-- Goblin Invaders
					["coord"] = { 35.28, 27.84, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 13,
				}),
				q(1077, {	-- Special Delivery for Gaxim
					["qg"] = 4078,	-- Collin Mauren
					["sourceQuest"] = 1076,	-- Devils in Westfall
					--["coord"] = { },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
				}),
				q(1093, {	-- Super Reaper 6000
					["qg"] = 4201,	-- Ziz Fizziks
					["sourceQuest"] = 1483,	-- Ziz Fizziks
					["coord"] = { 59.00, 62.53, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 16,
				}),
				q(1089, {	-- The Den
					["qg"] = 4198,	-- Braelyn Firehand
					["sourceQuest"] = 1088,	-- Ordanus
					["coord"] = { 45.91, 60.35, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["g"] = {
						i(6669),	-- Sacred Band
						i(5687),	-- Gatekeeper's Key
						i(6670),	-- Panther Armor
					},
				}),
				q(1063, {	-- The Elder Crone
					["qg"] = 4049,	-- Seereth Stonebreak
					["sourceQuest"] = 1062,	-- Goblin Invaders
					["coord"] = { 35.28, 27.84, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 13,
				}),
				q(1061, {	-- The Spirits of Stonetalon
					["qg"] = 4047,	-- Zor Lonetree
					["coord"] = { 39.03, 38.04, ORGRIMMAR },
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 13,
				}),
				q(1082, {	-- Update for Sentinel Thenysil
					["qg"] = 4080,	-- Kaela Shadowspear
					["sourceQuests"] = {
						1083,	-- Enraged Spirits
						1084,	-- Wounded Ancients
					},
					--["coord"] = { },
					["lvl"] = 17,
					["races"] = ALLIANCE_ONLY,
				}),
				q(1084, {	-- Wounded Ancients
					["qg"] = 4080,	-- Kaela Shadowspear
					["sourceQuest"] = 1091,	-- Kaela's Update
					--["coord"] = { },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
				}),
			}),
		}),
	}),
};