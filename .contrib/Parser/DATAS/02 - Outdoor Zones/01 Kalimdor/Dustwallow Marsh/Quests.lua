---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(DUSTWALLOW_MARSH, {
			n(QUESTS, {
				q(1258, {	-- ... and Bugs
					["qg"] = 4794,	-- Morgan Stern
					["coord"] = { 66.4, 45.5, DUSTWALLOW_MARSH },
					["maps"] = { SWAMP_OF_SORROWS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5938, 12 },	-- Pristine Crawler Leg
					},
					["lvl"] = 33,
					["g"] = {
						i(6801),	-- Baroque Apron
					},
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
				q(4961, {	-- Cleansing of the Orb of Orahil
					["lvl"] = 40,
					["classes"] = { WARLOCK },
					["qg"] = 6546,	-- Tabetha
					["sourceQuest"] = 1799,	-- Fragments of the Orb of Orahil
				}),
				q(1285, {	-- Daelin's Men
					["qg"] = 4948,	-- Adjutant Tesoran
					["coord"] = { 68.0, 48.1, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(1205, {	-- Deadmire
					["qg"] = 3441,	-- Melor Stonehoof
					["coord"] = { 61.52, 80.88, THUNDER_BLUFF },
					["maps"] = { THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5945, 1 },	-- Deadmire's Tooth
					},
					["lvl"] = 35,
					["groups"] = {
						{
							["itemID"] = 5945,	-- Deadmire's Tooth
							["questID"] = 1205,	-- Deadmire
							["cr"] = 4841,	-- Deadmire
							["coord"] = { 47.6, 56.6, DUSTWALLOW_MARSH },
						},
					},
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
					["qg"] = 4503,	-- Mudcrush Durtfeet
					["coord"] = { 35.2, 38.3, DUSTWALLOW_MARSH },
					["cost"] = {
						{ "i", 5847, 12 },	-- Mirefin Head
					},
					["lvl"] = 32,
					["g"] = {
						i(9518),	-- Mud's Crushers
						i(9519),	-- Durtfeet Stompers
					},
				}),
				q(8970, {	-- I See Alcaz Island In Your Future...
					["cost"] = {
						{ "i", 22094, 20 },	-- Bloodkelp
					},
					["lvl"] = 58,
					["u"] = 3,	-- Added in later phase
				}),
				q(1169, {	-- Identifying the Brood
					["qg"] = 4501,	-- Draz'Zilb
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5840, 15 },	-- Searing Tongue 
						{ "i", 5841, 15 },	-- Searing Heart 
					},
					["lvl"] = 38,
					["g"] = {
						i(9703),	-- Scorched Cape
						i(9704),	-- Rustler Gloves
					},
				}),
				q(1169, {	-- Items of Power
					["qg"] = 6546,	-- Tabetha
					["sourceQuest"] = 1951,	-- Rituals of Power
					["coord"] = { 46.0, 57.0, DUSTWALLOW_MARSH },
					["maps"] = { ARATHI_HIGHLANDS, DUSTWALLOW_MARSH },
					["classes"] = { MAGE },
					["cost"] = {
						{ "i", 7272, 1 },	-- Bolt Charged Bramble
						{ "i", 1529, 1 },	-- Jade
						{ "i", 7516, 1 },	-- Tabetha's Instructions
						{ "i", 7273, 10 },	-- Witherbark Totem Stick
					},
					["lvl"] = 30,
				}),
				q(1206, {	-- Jarl Needs Eyes
					["qg"] = 4792,	-- "Swamp Eye" Jarl
					["coord"] = { 55.4, 26.3, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5884, 40 },	-- Unpopped Darkmist Eye
					},
					["lvl"] = 30,
				}),
				q(1203, {	-- Jarl Needs a Blade
					["qg"] = 4792,	-- "Swamp Eye" Jarl
					["coord"] = { 55.4, 26.3, DUSTWALLOW_MARSH },
					["lvl"] = 30,
					["g"] = {
						i(9622),	-- Reedknot Ring
						i(5016),	-- Artisan's Trousers
					},
				}),
				q(1281, {	-- Jim's Song <CHANGE TO GOSSIP>
					["lvl"] = 30,
					["u"] = 1,
				}),
				q(1133, {	-- Journey to Astranaar
					["qg"] = 4456,	-- Fiora Longears
					["sourceQuest"] = 1132,	-- Fiora Longears
					["coord"] = { 66.4, 45.2, DUSTWALLOW_MARSH },
					["maps"] = { ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
				}),
				q(1269, {	-- Lieutenant Paval Reethe
					["lvl"] = 30,
					["races"] = HORDE_ONLY,
					["provider"] = { "o", 21042 },	-- Theramore Guard Badge
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
					["provider"] = { "o", 21042 },	-- Theramore Guard Badge
				}),
				q(1169, {	-- Items of Power
					["qg"] = 6546,	-- Tabetha
					["sourceQuest"] = 1169,	-- Items of Power
					["coord"] = { 46.0, 57.0, DUSTWALLOW_MARSH },
					["classes"] = { MAGE },
					["lvl"] = 30,
					["groups"] = {
						i(7514),	-- Icefury Wand
						i(11263),	-- Nether Force Wand
						i(7513),	-- Ragefire Wand
					},
				}),
				q(1261, {	-- Marg Speaks
					["provider"] = { "o", 2076 },	-- Bubbling Cauldron
					["sourceQuest"] = 1240,	-- The Troll Witchdoctor
					["coord"] = { 32.2, 27.7, STRANGLETHORN_VALE },
					["maps"] = { STRANGLETHORN_VALE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5942, 1 },	-- Jeweled Pendant
					},
					["lvl"] = 30,
				}),
				q(1260, {	-- Morgan Stern
					["lvl"] = 33,
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["qg"] = 1141,	-- Angus Stern
				}),
				q(1204, {	-- Mudrock Soup and Bugs
					["qg"] = 4794,	-- Morgan Stern
					["coord"] = { 66.4, 45.5, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5883, 8 },	-- Forked Mudrock Tongue
					},
					["lvl"] = 33,
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
				q(4976, {	-- Returning the Cleansed Orb
					["lvl"] = 40,
					["classes"] = { WARLOCK },
					["qg"] = 6546,	-- Tabetha
					["sourceQuest"] = 4961,	-- Cleansing of the Orb of Orahil
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
					["provider"] = { "o", 21016 },	-- Hoofprints
					["coord"] = { 29.7, 47.6, DUSTWALLOW_MARSH },
				}),
				q(1284, {	-- Suspicious Hoofprints
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["providers"] = { 
						{ "o", 21015 },	-- Hoofprints
						{ "o", 21016 },	-- Hoofprints
					},
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
				q(1253, {	-- The Black Shield (1/3)
					["provider"] = { "o", 20992 },	-- Black Shield
					["coord"] = { 29.6, 48.5, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5919, 1 },	-- Blackened Iron Shield
					},
					["lvl"] = 30,
				}),
				q(1319, {	-- The Black Shield (2/3)
					["qg"] = 4944,	-- Captain Garran Vimes
					["sourceQuest"] = 1253,	-- The Black Shield (1/3)
					["coord"] = { 68.2, 48.6, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5919, 1 },	-- Blackened Iron Shield
					},
					["lvl"] = 30,
				}),
				q(1320, {	-- The Black Shield (3/3)
					["qg"] = 4941,	-- Caz Twosprocket
					["sourceQuest"] = 1319,	-- The Black Shield (2/3)
					["coord"] = { 64.6, 50.4, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(1251, {	-- The Black Shield (1/5)
					["provider"] = { "o", 20992 },	-- Black Shield
					["coord"] = { 29.6, 48.5, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5919, 1 },	-- Blackened Iron Shield
					},
					["lvl"] = 30,
				}),
				q(1321, {	-- The Black Shield (2/5)
					["qg"] = 4926,	-- Krog
					["sourceQuest"] = 1251,	-- The Black Shield (1/5)
					["coord"] = { 36.4, 31.8, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5919, 1 },	-- Blackened Iron Shield
					},
					["lvl"] = 30,
				}),
				q(1322, {	-- The Black Shield (3/5)
					["qg"] = 5087,	-- Do'gol
					["sourceQuest"] = 1321,	-- The Black Shield (2/5)
					["coord"] = { 36.4, 30.8, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5959, 6 },	-- Acidic Venom Sac
					},
					["lvl"] = 30,
				}),
				q(1323, {	-- The Black Shield (4/5)
					["qg"] = 5087,	-- Do'gol
					["sourceQuest"] = 1322,	-- The Black Shield (3/5)
					["coord"] = { 36.4, 30.8, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(1276, {	-- The Black Shield (5/5)
					["qg"] = 4926,	-- Krog
					["sourceQuest"] = 1323,	-- The Black Shield (4/5)
					["coord"] = { 36.4, 31.8, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5919, 1 },	-- Blackened Iron Shield
					},
					["lvl"] = 30,
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
				q(1954, {	-- The Infernal Orb
					["qg"] = 6546,	-- Tabetha
					["sourceQuest"] = 1953,	-- Return to the Marsh
					["coord"] = { 46.0, 57.0, DUSTWALLOW_MARSH },
					["maps"] = { DESOLACE },
					["classes"] = { MAGE },
					["cr"] = 4668,	-- Burning Blade Summoner
					["cost"] = {
						{ "i", 7291, 1 },	-- 	Infernal Orb
					},
					["lvl"] = 35,
				}),
				q(1238, {	-- The Lost Report
					["lvl"] = 30,
					["races"] = HORDE_ONLY,
					["provider"] = { "o", 20985 },	-- Loose Dirt
				}),
				q(1265, {	-- The Missing Diplomat (14/17)
					["lvl"] = 28,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 4964,	-- Commander Samaul
					["maps"] = { STORMWIND_CITY },
					["coord"] = { 68.0, 48.6, DUSTWALLOW_MARSH },
					["description"] = "This is part of a quest chain that begins in Stormwind City.",
					["sourceQuest"] = 1264,
				}),
				q(1266, {	-- The Missing Diplomat (15/17)
					["qg"] = 4967,	-- Archmage Tervosh
					["sourceQuest"] = 1265,
					["coord"] = { 66.4, 49.3, DUSTWALLOW_MARSH },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1324, {	-- The Missing Diplomat (16/17)
					["qg"] = 4966,	-- Private Hendel
					["sourceQuest"] = 1266,
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1267, {	-- The Missing Diplomat (17/17)
					["qg"] = 4968,	-- Lady Jaina Proudmoore
					["sourceQuest"] = 1324,	-- The Missing Diplomat (16/17)
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1219, {	-- The Orc Report
					["provider"] = { "o", 20985 },	-- Loose Dirt
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(1239, {	-- The Severed Head
					["provider"] = { "o", 20985 },	-- Loose Dirt
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(1202, {	-- The Theramore Docks
					["qg"] = 4791,	-- Nazeer Bloodpike
					["sourceQuest"] = 1201,	-- Theramore Spies
					["coord"] = { 35.2, 30.6, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5882, 1 },	-- Captain's Documents
					},
					["lvl"] = 30,
					["groups"] = {
						{
							["itemID"] = 5882,	-- Captain's Documents
							["questID"] = 1202,	-- The Theramore Docks
							["coord"] = { 71.5, 51.1, DUSTWALLOW_MARSH },
						},
					},
				}),
				q(1240, {	-- The Troll Witchdoctor
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(1201, {	-- Theramore Spies
					["qg"] = 4791,	-- Nazeer Bloodpike
					["coord"] = { 35.2, 30.6, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(1282, {	-- They Call Him Smiling Jim
					["qg"] = 4921,	-- Guard Byron
					["altQuests"] = { 1302 },	-- James Hyal
					["coord"] = { 66.2, 46.1, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(1288, {	-- Vimes's Report
					["lvl"] = 30,
					["u"] = 1,
				}),
			}),
		}),
	}),
};