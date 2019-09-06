---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {	-- Kalimdor
		m(STONETALON_MOUNTAINS, {	-- Stonetalon Mountains
			n(-17, {	-- Quests
				q(1071, {	-- A Gnome's Respite
					["lvl"] = 17,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 4077,	-- Gaxim Rustfizzle
				}),
				q(1075, {	-- A Scroll from Mauren
					["lvl"] = 17,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 4077,	-- Gaxim Rustfizzle
				}),
				q(1072, {	-- An Old Colleague
					["lvl"] = 17,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 4077,	-- Gaxim Rustfizzle
				}),
	q(6284, {	-- Arachnophobia
		--["objectID"] = 177904,	-- Wanted Poster: Besseleth
		["coord"] = { 59.09, 75.76, STONETALON_MOUNTAINS },
		["lvl"] = 15,
		["races"] = HORDE_ONLY,
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
					["lvl"] = 13,
					["races"] = HORDE_ONLY,
					["qg"] = 12816,	-- Xen'Zilla
				}),
				q(6283, {	-- Bloodfury Bloodline
					["lvl"] = 18,
					["races"] = HORDE_ONLY,
					["qg"] = 11860,	-- Maggran Earthbinder
					["g"] = {
						i(16990),	-- Spritekin Cloak
						i(16987),	-- Screecher Belt
					},
				}),
				q(6421, {	-- Boulderslide Ravine
					["lvl"] = 14,
					["races"] = HORDE_ONLY,
					["qg"] = 11861,	-- Mor'rogal
				}),
	q(5881, {	-- Calling in the Reserves
		["qg"] = 11860,	-- Maggran Earthbinder
		["coord"] = { 47.17, 61.08, STONETALON_MOUNTAINS },
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
					["lvl"] = 17,
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(5695),	-- NG-5 Explosives (Blue)
						i(5694),	-- NG-5 Explosives (Red)
					},
				}),
				q(1080, {	-- Covert Ops - Beta
					["lvl"] = 17,
					["races"] = ALLIANCE_ONLY,
				}),
	q(6301, {	-- Cycle of Rebirth
		["qg"] = 11864,	-- Tammra Windfield
		["coord"] = { 47.44, 58.47, STONETALON_MOUNTAINS },
		["lvl"] = 17,
		["races"] = HORDE_ONLY,
	}),
				q(1076, {	-- Devils in Westfall
					["lvl"] = 17,
					["races"] = ALLIANCE_ONLY,
				}),
				q(6481, {	-- Earthen Arise
					["lvl"] = 14,
					["races"] = HORDE_ONLY,
					["qg"] = 11861,	-- Mor'rogal
					["g"] = {
						i(16981),	-- Owlbeard Bracers
						i(1306),	-- Wolfmane Wristguards
					},
				}),
				q(6393, {	-- Elemental War
					["lvl"] = 19,
					["races"] = HORDE_ONLY,
					["qg"] = 11862,	-- Tsunaman
				}),
				q(1083, {	-- Enraged Spirits
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 4080,	-- Kaela Shadowspear
				}),
	q(1094, {	-- Further Instructions
		["qg"] = 4201,	-- Ziz Fizziks
		["coord"] = { 59.00, 62.53, STONETALON_MOUNTAINS },
		["races"] = HORDE_ONLY,
		["lvl"] = 16,
		["sourceQuest"] = 1093,	-- Super Reaper 6000
	}),
	q(1095, {	-- Further Instructions
		["qg"] = 3442,	-- Sputtervalve
		["coord"] = { 62.97, 37.19, THE_BARRENS },
		["races"] = HORDE_ONLY,
		["lvl"] = 16,
		["sourceQuest"] = 1094,	-- Further Instructions
	}),
				q(1096, {	-- Gerenzo Wrenchwhistle
					["lvl"] = 16,
					["races"] = HORDE_ONLY,
					["qg"] = 4201,	-- Ziz Fizziks
					["g"] = {
						i(6667),	-- Engineer's Cloak
						i(6668),	-- Draftsman Boots
					},
				}),
				q(1090, {	-- Gerenzo's Orders
					["lvl"] = 17,
					["qg"] = 4276,	-- Piznik
				}),
				q(1092, {	-- Gerenzo's Orders
					["lvl"] = 17,
					["qg"] = 4276,	-- Piznik
					["g"] = {
						i(6666),	-- Dredge Boots
					},
				}),
	q(1062, {	-- Goblin Invaders
		["qg"] = 4049,	-- Seereth Stonebreak
		["coord"] = { 35.28, 27.84, THE_BARRENS },
		["races"] = HORDE_ONLY,
		["lvl"] = 13,
		["sourceQuest"] = 1061,	-- The Spirits of Stonetalon
	}),
	q(6282, {	-- Harpies Threaten
		["qg"] = 11860,	-- Maggran Earthbinder
		["coord"] = { 47.17, 61.08, STONETALON_MOUNTAINS },
		["races"] = HORDE_ONLY,
		["lvl"] = 18,
	}),
				q(1074, {	-- Ineptitude + Chemicals = Fun
					["lvl"] = 17,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 4081,	-- Lomac Gearstrip
				}),
				q(1073, {	-- Ineptitude + Chemicals = Fun
					["lvl"] = 17,
					["races"] = ALLIANCE_ONLY,
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
					["lvl"] = 17,
					["races"] = ALLIANCE_ONLY,
				}),
	q(6401, {	-- Kaya's Alive
		["qg"] = 11857,	-- Makaba Flathoof
		["coord"] = { 35.23, 27.79, THE_BARRENS },
		["races"] = HORDE_ONLY,
		["lvl"] = 12,
		["sourceQuest"] = 6523,	-- Protect Kaya
	}),
	q(6629, {	-- Kill Grundig Darkcloud
		["qg"] = 11857,	-- Makaba Flathoof
		["coord"] = { 35.23, 27.79, THE_BARRENS },
		["races"] = HORDE_ONLY,
		["lvl"] = 12,
		["sourceQuest"] = 6548,	-- Avenge My Village
	}),
				q(6381, {	-- New Life
					["lvl"] = 17,
					["races"] = HORDE_ONLY,
					["qg"] = 11864,	-- Tammra Windfield
					["g"] = {
						i(16985),	-- Windseeker Boots
						i(16986),	-- Sandspire Gloves
					},
				}),
				q(1088, {	-- Ordanus
					["lvl"] = 20,
					["races"] = HORDE_ONLY,
					["qg"] = 4198,	-- Braelyn Firehand
					["sourceQuest"] = 1087,	-- Cenarius' Legacy
				}),
	q(6523, {	-- Protect Kaya
		["qg"] = 11856,	-- Kaya Flathoof
		["coord"] = { 73.51, 85.68, STONETALON_MOUNTAINS },
		["races"] = HORDE_ONLY,
		["lvl"] = 12,
	}),
				q(1081, {	-- Reception from Tyrande
					["lvl"] = 17,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 4079,	-- Sentinel Thenysil
					["g"] = {
						i(7334),	-- Efflorescent Robe
						i(7335),	-- Grizzly Tunic
						i(7336),	-- Wildwood Chain
						i(6678),	-- Band of Elven Grace
					},
				}),
				q(1059, {	-- Reclaiming the Charred Vale
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3994,	-- Keeper Albagorm
					["g"] = {
						i(6675),	-- Tempered Bracers
						i(6676),	-- Constable Buckler
					},
				}),
				q(1057, {	-- Reclaiming the Charred Vale
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3994,	-- Keeper Albagorm
				}),
				q(6542, {	-- Report to Kadrak
					["lvl"] = 17,
					["races"] = HORDE_ONLY,
					["qg"] = 11821,	-- Darn Talongrip
				}),
				q(1078, {	-- Retrieval for Mauren
					["lvl"] = 17,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 4078,	-- Collin Mauren
					["g"] = {
						i(6677),	-- Spellcrafter Wand
					},
				}),
	q(1068, {	-- Shredding Machines
		["qg"] = 4049,	-- Seereth Stonebreak
		["coord"] = { 35.28, 27.84, THE_BARRENS },
		["races"] = HORDE_ONLY,
		["lvl"] = 13,
		["sourceQuest"] = 1062,	-- Goblin Invaders
	}),
				q(1077, {	-- Special Delivery for Gaxim
					["lvl"] = 17,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 4078,	-- Collin Mauren
				}),
	q(1093, {	-- Super Reaper 6000
		["qg"] = 4201,	-- Ziz Fizziks
		["coord"] = { 59.00, 62.53, STONETALON_MOUNTAINS },
		["races"] = HORDE_ONLY,
		["lvl"] = 16,
		["sourceQuest"] = 1483,	-- Ziz Fizziks
	}),
				q(1089, {	-- The Den
					["lvl"] = 20,
					["races"] = HORDE_ONLY,
					["qg"] = 4198,	-- Braelyn Firehand
					["g"] = {
						i(6669),	-- Sacred Band
						i(5687),	-- Gatekeeper's Key
						i(6670),	-- Panther Armor
					},
				}),
	q(1063, {	-- The Elder Crone
		["qg"] = 4049,	-- Seereth Stonebreak
		["coord"] = { 35.28, 27.84, THE_BARRENS },
		["races"] = HORDE_ONLY,
		["lvl"] = 13,
		["sourceQuest"] = 1062,	-- Goblin Invaders
	}),
	q(1061, {	-- The Spirits of Stonetalon
		["qg"] = 4047,	-- Zor Lonetree
		["maps"] = { ORGRIMMAR },
		["coord"] = { 39.03, 38.04, ORGRIMMAR },
		["races"] = HORDE_ONLY,
		["lvl"] = 13,
	}),
				q(1082, {	-- Update for Sentinel Thenysil
					["lvl"] = 17,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 4080,	-- Kaela Shadowspear
				}),
				q(1084, {	-- Wounded Ancients
					["lvl"] = 22,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 4080,	-- Kaela Shadowspear
				}),
			}),
		}),
	}),
};