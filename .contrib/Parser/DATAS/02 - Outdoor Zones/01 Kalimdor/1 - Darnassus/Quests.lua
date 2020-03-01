---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(DARNASSUS, {
			n(QUESTS, {
				q(7799, {	-- A Donation of Mageweave
					["qg"] = 14725,	-- Raedon Duskstriker
					["cost"] = { { "i", 4338, 60 } },	-- Mageweave Cloth
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
					["coord"] = { 64.0, 23.0, DARNASSUS },
				}),
				q(7800, {	-- A Donation of Runecloth
					["qg"] = 14725,	-- Raedon Duskstriker
					["cost"] = { { "i", 14047, 60 } },	-- Runecloth
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
					["coord"] = { 64.0, 23.0, DARNASSUS },
				}),
				q(7798, {	-- A Donation of Silk
					["qg"] = 14725,	-- Raedon Duskstriker
					["cost"] = { { "i", 4306, 60 } },	-- Silk Cloth
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 26,
					["coord"] = { 64.0, 23.0, DARNASSUS },
				}),
				q(7792, {	-- A Donation of Wool
					["qg"] = 14725,	-- Raedon Duskstriker
					["cost"] = { { "i", 2592, 60 } },	-- Wool Cloth
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
					["coord"] = { 64.0, 23.0, DARNASSUS },
				}),
				q(7801, {	-- Additional Runecloth
					["qg"] = 14725,	-- Raedon Duskstriker
					["sourceQuest"] = 7800,	-- A Donation of Runecloth
					["cost"] = { { "i", 14047, 20 } },	-- Runecloth
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 50,
					["coord"] = { 64.0, 23.0, DARNASSUS },
				}),
				q(8233, {	-- A Simple Request
					["qg"] = 4163,	-- Syurna <Rogue Trainer>
					["coord"] = { 36.8, 21.8, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["lvl"] = 50,
				}),
				q(3763, {	-- Assisting Arch Druid Staghelm
					["lvl"] = 47,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 6735,	-- Innkeeper Saelienne
					["coord"] = { 67.4, 15.7, DARNASSUS },
				}),
				q(8417, {	-- A Troubled Spirit
					["qg"] = 7315,	-- Darnath Bladesinger <Warrior Trainer>
					["coord"] = { 58.6, 35.6, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 50,
				}),
				{
					["questID"] = 4510,	-- Calm Before the Storm (2/2)
					["sourceQuest"] = 4508,	-- Calm Before the Storm (1/2)
					["qg"] = 7740,	-- Gracina Spiritmight
					["coord"] = { 42.0, 85.8, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
					["groups"] = {
						i(11870),	-- Oblivion Orb
						i(11871),	-- Snarkshaw Spaulders
						i(11872),	-- Eschewal Greaves
					},
				},
				q(2242, {	-- Destiny Calls
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["qg"] = 4163,	-- Syurna
					["sourceQuest"] = 2241,	-- The Apple Falls
					["g"] = {
						i(7298),	-- Blade of Cunning
					},
					["coord"] = { 37.0, 21.9, DARNASSUS },
					["description"] = "Enter the base of the tree at 32.7, 16.3 to get to the quest giver.",
				}),
				q(2260, {	-- Erion's Behest
					["lvl"] = 16,
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["qg"] = 4214,	-- Erion Shadewhisper
					["sourceQuest"] = 2259,	-- Erion Shadewhisper
					["isBreadcrumb"] = true,
				}),
				q(952, {	-- Grove of the Ancients
					["qg"] = 3516,	-- Arch Druid Fandral Staghelm
					["sourceQuest"] = 940,	-- Teldrassil
					["coord"] = { 34.8, 8.8, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5390, 1 },	-- Fandral's Message
					},
					["lvl"] = 6,
				}),
				q(6121, {	-- Lessons Anew
					["qg"] = 4217,	-- Mathrengyl Bearwalker <Druid Trainer>
					["coord"] = { 35.2, 8.0, DARNASSUS },
					["maps"] = { DARKSHORE, MOONGLADE },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DRUID },
					["lvl"] = 14,
				}),
				q(4493, {	-- March of the Silithid
					["lvl"] = 50,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 7740,	-- Gracina Spiritmight
				}),
				q(3781, {	-- Morrowgrain Research
					["lvl"] = 47,
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(11022),	-- Packet of Tharlendris Seeds
					},
				}),
				q(3785, {	-- Morrowgrain Research
					["lvl"] = 47,
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(11887),	-- Cenarion Circle Cache
					},
				}),
				q(3803, {	-- Morrowgrain to Darnassus
					["lvl"] = 47,
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["g"] = {
						i(11887),	-- Cenarion Circle Cache
					},
				}),
				q(3792, {	-- Morrowgrain to Feathermoon Stronghold
					["lvl"] = 47,
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["g"] = {
						i(11022),	-- Packet of Tharlendris Seeds
					},
				}),
				q(6344, {	-- Nessa Shadowsong
					["qg"] = 4241,	-- Mydrannul
					["coord"] = { 70.6, 45.3, DARNASSUS },
					["races"] = { NIGHTELF },
					["lvl"] = 10,
				}),
				q(6762, {	-- Rabine Saturna
					["lvl"] = 54,
					["races"] = ALLIANCE_ONLY,
				}),
				q(2498, {	-- Return to Denalan
					["lvl"] = 4,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3517,	-- Rellian Greenspyre
					["sourceQuest"] = 923,	-- Tumors
				}),
				q(2520, {	-- Sathrah's Sacrifice
					["lvl"] = 5,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 7313,	-- Priestess A'moora
					["sourceQuest"] = 1150,	-- Tears of the Moon
					["g"] = {
						i(9600),	-- Lace Pants
						i(9601),	-- Cushioned Boots
					},
				}),
				q(1692, {	-- Smith Mathiel
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 4088,	-- Elanaria
					["classes"] = { WARRIOR },
					["sourceQuest"] = 1686,	-- The Shade of Elura
					["cost"] = { 
						{ "i", 6812, 1 },	-- Case of Elunite
					},
				}),
				q(1710, {	-- Klockmort's Creation
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["qg"] = 6142,	-- Mathiel
					["sourceQuest"] = 1703,	-- Mathiel
				}),
				q(1711, {	-- Mathiel's Armor
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["qg"] = 6142,	-- Mathiel
					["sourceQuest"] = 1710,	-- Sunscorched Shells
					["groups"] = {
						i(6973),	-- Fire hardened Leggings
					},
				}),
				q(2518, {	-- Tears of the Moon
					["lvl"] = 5,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 7313,	-- Priestess A'moora
					["sourceQuest"] = 2519,	-- The Temple of the Moon
				}),
				q(942, {	-- The Absent Minded Prospector (4/5)
					["qg"] = 2912,	-- Chief Archaeologist Greywhisker
					["sourceQuest"] = 741,	-- The Absent Minded Prospector (3/5) (Darkshore)
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 4654, 1 },	-- Mysterious Fossil
					},
					["lvl"] = 15,
				}),
				q(1039, {	-- The Barrens Port
					["qg"] = 8026,	-- Thyn'tel Bladeweaver
					["sourceQuest"] = 1038,	-- Velinde's Effects
					["coord"] = { 61.8, 39.4, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
				}),
				q(6071, {	-- The Hunter's Path
					["qg"] = 4146,	-- Jocaste <Hunter Trainer>
					["coord"] = { 25.6, 48.72, TELDRASSIL },
					["maps"] = { TELDRASSIL },
					["races"] = { NIGHTELF },
					["classes"] = { HUNTER },
					["isBreadcrumb"] = true,
					["altQuests"] = {
						6071,	-- The Hunter's Path
						6072,	-- The Hunter's Path
						6073,	-- The Hunter's Path
						6721,	-- The Hunter's Path
						6722,	-- The Hunter's Path
					},
					["lvl"] = 10,
				}),
				q(8151, {	-- The Hunter's Charm
					["qg"] = 4205,	-- Dorion <Hunter Trainer>
					["coord"] = { 42.2, 7.6, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { HUNTER },
					["lvl"] = 50,
				}),
				q(6073, {	-- The Hunter's Path
					["qg"] = 4205,	-- Dorion <Hunter Trainer>
					["coord"] = { 25.98, 48.45, TELDRASSIL },
					["maps"] = { TELDRASSIL },
					["races"] = { NIGHTELF },
					["classes"] = { HUNTER },
					["isBreadcrumb"] = true,
					["altQuests"] = {
						6071,	-- The Hunter's Path
						6072,	-- The Hunter's Path
						6073,	-- The Hunter's Path
						6721,	-- The Hunter's Path
						6722,	-- The Hunter's Path
					},
					["lvl"] = 10,
				}),
				q(3791, {	-- The Mystery of Morrowgrain
					["lvl"] = 47,
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(11888),	-- Quintis' Research Gloves
						i(11889),	-- Bark Iron Pauldrons
					},
				}),
				q(1047, {	-- The New Frontier
					["lvl"] = 54,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 10878,	-- Herald Moonstalker
					["description"] = "Quest giver walks around Darnassus on the main path.",
				}),
				q(6761, {	-- The New Frontier
					["lvl"] = 54,
					["races"] = ALLIANCE_ONLY,
				}),
				q(1686, {	-- The Shade of Elura
					["qg"] = 4088,	-- Elanaria
					["sourceQuest"] = 1683,	-- Vorlus Vilehoof
					["coord"] = { 57.8, 34.4, DARNASSUS },
					["maps"] = { DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["cost"] = { 
						{ "i", 6808, 8 },	-- Elunite Ore
						{ "i", 6809, 1 },	-- Elura's Medallion
					},
					["lvl"] = 10,
					["groups"] = {
						{
							["itemID"] = 6809,	-- Elura's Medallion
							["questID"] = 1686,	-- The Shade of Elura
							["coord"] = { 31.6, 44.8, DARKSHORE },
							["cr"] = 6133,	-- Shade of Elura
						},
					},
				}),
				q(2519, {	-- The Temple of the Moon
					["lvl"] = 5,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 7316,	-- Sister Aquinne
					["isBreadcrumb"] = true,
				}),
				q(9063, {	-- Torwa Pathfinder
					["qg"] = 4218,	-- Denatharion <Druid Trainer>
					["coord"] = { 34.8, 8.6, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DRUID },
					["lvl"] = 50,
				}),
				q(730, {	-- Trouble In Darkshore?
					["qg"] = 2912,	-- Chief Archaeologist Greywhisker
					["coord"] = { 31.2, 84.2, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 14,
				}),
				q(923, {	-- Tumors
					["lvl"] = 4,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3517,	-- Rellian Greenspyre
					["sourceQuest"] = 922,	-- Rellian Greenspyre
					["g"] = {
						i(5605),	-- Pruning Knife
					},
					["coord"] = { 38.2, 21.6, DARNASSUS },
				}),
				q(3764, {	-- Un'Goro Soil
					["lvl"] = 47,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3516,	-- Arch Druid Fandral Staghelm
					["coord"] = { 35.2, 9.0, DARNASSUS },
				}),
				q(1038, {	-- Velinde's Effects
					["qg"] = 8026,	-- Thyn'tel Bladeweaver
					["sourceQuest"] = 1037,	-- Velinde Starsong (Ashenvale)
					["coord"] = { 61.8, 39.4, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5521, 1 },	-- Velinde's Key
						{ "i", 5520, 1 },	-- Velinde's Journal
					},
					["lvl"] = 25,
					["groups"] = {
						{
							["itemID"] = 5520,	-- Velinde's Journal
							["questID"] = 1038,	-- Velinde's Effects
							["provider"] = { "o", 19877 },	-- Velinde's Locker
							["coord"] = { 62.5, 83.1, DARNASSUS },
						},
					},
				}),
				q(1683, {	-- Vorlus Vilehoof
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 4088,	-- Elanaria
					["classes"] = { WARRIOR },
					["cost"] = {
						{ "i", 6805, 1 } -- Horn of Vorlus
					},
				}),
				q(1693, {	-- Weapons of Elunite
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["qg"] = 6142,	-- Mathiel
					["sourceQuest"] = 1692,	-- Smith Mathiel
					["g"] = {
						i(6966),	-- Elunite Axe
						i(6967),	-- Elunite Sword
						i(6968),	-- Elunite Hammer
						i(6969),	-- Elunite Dagger
					},
				}),
			}),
		}),
	}),
};