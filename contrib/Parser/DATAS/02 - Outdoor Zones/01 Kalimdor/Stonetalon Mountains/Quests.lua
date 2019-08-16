---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(1414, {	-- Kalimdor
		m(65, {	-- Stonetalon Mountains
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
					["lvl"] = 15,
					["races"] = HORDE_ONLY,
					--["objectID"] = 177904,	-- Wanted Poster: Besseleth
					["g"] = {
						i(16891),	-- Claystone Shortsword
						i(16894),	-- Clear Crystal Rod
					},
				}),
				q(6548, {	-- Avenge My Village
					["lvl"] = 12,
					["races"] = HORDE_ONLY,
					["qg"] = 11857,	-- Makaba Flathoof
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
					["lvl"] = 23,
					["races"] = HORDE_ONLY,
					["qg"] = 11860,	-- Maggran Earthbinder
				}),
				q(1087, {	-- Cenarius' Legacy
					["lvl"] = 20,
					["races"] = HORDE_ONLY,
					["qg"] = 4198,	-- Braelyn Firehand
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
					["lvl"] = 17,
					["races"] = HORDE_ONLY,
					["qg"] = 11864,	-- Tammra Windfield
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
				q(1095, {	-- Further Instructions
					["lvl"] = 16,
					["qg"] = 3442,	-- Sputtervalve
				}),
				q(1094, {	-- Further Instructions
					["lvl"] = 16,
					["qg"] = 4201,	-- Ziz Fizziks
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
					["lvl"] = 13,
					["races"] = HORDE_ONLY,
					["qg"] = 4049,	-- Seereth Stonebreak
				}),
				q(6282, {	-- Harpies Threaten
					["lvl"] = 18,
					["races"] = HORDE_ONLY,
					["qg"] = 11860,	-- Maggran Earthbinder
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
					["lvl"] = 20,
					["races"] = HORDE_ONLY,
					["qg"] = 3995,	-- Witch Doctor Jin'Zil
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
					["lvl"] = 12,
					["races"] = HORDE_ONLY,
					["qg"] = 11857,	-- Makaba Flathoof
				}),
				q(6629, {	-- Kill Grundig Darkcloud
					["lvl"] = 12,
					["races"] = HORDE_ONLY,
					["qg"] = 11857,	-- Makaba Flathoof
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
				}),
				q(6523, {	-- Protect Kaya
					["lvl"] = 12,
					["races"] = HORDE_ONLY,
					["qg"] = 11856,	-- Kaya Flathoof
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
					["lvl"] = 13,
					["races"] = HORDE_ONLY,
					["qg"] = 4049,	-- Seereth Stonebreak
				}),
				q(1077, {	-- Special Delivery for Gaxim
					["lvl"] = 17,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 4078,	-- Collin Mauren
				}),
				q(1093, {	-- Super Reaper 6000
					["lvl"] = 16,
					["qg"] = 4201,	-- Ziz Fizziks
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
					["lvl"] = 13,
					["races"] = HORDE_ONLY,
					["qg"] = 4049,	-- Seereth Stonebreak
				}),
				q(1061, {	-- The Spirits of Stonetalon
					["lvl"] = 13,
					["races"] = HORDE_ONLY,
					["qg"] = 4047,	-- Zor Lonetree
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