---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(SWAMP_OF_SORROWS, {
			n(QUESTS, {
				q(2801, {	-- A Tale of Sorrow
					["qg"] = 7572,	-- Fallen Hero of the Horde
					["sourceQuests"] = {
						2623,	-- The Swamp Talker (H)
						2783,	-- Petty Squabbles (A)
					},
					["coord"] = { 34.3, 66.2, SWAMP_OF_SORROWS },
					["lvl"] = 45,
				}),
				q(8417, {	-- A Troubled Spirit
					["qgs"] = {
						7315,	-- Darnath Bladesinger <Warrior Trainer> (Darnassus)
						3354,	-- Sorek <Warrior Trainer> (Orgrimmar)
						3041,	-- Torm Ragetotem <Warrior Trainer> (Thunder Bluff)
						5113,	-- Kelv Sternhammer <Warrior Trainer> (Ironforge)
						5479,	-- Wu Shen <Warrior Trainer> (Stormwind City)
						4593,	-- Christoph Walker <Warrior Trainer> (Undercity)
					},
					["coords"] = {
						{ 58.6, 35.6, DARNASSUS },
						{ 80.2, 32.4, ORGRIMMAR },
						{ 57.6, 87.2, THUNDER_BLUFF },
						{ 70.6, 90.6, IRONFORGE },
						{ 78.8, 45.6, STORMWIND_CITY },
						{ 47.8, 14.8, UNDERCITY },
					},
					["maps"] = {
						DARNASSUS,
						ORGRIMMAR,
						THUNDER_BLUFF,
						IRONFORGE,
						STORMWIND_CITY,
						UNDERCITY,
					},
					["classes"] = { WARRIOR },
					["lvl"] = 50,
					["isBreadcrumb"] = true,
				}),
				q(1428, {	-- Continued Threat
					["races"] = HORDE_ONLY,
					["lvl"] = 35,
				}),
				q(1425, {	-- Deliver the Shipment
					["qg"] = 5476,	-- Watcher Biggs
					["sourceQuest"] = 1398,	-- Driftwood
					["coord"] = { 26.8, 59.8, SWAMP_OF_SORROWS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 6178, 1 },	-- Shipment to Nethergarde
					},
					["lvl"] = 30,
				}),
				q(1389, {	-- Draenethyst Crystals
					["qg"] = 1776,	-- Magtoor
					["coord"] = { 26.0, 31.4, SWAMP_OF_SORROWS },
					["cost"] = {
						{ "i", 6071, 6 },	-- Draenethyst Crystal
					},
					["lvl"] = 30,
				}),
				q(1398, {	-- Driftwood
					["qg"] = 5476,	-- Watcher Biggs
					["sourceQuest"] = 1421,	-- The Lost Caravan
					["coord"] = { 26.8, 59.8, SWAMP_OF_SORROWS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 6146, 8 },	-- Wizards' Reagents
					},
					["lvl"] = 30,
				}),
				q(1396, {	-- Encroaching Wildlife
					["qg"] = 5476,	-- Watcher Biggs
					["coord"] = { 26.8, 59.8, SWAMP_OF_SORROWS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(2784, {	-- Fall From Grace
					["qg"] = 7572,	-- Fallen Hero of the Horde
					["coord"] = { 34.3, 66.2, SWAMP_OF_SORROWS },
					["races"] = HORDE_ONLY,
					["lvl"] = 45,
				}),
				q(1430, {	-- Fresh Meat
					["qg"] = 5591,	-- Dar
					["coord"] = { 44.8, 57.2, SWAMP_OF_SORROWS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 6184, 10 },	-- 6184
					},
					["lvl"] = 35,
					["g"] = {
						i(9681),	-- Grilled King Crawler Legs
						i(9682),	-- Leather Chef's Belt
					},
				}),
				q(1393, {	-- Galen's Escape
					["qg"] = 5391,	-- Galen Goodward
					["coord"] = { 65.4, 18.1, SWAMP_OF_SORROWS },
					["lvl"] = 30,
					["g"] = {
						i(6828),	-- Visionary Buckler
					},
				}),
				q(2702, {	-- Heroes of Old
					["qg"] = 7572,	-- Fallen Hero of the Horde
					["sourceQuest"] = 2681,	-- The Stones That Bind Us
					["coord"] = { 34.3, 66.2, SWAMP_OF_SORROWS },
					["lvl"] = 45,
				}),
				q(2701, {	-- Heroes of Old
					["qg"] = 7750,	-- Corporal Thund Splithoof
					["sourceQuest"] = 2702,	-- Heroes of Old
					["lvl"] = 45,
					["g"] = {
						i(10659),	-- Shard of Afrasa
					},
				}),
				q(2721, {	-- Kirith
					["qg"] = 7572,	-- Fallen Hero of the Horde
					["sourceQuest"] = 2701,	-- Heroes of Old
					["coord"] = { 34.3, 66.2, SWAMP_OF_SORROWS },
					["maps"] = { BLASTED_LANDS },
					["lvl"] = 45,
				}),
				q(698, {	-- Lack of Surplus
					["qg"] = 5591,	-- Dar
					["coord"] = { 44.8, 57.2, SWAMP_OF_SORROWS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 6169, 8 },	-- Unprepared Sawtooth Flank
					},
					["lvl"] = 35,
				}),
				q(699, {	-- Lack of Surplus
					["qg"] = 5592,	-- Tok'Kar
					["coord"] = { 81.4, 80.8, SWAMP_OF_SORROWS },
					["sourceQuest"] = 698,	-- Lack of Surplus
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 6168, 6 },	-- Sawtooth Snapper Claw
					},
					["lvl"] = 35,
				}),
				q(1363, {	-- Mazen's Behest
					["qg"] = 338,	-- Mazen Mac'Nadir
					["coord"] = { 41.4, 64.2, STORMWIND_CITY },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 37,
				}),
				q(1364, {	-- Mazen's Behest
					["qg"] = 5386,	-- Acolyte Dellis
					["sourceQuest"] = 1363,	-- Mazen's Behest
					["coord"] = { 40.8, 64, STORMWIND_CITY },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 6065, 1 },	-- Khadgar's Essays on Dimensional Convergence
					},
					["lvl"] = 37,
					["g"] = {
						i(10747),	-- Teacher's Sash
						i(10748),	-- Wanderlust Boots
					},
				}),
				q(1418, {	-- Neeka Bloodscar
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 30,
				}),
				q(1392, {	-- Noboru the Cudgel
					["provider"] = { "i", 6196 },	-- Noboru's Cudgel
					["cr"] = 5477,	-- Noboru the Cudgel
					["lvl"] = 29,
				}),
				q(2744, {	-- The Demon Hunter
					["qg"] = 7572,	-- Fallen Hero of the Horde
					["sourceQuest"] = 2743,	-- The Cover of Darkness
					["coord"] = { 34.3, 66.2, SWAMP_OF_SORROWS },
					["lvl"] = 45,
				}),
				q(2621, {	-- The Disgraced One
					["qg"] = 7572,	-- Fallen Hero of the Horde
					["sourceQuest"] = 2784,	-- Fall From Grace
					["coord"] = { 34.3, 66.2, SWAMP_OF_SORROWS },
					["races"] = HORDE_ONLY,
					["lvl"] = 45,
				}),
				q(1421, {	-- The Lost Caravan
					["qg"] = 5476,	-- Watcher Biggs
					["sourceQuest"] = 1396,	-- Encroaching Wildlife
					["coord"] = { 26.8, 59.8, SWAMP_OF_SORROWS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 6170, 1 },	-- Wizards' Reagents
					},
					["lvl"] = 30,
				}),
				q(1423, {	-- The Lost Supplies
					["provider"] = { "i", 6172 },	-- Lost Supplies
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 6172, 1 },	-- Lost Supplies
					},
					["lvl"] = 30,
					["g"] = {
						i(6827),	-- Box of Supplies
					},
				}),
				q(2622, {	-- The Missing Orders
					["qg"] = 7623,	-- Dispatch Commander Ruag
					["coord"] = { 47.8, 55, SWAMP_OF_SORROWS },
					["races"] = HORDE_ONLY,
					["lvl"] = 45,
				}),
				q(2681, {	-- The Stones That Bind Us
					["sourceQuest"] = 2801,	-- A Tale of Sorrow
					["qg"] = 7572,	-- Fallen Hero of the Horde
					["coord"] = { 34.3, 66.2, SWAMP_OF_SORROWS },
					["maps"] = { BLASTED_LANDS },
					["lvl"] = 45,
				}),
				q(2623, {	-- The Swamp Talker
					["qg"] = 7643,	-- Bengor
					["sourceQuest"] = 2622,	-- The Missing Orders
					["coord"] = { 45, 57.2, SWAMP_OF_SORROWS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 8463, 1 },	-- Warchief's Orders
					},
					["lvl"] = 45,
					["groups"] = {
						{
							["itemID"] = 8463,	-- Warchief's Orders
							["questID"] = 2623,	-- The Swamp Talker
							["cr"] = 950,	-- Swamp Talker
							["coord"] = { 63.8, 83.6, SWAMP_OF_SORROWS },
						},
					},
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
				q(3627, {	-- Uniting the Shattered Amulet
					["sourceQuest"] = 3626,	-- Return to the Blasted Lands
					["qg"] = 7572,	-- Fallen Hero of the Horde
					["cost"] = {
						{ "i", 10755, 1 },	-- Amulet of Allistarj
						{ "i", 10753, 1 },	-- Amulet of Grol
						{ "i", 10754, 1 },	-- Amulet of Sevine
					},
					["coord"] = { 34.3, 66.2, SWAMP_OF_SORROWS },
					["maps"] = { BLASTED_LANDS },
					["lvl"] = 45,
					["groups"] = {
						{
							["itemID"] = 10755,	-- Amulet of Allistarj
							["cr"] = 7666,	-- Archmage Allistarj
							["questID"] = 3627,	-- Uniting the Shattered Amulet
							["coord"] = { 66.8, 29.6, BLASTED_LANDS },
						},
						{
							["itemID"] = 10753,	-- Amulet of Grol
							["cr"] = 7665,	-- Grol the Destroyer
							["questID"] = 3627,	-- Uniting the Shattered Amulet
							["coord"] = { 43.0, 12.8, BLASTED_LANDS },
						},
						{
							["itemID"] = 10754,	-- Amulet of Sevine
							["cr"] = 7667,	-- Lady Sevine
							["questID"] = 3627,	-- Uniting the Shattered Amulet
							["coord"] = { 40.6, 30.2, BLASTED_LANDS },
						},
					},
				}),
				q(8424, {	-- War on the Shadowsworn
					["qg"] = 7572,	-- Fallen Hero of the Horde
					["sourceQuest"] = 8423,	-- Warrior Kinship
					["coord"] = { 34.3, 66.2, SWAMP_OF_SORROWS },
					["classes"] = { WARRIOR },
					["lvl"] = 50,
				}),
				q(8423, {	-- Warrior Kinship
					["qg"] = 7572,	-- Fallen Hero of the Horde
					["sourceQuest"] = 8417,	-- A Troubled Spirit
					["coord"] = { 34.3, 66.2, SWAMP_OF_SORROWS },
					["classes"] = { WARRIOR },
					["lvl"] = 50,
				}),
			}),
		}),
	}),
};