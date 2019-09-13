---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {	-- Eastern Kingdoms
		m(SWAMP_OF_SORROWS, {	-- Swamp of Sorrows
			n(-17, {	-- Quests
				q(1428, {	-- Continued Threat
					["lvl"] = 35,
					["races"] = HORDE_ONLY,
				}),
				q(1425, {	-- Deliver the Shipment
					["lvl"] = 30,
					["qg"] = 5476,	-- Watcher Biggs
				}),
				q(1389, {	-- Draenethyst Crystals
					["lvl"] = 30,
					["qg"] = 1776,	-- Magtoor
				}),
				q(1398, {	-- Driftwood
					["lvl"] = 30,
					["qg"] = 5476,	-- Watcher Biggs
				}),
				q(1396, {	-- Encroaching Wildlife
					["lvl"] = 30,
					["qg"] = 5476,	-- Watcher Biggs
				}),
				q(1430, {	-- Fresh Meat
					["lvl"] = 35,
					["g"] = {
						i(9681),	-- Grilled King Crawler Legs
						i(9682),	-- Leather Chef's Belt
					},
					["races"] = HORDE_ONLY,
				}),
				q(1393, {	-- Galen's Escape
					["lvl"] = 30,
					["qg"] = 5391,	-- Galen Goodward
					["g"] = {
						i(6828),	-- Visionary Buckler
					},
				}),
				q(3512, {	-- In Eranikus' Own Words
					["lvl"] = 48,
				}),
				q(699, {	-- Lack of Surplus
					["races"] = HORDE_ONLY,
					["lvl"] = 35,
				}),
				q(698, {	-- Lack of Surplus
					["races"] = HORDE_ONLY,
					["lvl"] = 35,
				}),
				q(1363, {	-- Mazen's Behest
					["qg"] = 338,	-- Mazen Mac'Nadir
					--["coord"] = { , , STORMWIND_CITY },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 37,
				}),
				q(1364, {	-- Mazen's Behest
					["qg"] = 5386,	-- Acolyte Dellis
					["sourceQuest"] = 1363,	-- Mazen's Behest
					--["coord"] = { , , SWAMP_OF_SORROWS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 37,
					["g"] = {
						i(10747),	-- Teacher's Sash
						i(10748),	-- Wanderlust Boots
					},
				}),
				q(1418, {	-- Neeka Bloodscar
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(1392, {	-- Noboru the Cudgel
					["lvl"] = 29,
				}),
				q(1424, {	-- Pool of Tears
					["qg"] = 1443,	-- Fel'zerul
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
				}),
				q(1429, {	-- The Atal'ai Exile
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
				}),
				q(3374, {	-- The Essence of Eranikus
					["lvl"] = 48,
				}),
				q(1421, {	-- The Lost Caravan
					["lvl"] = 30,
					["qg"] = 5476,	-- Watcher Biggs
				}),
				q(1423, {	-- The Lost Supplies
					["repeatable"] = true,
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["g"] = {
						i(6827),	-- Box of Supplies
					},
				}),
				q(2622, {	-- The Missing Orders
					["lvl"] = 45,
					["races"] = HORDE_ONLY,
					["qg"] = 7623,	-- Dispatch Commander Ruag
				}),
				q(2623, {	-- The Swamp Talker
					["qg"] = 7643,	-- Bengor
					["races"] = HORDE_ONLY,
					["lvl"] = 45,
				}),
				q(1422, {	-- Threat From the Sea
					["races"] = HORDE_ONLY,
					["lvl"] = 35,
				}),
				q(1426, {	-- Threat From the Sea
					["races"] = HORDE_ONLY,
					["lvl"] = 35,
				}),
				q(1427, {	-- Threat From the Sea
					["races"] = HORDE_ONLY,
					["lvl"] = 35,
					["g"] = {
						i(9680),	-- Tok'kar's Murloc Shanker
						i(9678),	-- Tok'kar's Murloc Basher
						i(9679),	-- Tok'kar's Murloc Chopper
					},
				}),
			}),
		}),
	}),
};