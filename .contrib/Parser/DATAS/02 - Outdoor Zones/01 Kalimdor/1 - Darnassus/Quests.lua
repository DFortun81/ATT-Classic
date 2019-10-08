---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {	-- Kalimdor
		m(DARNASSUS, {	-- Darnassus
			n(-17, {	-- Quests
				q(5091, {	-- A Call to Arms: The Plaguelands!
					["lvl"] = 50,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 10878,	-- Herald Moonstalker
					["description"] = "Quest giver walks around Darnassus on the main path.",
				}),
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
				q(3763, {	-- Assisting Arch Druid Staghelm
					["lvl"] = 47,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 6735,	-- Innkeeper Saelienne
					["coord"] = { 67.4, 15.7, DARNASSUS },
				}),
				q(4510, {	-- Calm Before the Storm
					["lvl"] = 50,
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(11870),	-- Oblivion Orb
						i(11871),	-- Snarkshaw Spaulders
						i(11872),	-- Eschewal Greaves
					},
				}),
				q(2242, {	-- Destiny Calls
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["classes"] = { 4 },	-- Rogue
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
					["classes"] = { 4 },	-- Rogue
					["qg"] = 4214,	-- Erion Shadewhisper
					["sourceQuest"] = 2259,	-- Erion Shadewhisper
					["isBreadcrumb"] = true,
				}),
				q(952, {	-- Grove of the Ancients
					["lvl"] = 6,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3516,	-- Arch Druid Fandral Staghelm
					["sourceQuest"] = 940,	-- Teldrassil
				}),
				q(3788, {	-- Jonespyre's Request
					["lvl"] = 47,
					["races"] = ALLIANCE_ONLY,
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
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["races"] = {
						4,	-- Night Elf
					},
					["qg"] = 4241,	-- Mydrannul
					["coord"] = { 70.6, 45.3, DARNASSUS },
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
				q(2518, {	-- Tears of the Moon
					["lvl"] = 5,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 7313,	-- Priestess A'moora
					["sourceQuest"] = 2519,	-- The Temple of the Moon
				}),
				q(942, {	-- The Absent Minded Prospector
					["lvl"] = 15,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2912,	-- Chief Archaeologist Greywhisker
					["sourceQuest"] = 741, -- The Absent Minded Prospector(Darkshore)
				}),
				q(6071, {	-- The Hunter's Path
					["qg"] = 4146,	-- Jocaste <Hunter Trainer>
					["coord"] = { 25.6, 48.72, TELDRASSIL },
					["maps"] = { TELDRASSIL },
					["races"] = { 4 },	-- Night Elf Only
					["classes"] = { 3 },	-- Hunter Only!
					["isBreadcrumb"] = true,
					["altQuests"] = {
						-- 6071,	-- The Hunter's Path
						6072,	-- The Hunter's Path
						6073,	-- The Hunter's Path
						6721,	-- The Hunter's Path
						6722,	-- The Hunter's Path
					},
					["lvl"] = 10,
				}),
				q(6073, {	-- The Hunter's Path
					["qg"] = 4205,	-- Dorion <Hunter Trainer>
					["coord"] = { 25.98, 48.45, TELDRASSIL },
					["maps"] = { TELDRASSIL },
					["races"] = { 4 },	-- Night Elf Only
					["classes"] = { 3 },	-- Hunter Only!
					["isBreadcrumb"] = true,
					["altQuests"] = {
						6071,	-- The Hunter's Path
						6072,	-- The Hunter's Path
						-- 6073,	-- The Hunter's Path
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
				q(2519, {	-- The Temple of the Moon
					["lvl"] = 5,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 7316,	-- Sister Aquinne
				}),
				q(730, {	-- Trouble In Darkshore?
					["lvl"] = 14,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2912,	-- Chief Archaeologist Greywhisker
					["isBreadcrumb"] = true,
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
				}),
				q(1038, {	-- Velinde's Effects
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
					["qg"] = 8026,	-- Thyn'tel Bladeweaver
					["sourceQuest"] = 1037, -- Velinde Starsong (Ashenvale)
					["description"] = "This quest is part of a series that starts in Ashenvale.",
				}),
				q(1039, {	-- The Barrens Port
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
					["qg"] = 8026,	-- Thyn'tel Bladeweaver
					["sourceQuest"] = 1038,	-- Velinde's Effects
					["description"] = "This quest is part of a series that starts in Ashenvale.",
				}),
			}),
		}),
	}),
};