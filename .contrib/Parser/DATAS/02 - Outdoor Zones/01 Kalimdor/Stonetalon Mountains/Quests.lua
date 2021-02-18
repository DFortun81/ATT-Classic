---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(STONETALON_MOUNTAINS, {
			n(QUESTS, {
				q(1071, {	-- A Gnome's Respite
					["qg"] = 4077,	-- Gaxim Rustfizzle
					["sourceQuest"] = 1085,	-- On Guard in Stonetalon
					["coord"] = { 59.6, 67.0, STONETALON_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
				}),
				q(1075, {	-- A Scroll from Mauren
					["qg"] = 4077,	-- Gaxim Rustfizzle
					["sourceQuest"] = 1071,	-- A Gnome's Respite
					["coord"] = { 59.6, 67.0, STONETALON_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
				}),
				q(1072, {	-- An Old Colleague
					["qg"] = 4077,	-- Gaxim Rustfizzle
					["sourceQuest"] = 1071,	-- A Gnome's Respite
					["coord"] = { 59.6, 67.0, STONETALON_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
				}),
				q(6284, {	-- Arachnophobia
					["provider"] = { "o", 177904 },	-- Wanted Poster: Besseleth
					["coord"] = { 59.09, 75.76, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 16192, 1 },	-- Besseleth's Fang
					},
					["lvl"] = 15,
					["g"] = {
						{
							["itemID"] = 16192,	-- Besseleth's Fang
							["questID"] = 6284,	-- Arachnophobia
							["cr"] = 11921,	-- Besseleth
							["coord"] = { 52.8, 72.6, STONETALON_MOUNTAINS },
						},
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
					["cost"] = {
						{ "i", 16190, 1 },	-- Bloodfury Ripper's Remains
					},
					["lvl"] = 18,
					["g"] = {
						{
							["itemID"] = 16190,	-- Bloodfury Ripper's Remains
							["questID"] = 6283,	-- Bloodfury Bloodline
							["cr"] = 12579,	-- Bloodfury Ripper
							["coord"] = { 31.8, 62.6, STONETALON_MOUNTAINS },
						},
						i(16990),	-- Spritekin Cloak
						i(16987),	-- Screecher Belt
					},
				}),
				q(6421, {	-- Boulderslide Ravine
					["qg"] = 11861,	-- Mor'rogal
					["coord"] = { 47.17, 64.10, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 16581, 10 },	-- Resonite Crystal
					},
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
						1074,	-- Ineptitude + Chemicals = Fun (2/2)
						1077,	-- Special Delivery for Gaxim
					},
					["coord"] = { 59.6, 67.0, STONETALON_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5718, 1 },	-- Venture Co. Engineering Plans
					},
					["lvl"] = 17,
					["g"] = {
						{
							["itemID"] = 5718,	-- Venture Co. Engineering Plans
							["questID"] = 1079,	-- Covert Ops - Alpha
							["coord"] = { 66.1, 51.3, STONETALON_MOUNTAINS },
						},
						i(5738),	-- Covert Ops Pack
					},
				}),
				q(1080, {	-- Covert Ops - Beta
					["qg"] = 4077,	-- Gaxim Rustfizzle
					["coord"] = { 59.6, 67.0, STONETALON_MOUNTAINS },
					["sourceQuests"] = {
						1074,	-- Ineptitude + Chemicals = Fun (2/2)
						1077,	-- Special Delivery for Gaxim
					},
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5717, 1 },	-- Venture Co. Letters
					},
					["lvl"] = 17,
					["g"] = {
						{
							["itemID"] = 5717,	-- Venture Co. Letters
							["questID"] = 1080,	-- Covert Ops - Beta
							["coord"] = { 74.4, 59.2, STONETALON_MOUNTAINS },
						},
						i(5738),	-- Covert Ops Pack
					},
				}),
				q(6301, {	-- Cycle of Rebirth
					["qg"] = 11864,	-- Tammra Windfield
					["coord"] = { 47.44, 58.47, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 16205, 10 },	-- Gaea Seed
					},
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
					["cost"] = {
						{ "i", 16312, 10 },	-- Incendrites
					},
					["lvl"] = 19,
				}),
				q(1083, {	-- Enraged Spirits
					["qg"] = 4080,	-- Kaela Shadowspear
					["sourceQuest"] = 1091,	-- Kaela's Update
					["coord"] = { 59.9, 66.8, STONETALON_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5659, 8 },	-- Smoldering Embers
					},
					["lvl"] = 20,
				}),
				q(1094, {	-- Further Instructions (1/2)
					["qg"] = 4201,	-- Ziz Fizziks
					["sourceQuest"] = 1093,	-- Super Reaper 6000
					["coord"] = { 59.00, 62.53, STONETALON_MOUNTAINS },
					["cost"] = {
						{ "i", 5735, 1 },	-- Sealed Envelope
					},
					["lvl"] = 16,
				}),
				q(1095, {	-- Further Instructions (2/2)
					["qg"] = 3442,	-- Sputtervalve
					["sourceQuest"] = 1094,	-- Further Instructions (1/2)
					["coord"] = { 62.97, 37.19, THE_BARRENS },
					["maps"] = { THE_BARRENS },
					["lvl"] = 16,
				}),
				q(1096, {	-- Gerenzo Wrenchwhistle
					["qg"] = 4201,	-- Ziz Fizziks
					["sourceQuest"] = 1095,	-- Further Instructions (2/2)
					["coord"] = { 59.00, 62.53, STONETALON_MOUNTAINS },
					["cost"] = {
						{ "i", 5736, 1 },	-- Gerenzo's Mechanical Arm
					},
					["lvl"] = 16,
					["g"] = {
						{
							["itemID"] = 5736,	-- Gerenzo's Mechanical Arm
							["questID"] = 1096,	-- Gerenzo Wrenchwhistle
							["cr"] = 4202,	-- Gerenzo Wrenchwhistle
							["coord"] = { 63.6, 39.6, STONETALON_MOUNTAINS },
						},
						i(6667),	-- Engineer's Cloak
						i(6668),	-- Draftsman Boots
					},
				}),
				q(1090, {	-- Gerenzo's Orders (1/2)
					["qg"] = 4276,	-- Piznik
					["coord"] = { 71.80, 60.05, STONETALON_MOUNTAINS },
					["lvl"] = 17,
				}),
				q(1092, {	-- Gerenzo's Orders (2/2)
					["qg"] = 4276,	-- Piznik
					["sourceQuest"] = 1090,	-- Gerenzo's Orders (1/2)
					["coord"] = { 71.80, 60.05, STONETALON_MOUNTAINS },
					["cost"] = {
						{ "i", 5733, 1 },	-- Unidentified Ore
					},
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
				q(1058, {	-- Jin'Zil's Forest Magic
					["qg"] = 3995,	-- Witch Doctor Jin'Zil
					["coord"] = { 74.54, 97.84, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5585, 30 },	-- Courser Eye
						{ "i", 5583, 1 },	-- Fey Dragon Scale
						{ "i", 5582, 5 },	-- Stonetalon Sap
						{ "i", 5584, 5 },	-- Twilight Whisker
					},
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
					["coord"] = { 59.6, 67.0, STONETALON_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5717, 1 },	-- Venture Co. Letters
					},
					["lvl"] = 17,
				}),
				q(6401, {	-- Kaya's Alive
					["qg"] = 11857,	-- Makaba Flathoof
					["sourceQuest"] = 6523,	-- Protect Kaya
					["coord"] = { 35.23, 27.79, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
				}),
				q(1511, {	-- Ken'zigla's Draught
					["qg"] = 4197,	-- Ken'zigla
					["sourceQuest"] = 1510,	-- News of Dogran (2/2)
					["coord"] = { 73.2, 95, STONETALON_MOUNTAINS },
					["classes"] = { WARLOCK },
					["races"] = { ORC, UNDEAD },
					["cost"] = {
						{ "i", 6624, 1 },	-- Ken'zigla's Draught
					},
					["lvl"] = 20,
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
				q(1085, {	-- On Guard in Stonetalon
					["qg"] = 4080,	-- Kaela Shadowspear
					["sourceQuest"] = 1070,	-- On Guard in Stonetalon (Ashenvale)
					["coord"] = { 59.9, 66.8, STONETALON_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
				}),
				q(1088, {	-- Ordanus
					["qg"] = 4198,	-- Braelyn Firehand
					["sourceQuest"] = 1087,	-- Cenarius' Legacy
					["coord"] = { 45.91, 60.35, STONETALON_MOUNTAINS },
					["maps"] = { ASHENVALE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5686, 1 },	-- Ordanus' Head
					},
					["lvl"] = 20,
					["groups"] = {
						{
							["itemID"] = 5686,	-- Ordanus' Head
							["questID"] = 1088,	-- Ordanus
							["cr"] = 4273,	-- Keeper Ordanus
							["coord"] = { 62.0, 51.2, ASHENVALE },
						},
					},
				}),
				q(6523, {	-- Protect Kaya
					["qg"] = 11856,	-- Kaya Flathoof
					["coord"] = { 73.51, 85.68, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
				}),
				q(1057, {	-- Reclaiming the Charred Vale
					["qg"] = 3994,	-- Keeper Albagorm
					["coord"] = { 37.1, 8.1, STONETALON_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(1059, {	-- Reclaiming the Charred Vale
					["qg"] = 3994,	-- Keeper Albagorm
					["sourceQuest"] = 1057,	-- Reclaiming the Charred Vale
					["coord"] = { 37.1, 8.1, STONETALON_MOUNTAINS },
					["maps"] = { FERALAS },
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
					["coord"] = { 43.1, 80.3, STORMWIND_CITY },
					["maps"] = { STORMWIND_CITY, THOUSAND_NEEDLES },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5675, 8 },	-- Crystalized Scales
					},
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
					["coord"] = { 43.1, 80.3, STORMWIND_CITY },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
				}),
				q(1093, {	-- Super Reaper 6000
					["qg"] = 4201,	-- Ziz Fizziks
					["sourceQuest"] = 1483,	-- Ziz Fizziks
					["coord"] = { 59.00, 62.53, STONETALON_MOUNTAINS },
					["cost"] = {
						{ "i", 5734, 1 },	-- Super Reaper 6000 Blueprints
					},
					["lvl"] = 16,
				}),
				q(1089, {	-- The Den
					["qg"] = 4198,	-- Braelyn Firehand
					["sourceQuest"] = 1088,	-- Ordanus
					["coord"] = { 45.91, 60.35, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5687, 1 },	-- Gatekeeper's Key
						{ "i", 5691, 1 },	-- Barrow Key
						{ "i", 5690, 1 },	-- Claw Key
						{ "i", 5689, 1 },	-- Sleepers' Key
					},
					["lvl"] = 20,
					["g"] = {
						i(6671),	-- Juggernaut Leggings
						i(6670),	-- Panther Armor
						i(6669),	-- Sacred Band
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
					["isBreadcrumb"] = true,
				}),
				q(1082, {	-- Update for Sentinel Thenysil
					["qg"] = 4080,	-- Kaela Shadowspear
					["sourceQuests"] = {
						1083,	-- Enraged Spirits
						1084,	-- Wounded Ancients
					},
					["coord"] = { 59.9, 66.8, STONETALON_MOUNTAINS },
					["maps"] = { ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
				}),
				q(1084, {	-- Wounded Ancients
					["qg"] = 4080,	-- Kaela Shadowspear
					["sourceQuest"] = 1091,	-- Kaela's Update
					["coord"] = { 59.9, 66.8, STONETALON_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5664, 1 },	-- Corroded Shrapnel
					},
					["lvl"] = 22,
				}),
				q(1483, {	-- Ziz Fizziks
					["qg"] = 3442,	-- Sputtervalve
					["coord"] = { 62.98, 37.21, THE_BARRENS },
					["maps"] = { THE_BARRENS },
					["isBreadcrumb"] = true,
					["lvl"] = 16,
				}),
			}),
		}),
	}),
};