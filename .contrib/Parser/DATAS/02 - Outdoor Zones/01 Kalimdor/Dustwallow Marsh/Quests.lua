---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {	-- Kalimdor
		m(DUSTWALLOW_MARSH, {	-- Dustwallow Marsh
			n(-17, {	-- Quests
				q(1258, {	-- ... and Bugs
					["lvl"] = 33,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 4794,	-- Morgan Stern
					["g"] = {
						i(6801),	-- Baroque Apron
					},
					["coord"] = { 66.4, 45.5, DUSTWALLOW_MARSH },
				}),
				q(1168, {	-- Army of the Black Dragon
					["qg"] = 4502,	-- Tharg
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
					["g"] = {
						i(9705),	-- Tharg's Shoelace
						i(9706),	-- Tharg's Disk
					},
				}),
				q(1220, {	-- Captain Vimes
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 4947,	-- Theramore Lieutenant
					["coords"] = { 
						{ 68.1, 48.2, DUSTWALLOW_MARSH},
						{ 67.2, 51.0, DUSTWALLOW_MARSH},
						{ 65.1, 47.1, DUSTWALLOW_MARSH},
					},
				}),
				q(1173, {	-- Challenge Overlord Mok'Morokk
					["qg"] = 4500,	-- Overlord Mok'Morokk
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
					["g"] = {
						i(10703),	-- Fiendish Skiv
						i(10704),	-- Chillnail Splinter
					},
				}),
				q(1285, {	-- Daelin's Men
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 4948,	-- Adjutant Tesoran
					["coord"] = { 68.0, 48.1, DUSTWALLOW_MARSH },
				}),
				q(1205, {	-- Deadmire
					["qg"] = 3441,	-- Melor Stonehoof
					["races"] = HORDE_ONLY,
					["lvl"] = 35,
				}),
				q(1271, {	-- Feast at the Blue Recluse
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1141,	-- Angus Stern
					["g"] = {
						i(5951),	-- Moist Towelette
					},
					["sourceQuests"] = {
						1258,	-- ... and Bugs
						1222,	-- Stinky's Escape
					},
					["maps"] = { STORMWIND_CITY },
					["coord"] = { 41.4, 89.3, STORMWIND_CITY },
				}),
				q(1272, {	-- Finding Reethe <CHANGE INTO GOSSIP>
					["lvl"] = 30,
					["u"] = 1,
				}),
				q(1283, {	-- Fire at the Shady Rest <CHANGE TO GOSSIP>
					["lvl"] = 30,
					["u"] = 1,
				}),
				q(1135, {	-- Highperch Venom
					["lvl"] = 25,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 4456,	-- Fiora Longears
					["g"] = {
						i(6719),	-- Windborne Belt
					},
					["coord"] = { 66.5, 45.2, DUSTWALLOW_MARSH },
				}),
				q(1177, {	-- Hungry!
					["lvl"] = 32,
					["qg"] = 4503,	-- Mudcrush Durtfeet
					["g"] = {
						i(9518),	-- Mud's Crushers
						i(9519),	-- Durtfeet Stompers
					},
					["coord"] = { 35.2, 38.3, DUSTWALLOW_MARSH },
				}),
				q(8970, {	-- I See Alcaz Island In Your Future...
					["lvl"] = 58,
				}),
				q(1169, {	-- Identifying the Brood
					["lvl"] = 38,
					["qg"] = 4501,	-- Draz'Zilb
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5840, 15 }, -- Searing Tongue 
						{ "i", 5841, 15 }, -- Searing Heart 
					},
					["g"] = {
						i(9703),	-- Scorched Cape
						i(9704),	-- Rustler Gloves
					},
				}),
				q(1206, {	-- Jarl Needs Eyes
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 4792,	-- \"Swamp Eye\" Jarl
					["coord"] = { 55.4, 26.3, DUSTWALLOW_MARSH },
				}),
				q(1203, {	-- Jarl Needs a Blade
					["lvl"] = 30,
					["qg"] = 4792,	-- \"Swamp Eye\" Jarl
					["g"] = {
						i(9622),	-- Reedknot Ring
						i(5016),	-- Artisan's Trousers
					},
					["coord"] = { 55.4, 26.3, DUSTWALLOW_MARSH },
				}),
				q(1281, {	-- Jim's Song <CHANGE TO GOSSIP>
					["lvl"] = 30,
					["u"] = 1,
				}),
				q(1133, {	-- Journey to Astranaar
					["lvl"] = 18,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 4456,	-- Fiora Longears
				}),
				q(1269, {	-- Lieutenant Paval Reethe
					["lvl"] = 30,
					["races"] = HORDE_ONLY,
					--["objectID"] = 21042,	-- Theramore Guard Badge
				}),
				q(1259, {	-- Lieutenant Paval Reethe
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 4944,	-- Captain Garran Vimes
					["coord"] = { 68.2, 48.6, DUSTWALLOW_MARSH },
				}),
				q(1252, {	-- Lieutenant Paval Reethe
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					--["objectID"] = 21042,	-- Theramore Guard Badge
				}),
				q(1261, {	-- Marg Speaks
					["lvl"] = 30,
					["races"] = HORDE_ONLY,
					--["objectID"] = 2076,	-- Bubbling Cauldron
				}),
				q(1260, {	-- Morgan Stern
					["lvl"] = 33,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1141,	-- Angus Stern
				}),
				q(1204, {	-- Mudrock Soup and Bugs
					["lvl"] = 33,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 4794,	-- Morgan Stern
					["coord"] = { 66.4, 45.5, DUSTWALLOW_MARSH },
				}),
				q(1166, {	-- Overlord Mok'Morokk's Concern
					["qg"] = 4500,	-- Overlord Mok'Morokk
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
					["g"] = {
						i(10702),	-- Enormous Ogre Boots
					},
				}),
				q(1273, {	-- Questioning Reethe
					["qg"] = 4983,	-- Ogron
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["g"] = {
						i(6797),	-- Eyepoker
						i(6798),	-- Blasting Hackbut
					},
					["coord"] = { 40.9, 36.6, DUSTWALLOW_MARSH },
				}),
				q(1262, {	-- Report to Zor
					["lvl"] = 30,
					["races"] = HORDE_ONLY,
					["qg"] = 4791,	-- Nazeer Bloodpike
				}),
				q(7541, {	-- Service to the Horde
					["lvl"] = 30,
					["races"] = HORDE_ONLY,
					["qg"] = 4047,	-- Zor Lonetree
					["g"] = {
						i(18585),	-- Band of Allegiance
						i(18586),	-- Lonetree's Circle
					},
				}),
				q(1218, {	-- Soothing Spices
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 4792,	-- \"Swamp Eye\" Jarl
					["g"] = {
						i(6807),	-- Frog Leg Stew
					},
				}),
				q(1270, {	-- Stinky's Escape
					["lvl"] = 30,
					["races"] = HORDE_ONLY,
					["qg"] = 4880,	-- \"Stinky\" Ignatz
					["g"] = {
						i(3825),	-- Elixir of Fortitude
					},
					["coord"] = { 46.9, 17.5, DUSTWALLOW_MARSH },
				}),
				q(1222, {	-- Stinky's Escape
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 4880,	-- \"Stinky\" Ignatz
					["g"] = {
						i(3825),	-- Elixir of Fortitude
					},
					["coord"] = { 46.9, 17.5, DUSTWALLOW_MARSH },
				}),
				q(1268, {	-- Suspicious Hoofprints
					["lvl"] = 30,
					["races"] = HORDE_ONLY,
					["provider"] = { "o", 21016 },
					--["objectID"] = 21016,	-- Hoofprints
					["coord"] = { 29.7, 47.6, DUSTWALLOW_MARSH },
				}),
				q(1284, {	-- Suspicious Hoofprints
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qgs"] = {
					--["objectID"] = 21015,	-- Hoofprints
					--["objectID"] = 21016,	-- Hoofprints
					},
					["provider"] = { "o", 21015 },
					["coord"] = { 29.7, 47.6, DUSTWALLOW_MARSH },
				}),
				q(9065, {	-- The "Chow" Quest (123)aa
					["g"] = {
						i(159),	-- Refreshing Spring Water
						i(118),	-- Minor Healing Potion
					},
					["u"] = 1,
				}),
				q(1, {	-- The "Chow" Quest (123)aa
					["u"] = 1,
				}),
				q(1323, {	-- The Black Shield
					["lvl"] = 30,
					["races"] = HORDE_ONLY,
				}),
				q(1276, {	-- The Black Shield
					["qg"] = 4926,	-- Krog
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(1253, {	-- The Black Shield
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					--["objectID"] = 20992,	-- Black Shield
				}),
				q(1319, {	-- The Black Shield
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 4944,	-- Captain Garran Vimes
					["coord"] = { 68.2, 48.6, DUSTWALLOW_MARSH },
				}),
				q(1320, {	-- The Black Shield
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 4941,	-- Caz Twosprocket
				}),
				q(1322, {	-- The Black Shield
					["lvl"] = 30,
					["races"] = HORDE_ONLY,
					["qg"] = 5087,	-- Do'gol
				}),
				q(1321, {	-- The Black Shield
					["lvl"] = 30,
					["races"] = HORDE_ONLY,
					["qg"] = 4926,	-- Krog
				}),
				q(1251, {	-- The Black Shield
					["lvl"] = 30,
					["races"] = HORDE_ONLY,
					--["objectID"] = 20992,	-- Black Shield
				}),
				q(1170, {	-- The Brood of Onyxia
					["qg"] = 4501,	-- Draz'Zilb
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
				}),
				q(1171, {	-- The Brood of Onyxia
					["qg"] = 4500,	-- Overlord Mok'Morokk
					["sourceQuest"] = 1170,	-- The Brood of Onyxia
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
				}),
				q(1172, {	-- The Brood of Onyxia
					["qg"] = 4501,	-- Draz'Zilb
					["sourceQuest"] = 1171,	-- The Brood of Onyxia
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
					["g"] = {
						i(10700),	-- Encarmine Boots
						i(10701),	-- Boots of Zua'tec
					},
				}),
				q(1263, {	-- The Burning Inn <CHANGE TO GOSSIP>
					["lvl"] = 30,
					["u"] = 1,
				}),
				q(1287, {	-- The Deserters
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
				}),
				q(1286, {	-- The Deserters
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 4944,	-- Captain Garran Vimes
					["coord"] = { 68.2, 48.6, DUSTWALLOW_MARSH },
				}),
				q(1238, {	-- The Lost Report
					["lvl"] = 30,
					["races"] = HORDE_ONLY,
					--["objectID"] = 20985,	-- Loose Dirt
				}),
				q(1265, { -- The Missing Diplomat (14/17)
					["lvl"] = 28,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 4964, -- Commander Samaul
					["maps"] = { STORMWIND_CITY },
					["coord"] = { 68.0, 48.6, DUSTWALLOW_MARSH },
					["description"] = "This is part of a quest chain that begins in Stormwind City.",
					["sourceQuest"] = 1264,
				}),
				q(1266, { -- The Missing Diplomat (15/17)
					["lvl"] = 28,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 4967, -- Archmage Tervosh
					["maps"] = { STORMWIND_CITY },
					["description"] = "This is part of a quest chain that begins in Stormwind City. Archmage Tervosh is located at the top of the tower.",
					["sourceQuest"] = 1265,
					["coord"] = { 66.4, 49.3, DUSTWALLOW_MARSH },
				}),
				q(1324, { -- The Missing Diplomat (16/17)
					["lvl"] = 28,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 4966, -- Private Hendel
					["maps"] = { STORMWIND_CITY },
					["description"] = "This is part of a quest chain that begins in Stormwind City.",
					["sourceQuest"] = 1266,
				}),
				q(1267, { -- The Missing Diplomat (17/17)
					["lvl"] = 28,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 4968, -- Lady Jaina Proudmoore
					["maps"] = { STORMWIND_CITY },
					["description"] = "This is part of a quest chain that begins in Stormwind City.",
					["sourceQuest"] = 1324,
				}),
				q(1219, {	-- The Orc Report
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					--["objectID"] = 20985,	-- Loose Dirt
				}),
				q(1239, {	-- The Severed Head
					["lvl"] = 30,
					["races"] = HORDE_ONLY,
					--["objectID"] = 20985,	-- Loose Dirt
				}),
				q(1202, {	-- The Theramore Docks
					["lvl"] = 30,
					["races"] = HORDE_ONLY,
					["qg"] = 4791,	-- Nazeer Bloodpike
				}),
				q(1240, {	-- The Troll Witchdoctor
					["lvl"] = 30,
					["races"] = HORDE_ONLY,
				}),
				q(1201, {	-- Theramore Spies
					["lvl"] = 30,
					["races"] = HORDE_ONLY,
					["qg"] = 4791,	-- Nazeer Bloodpike
				}),
				q(1282, {	-- They Call Him Smiling Jim
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 4921,	-- Guard Byron
					["altQuests"] = { 1301 },	-- James Hyal
					["coord"] = { 66.2, 46.1, DUSTWALLOW_MARSH },
				}),
				q(1288, {	-- Vimes's Report
					["lvl"] = 30,
					["u"] = 1,
				}),
			}),
		}),
	}),
};