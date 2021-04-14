---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(DARKSHORE, {
			n(QUESTS, {
				q(986, {	-- A Lost Master (1/2)
					["qg"] = 3693,	-- Terenthis
					["sourceQuest"] = 985,	-- How Big a Threat? (2/2)
					["coord"] = { 39.4, 43.5, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5386, 5 },	-- Fine Moonstalker Pelt
					},
					["lvl"] = 10,
					["groups"] = {
						i(5387),  -- Enchanted Moonstalker Cloak
					},
				}),
				q(993, {	-- A Lost Master (2/2)
					["qg"] = 3693,	-- Terenthis
					["sourceQuest"] = 986,	-- A Lost Master (1/2)
					["coord"] = { 39.4, 43.5, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5386, 1 },	-- Fine Moonstalker Pelt
					},
					["lvl"] = 10,
				}),
				q(4812, {	-- As Water Cascades
					["qg"] = 2930,	-- Sentinel Glynda Nal'Shea
					["sourceQuest"] = 4811,	-- The Red Crystal
					["coord"] = { 37.7, 43.4, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 14339, 1 },	-- Moonwell Water Tube
					},
					["lvl"] = 12,
					["groups"] = {
						{
							["itemID"] = 14338,	-- Empty Water Tube
							["coord"] = { 37, 43, DARKSHORE },
							["groups"] = {
								{
									["itemID"] = 14339,	-- Moonwell Water Tube
									["questID"] = 4812,	-- As Water Cascades
								},
							},
						},
					},
				}),
				q(954, {	-- Bashal'Aran (1/4)
					["qg"] = 3649,	-- Thundris Windweaver
					["coord"] = { 37.4, 40.2, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 7,
				}),
				q(955, {	-- Bashal'Aran (2/4)
					["qg"] = 3650,	-- Asterion
					["sourceQuest"] = 954,	-- Bashal'Aran (1/4)
					["coord"] = { 44.2, 36.3, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5336, 8 },	-- Grell Earring
					},
					["lvl"] = 7,
				}),
				q(956, {	-- Bashal'Aran (3/4)
					["qg"] = 3650,	-- Asterion
					["sourceQuest"] = 955,	-- Bashal'Aran (2/4)
					["coord"] = { 44.2, 36.3, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5338, 1 },	-- Ancient Moonstone Seal
					},
					["lvl"] = 7,
				}),
				q(957, {	-- Bashal'Aran (4/4)
					["qg"] = 3650,	-- Asterion
					["sourceQuest"] = 956,	-- Bashal'Aran (3/4)
					["coord"] = { 44.2, 36.3, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5338, 1 },	-- Ancient Moonstone Seal
					},
					["lvl"] = 7,
					["g"] = {
						i(7229),	-- Explorer's Vest
						i(5617),	-- Vagabond Leggings
						i(5604),	-- Elven Wand
					},
				}),
				q(4723, {	-- Beached Sea Creature (1/4)
					["provider"] = { "o", 175233 },	-- Beached Sea Creature
					["sourceQuest"] = 4681,	-- Washed Ashore (2/2)
					["coord"] = { 42.0, 31.6, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 12242, 1 },	-- Sea Creature Bones
					},
					["lvl"] = 11,
				}),
				q(4728, {	-- Beached Sea Creature (2/4)
					["provider"] = { "o", 175226 },	-- Beached Sea Creature
					["sourceQuest"] = 4681,	-- Washed Ashore (2/2)
					["coord"] = { 36.0, 70.8, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 12242, 1 },	-- Sea Creature Bones
					},
					["lvl"] = 12,
				}),
				q(4730, {	-- Beached Sea Creature (3/4)
					["provider"] = { "o", 175227 },	-- Beached Sea Creature
					["sourceQuest"] = 4681,	-- Washed Ashore (2/2)
					["coord"] = { 32.7, 80.9, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 12242, 1 },	-- Sea Creature Bones
					},
					["lvl"] = 12,
				}),
				q(4733, {	-- Beached Sea Creature (4/4)
					["provider"] = { "o", 175230 },	-- Beached Sea Creature
					["sourceQuest"] = 4681,	-- Washed Ashore (2/2)
					["coord"] = { 31.2, 87.4, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 12242, 1 },	-- Sea Creature Bones
					},
					["lvl"] = 13,
				}),
				q(4722, {	-- Beached Sea Turtle (1/5)
					["provider"] = { "o", 176190 },	-- Beached Sea Creature
					["sourceQuest"] = 4681,	-- Washed Ashore (2/2)
					["coord"] = { 37.2, 62.2, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 12289, 1 },	-- Sea Turtle Remains
					},
					["lvl"] = 11,
				}),
				q(4725, {	-- Beached Sea Turtle (2/5)
					["provider"] = { "o", 176197 },	-- Beached Sea Creature
					["sourceQuest"] = 4681,	-- Washed Ashore (2/2)
					["coord"] = { 44.2, 20.7, Darkshore },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 12292, 1 },	-- Strangely Marked Box
					},
					["lvl"] = 12,
				}),
				q(4727, {	-- Beached Sea Turtle (3/5)
					["provider"] = { "o", 176196 },	-- Beached Sea Creature
					["sourceQuest"] = 4681,	-- Washed Ashore (2/2)
					["coord"] = { 53.1, 18.1, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 12289, 1 },	-- Sea Turtle Remains
					},
					["lvl"] = 12,
				}),
				q(4731, {	-- Beached Sea Turtle (4/5)
					["provider"] = { "o", 176198 },	-- Beached Sea Creature
					["sourceQuest"] = 4681,	-- Washed Ashore (2/2)
					["coord"] = { 31.7, 83.7, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 12292, 1 },	-- Strangely Marked Box
					},
					["lvl"] = 13,
				}),
				q(4732, {	-- Beached Sea Turtle (5/5)
					["provider"] = { "o", 176191 },	-- Beached Sea Creature
					["sourceQuest"] = 4681,	-- Washed Ashore (2/2)
					["coord"] = { 31.2, 85.6, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 12289, 1 },	-- Sea Turtle Remains
					},
					["lvl"] = 13,
				}),
				q(1002, {	-- Buzzbox 323
					["provider"] = { "o", 17183 },	-- Buzzbox 411
					["sourceQuest"] = 1001,	-- Buzzbox 411
					["coord"] = { 42, 28.7, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5413, 6 },	-- Moonstalker Fang
					},
					["lvl"] = 7,
				}),
				q(1001, {	-- Buzzbox 411
					["provider"] = { "o", 17182 },	-- Buzzbox 827
					["sourceQuest"] = 983,	-- Buzzbox 827
					["coord"] = { 36.7, 46.3, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5412, 3 },	-- Thresher Eye
					},
					["lvl"] = 7,
				}),
				q(1003, {	-- Buzzbox 525
					["provider"] = { "o", 17184 },	-- Buzzbox 323
					["sourceQuest"] = 1002,	-- Buzzbox 323
					["coord"] = { 51.3, 24.6, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5414, 4 },	-- Grizzled Scalp
					},
					["lvl"] = 7,
					["g"] = {
						i(2082),	-- Wizbang's Gunnysack
						i(11846),	-- Wizbang's Special Brew
					},
				}),
				q(983, {	-- Buzzbox 827
					["qg"] = 3666,	-- Wizbang Cranktoggle
					["coord"] = { 37, 44, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5385, 6 },	-- Crawler Leg
					},
					["lvl"] = 7,
				}),
				q(947, {	-- Cave Mushrooms
					["qg"] = 3583,	-- Barithras Moonshade
					["coord"] = { 37.3, 43.6, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5271, 5 },	-- Scaber Stalk
						{ "i", 5270, 1 },	-- Death Cap
					},
					["lvl"] = 12,
					["g"] = {
						{
							["itemID"] = 5270,	-- Death Cap
							["questID"] = 947,	-- Cave Mushrooms
							["coord"] = { 55.4, 36.4, DARKSHORE },
						},
						{
							["itemID"] = 5271,	-- Scaber Stalk
							["questID"] = 947,	-- Cave Mushrooms
							["coord"] = { 55.1, 34.6, DARKSHORE },
						},
						i(5610),	-- Gustweald Cloak
					},
				}),
				q(2138, {	-- Cleansing of the Infected
					["qg"] = 3701,	-- Tharnariun Treetender
					["sourceQuest"] = 2118,	-- Plagued Lands
					["coord"] = { 38.8, 43.4, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
				}),
				q(6124, {	-- Curing the Sick
					["qg"] = 3702,	-- Alanndarian Nightsong
					["sourceQuest"] = 6123,	-- Gathering the Cure
					["coord"] = { 37.6, 40.6, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DRUID },
					["cost"] = {
						{ "i", 15826, 1 },	-- Curative Animal Salve
					},
					["lvl"] = 14,
					["groups"] = {
						i(15866),	-- Veildust Medicine Bag
					},
				}),
				q(982, {	-- Deep Ocean, Vast Sea
					["qg"] = 6301,	-- Gorbold Steelhand
					["coord"] = { 38.1, 41.2, DARKSHORE },
					["description"] = "The Silver Dawning's Lockbox is located at the bottom of the ship at 38.2, 28.8. The Mist Veil's Lockbox is located at the bottom of the ship at 39.6, 27.5.",
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 12192, 1 },	-- Mist Veil's Lockbox
						{ "i", 12191, 1 },	-- Silver Dawning's Lockbox
					},
					["lvl"] = 13,
					["g"] = {
						{
							["itemID"] = 12192,	-- Mist Veil's Lockbox
							["questID"] = 982,	-- Deep Ocean, Vast Sea
							["coord"] = { 39.7, 27.4, DARKSHORE },
						},
						{
							["itemID"] = 12191,	-- Silver Dawning's Lockbox
							["questID"] = 982,	-- Deep Ocean, Vast Sea
							["coord"] = { 38.3, 28.8, DARKSHORE },
						},
						i(15401),	-- Welldrip Gloves
						i(15402),	-- Noosegrip Gauntlets
					},
				}),
				q(994, {	-- Escape Through Force
					["qg"] = 3692,	-- Volcor
					["sourceQuest"] = 993,	-- A Lost Master
					["description"] = "This quest becomes unavailable if you complete Escape Through Stealth",
					["altQuests"] = { 995 },	-- Escape Through Stealth
					["coord"] = { 45.0, 85.4, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["g"] = {
						i(5609),	-- Steadfast Cinch
					},
				}),
				q(995, {	-- Escape Through Stealth
					["qg"] = 3692,	-- Volcor
					["sourceQuest"] = 993,	-- A Lost Master
					["description"] = "This quest becomes unavailable if you complete Escape Through Force",
					["altQuests"] = { 994 },	-- Escape Through Force
					["coord"] = { 45.0, 85.4, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["g"] = {
						i(6659),	-- Scarab Trousers
					},
				}),
				q(963, {	-- For Love Eternal
					["qg"] = 3644,	-- Cerellean Whiteclaw
					["coord"] = { 35.8, 43.7, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5382, 1 },	-- Anaya's Pendant
					},
					["lvl"] = 11,
					["g"] = {
						{
							["itemID"] = 5382,	-- Anaya's Pendant
							["questID"] = 963,	-- For Love Eternal
							["coord"] = { 43.2, 59.8, DARKSHORE },
							["cr"] = 3667,	-- Anaya Dawnrunner
						},
						i(5611),	-- Tear of Grief
					},
				}),
				q(1138, {	-- Fruit of the Sea
					["qg"] = 10216,	-- Gubber Blump
					["coord"] = { 36.1, 44.9, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 12237, 6 },	-- Fine Crab Chunks
					},
					["lvl"] = 15,
					["g"] = {
						i(15405),	-- Shucking Gloves
						i(15406),	-- Crustacean Boots
					},
				}),
				q(6123, {	-- Gathering the Cure
					["qg"] = 3702,	-- Alanndarian Nightsong
					["sourceQuest"] = 6122,	-- The Principal Source
					["coord"] = { 37.6, 40.6, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DRUID },
					["cost"] = {
						{ "i", 2449, 5 },	-- Earthroot
						{ "i", 15851, 12 },	-- Lunar Fungus
					},
					["lvl"] = 14,
				}),
				q(2098, {	-- Gyromast's Retrieval
					["qg"] = 6667,	-- Gelkak Gyromast
					["coord"] = { 56.7, 13.5, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 7500, 1 },	-- Bottom of Gelkak's Key
						{ "i", 7499, 1 },	-- Middle of Gelkak's Key
						{ "i", 7498, 1 },	-- Top of Gelkak's Key
					},
					["lvl"] = 14,
				}),
				q(2078, {	-- Gyromast's Revenge
					["qg"] = 6667,	-- Gelkak Gyromast
					["sourceQuest"] = 2098,	-- Gyromast's Retrieval
					["coord"] = { 56.7, 13.5, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 7442, 1 },	-- Gyromast's Key
					},
					["lvl"] = 14,
					["g"] = {
						i(5996),	-- Elixir of Water Breathing
					},
				}),
				q(984, {	-- How Big a Threat? (1/2)
					["qg"] = 3693,	-- Terenthis
					["coord"] = { 39.4, 43.5, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
				}),
				q(985, {	-- How Big a Threat? (2/2)
					["qg"] = 3693,	-- Terenthis
					["sourceQuest"] = 984,	-- How Big a Threat? (1/2)
					["coord"] = { 39.4, 43.5, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
				}),
				q(951, {	-- Mathystra Relics
					["qg"] = 3616,	-- Onu
					["sourceQuest"] = 950,	-- Return to Onu
					["coord"] = { 43.5, 76.3, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5273, 6 },	-- Mathystra Relic
					},
					["lvl"] = 12,
					["g"] = {
						{
							["itemID"] = 5273,	-- Mathystra Relic
							["questID"] = 951,	-- Mathystra Relics
							["coord"] = { 59, 21.8, DARKSHORE },
						},
						i(5757),	-- Hardwood Cudgel
						i(5615),	-- Woodsman Sword
					},
				}),
				q(5713, {	-- One Shot. One Kill.
					["qg"] = 11711,	-- Sentinel Aynasha
					["coord"] = { 45.9, 90.3, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
				}),
				q(948, {	-- Onu
					["qg"] = 3583,	-- Barithras Moonshade
					["sourceQuest"] = 947,	-- Cave Mushrooms
					["coord"] = { 37.3, 43.7, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
				}),
				q(960, {	-- Onu is meditating
					["qg"] = 3616,	-- Onu
					["sourceQuest"] = 944,	-- The Master's Glaive
					["description"] = "To complete this quest you must return to Onu after you complete The Master's Glaive, but before you turn in The Twilight Camp.",
					["coord"] = { 43.5, 76.3, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["altQuests"] = {
						949,	-- The Twilight Camp
					},
					["g"] = {
						i(5251),	-- Phial of Scrying
					},
				}),
				q(961, {	-- Onu is meditating
					["qg"] = 3616,	-- Onu
					["sourceQuest"] = 949,	-- The Twilight Camp
					["description"] = "To complete this quest you must return to Onu after you complete The Twilight Camp, but before you turn in Return to Onu.",
					["coord"] = { 43.5, 76.3, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["altQuests"] = {
						950,	-- Return to Onu
					},
					["g"] = {
						i(5251),	-- Phial of Scrying
					},
				}),
				q(2118, {	-- Plagued Lands
					["qg"] = 3701,	-- Tharnariun Treetender
					["coord"] = { 38.8, 43.4, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 7586, 1 },	-- Tharnariun's Hope
					},
					["lvl"] = 10,
				}),
				q(6343, {	-- Return to Nessa
					["qg"] = 4200,	-- Laird
					["sourceQuest"] = 6342,	-- Flight to Auberdine
					["coord"] = { 36.8, 44.2, DARKSHORE },
					["races"] = { NIGHTELF },
					["cost"] = {
						{ "i", 16263, 1 },	-- Laird's Response
					},
					["lvl"] = 10,
				}),
				q(950, {	-- Return to Onu
					["provider"] = { "o", 12666 },	-- Twilight Tome
					["sourceQuest"] = 949,	-- The Twilight Camp
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5272, 1 },	-- Insane Scribbles
					},
					["lvl"] = 12,
				}),
				q(2139, {	-- Tharnariun's Hope
					["qg"] = 3701,	-- Tharnariun Treetender
					["sourceQuest"] = 2138,	-- Cleansing of the Infected
					["description"] = "The path up to the cave begins at 52.4, 36.0.",
					["coord"] = { 38.8, 43.4, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["cr"] = 6788,	-- Den Mother
					["lvl"] = 10,
					["g"] = {
						i(7738),	-- Evergreen Gloves
						i(7739),	-- Timberland Cape
					},
				}),
				q(729, {	-- The Absent Minded Prospector (1/5)
					["qg"] = 2913,	-- Archaeologist Hollee
					["sourceQuest"] = 730,	-- Trouble in Darkshore?
					["coord"] = { 37.4, 41.8, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 15,
				}),
				q(731, {	-- The Absent Minded Prospector (2/5)
					["qg"] = 2917,	-- Prospector Remtravel
					["sourceQuest"] = 729,	-- The Absent Minded Prospector (1/5)
					["coord"] = { 35.7, 83.7, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 15,
				}),
				q(741, {	-- The Absent Minded Prospector (3/5)
					["qg"] = 2913,	-- Archaeologist Hollee
					["sourceQuest"] = 731,	-- The Absent Minded Prospector (2/5)
					["coord"] = { 37.4, 41.8, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 15,
					["cost"] = {
						{ "i", 4654, 1 },	-- Mysterious Fossil
					},
					["g"] = {
						i(5629),	-- Hammerfist Gloves
						i(5630),	-- Windfelt Gloves
						i(11936),	-- Relic Hunter Belt
					},
				}),
				q(4763, {	-- The Blackwood Corrupted
					["qg"] = 3649,	-- Thundris Windweaver
					["description"] = "Fill the Empty Cleansing Bowl at the Moonwell in Auberdine before you leave to get the other items. Blackwood Grain Sample is located at 50.6, 35.0. Blackwood Nut Sample located at 51.8, 33.5. Blackwood Fruit Sample is located at 52.9, 33.4. Mix the ingredients next to the bonfire at 52.4, 33.4 to spawn the level 19 mob Xabraxxis.",
					["coord"] = { 37.4, 40.2, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 12355, 1 },	-- Talisman of Corruption
					},
					["lvl"] = 15,
					["g"] = {
						{
							["itemID"] = 12346,	-- Empty Cleansing Bowl
							["coord"] = { 37.76, 44.02, DARKSHORE },
							["groups"] = {
								{
									["itemID"] = 12347,	-- Filled Cleansing Bowl
									["coord"] = { 52.30, 33.39, DARKSHORE },
									["cost"] = {
										{ "i", 12341, 1 },	-- Blackwood Fruit Sample
										{ "i", 12342, 1 },	-- Blackwood Grain Sample
										{ "i", 12343, 1 },	-- Blackwood Nut Sample
									},
									["groups"] = {
										{
											["itemID"] = 12355,	-- Talisman of Corruption
											["questID"] = 4763,	-- The Blackwood Corrupted
											["coord"] = { 52.5, 33.5, DARKSHORE },
											["cr"] = 10373,	-- Xabraxxis
										},
									},
								},
							},
						},
						{
							["itemID"] = 12341,	-- Blackwood Fruit Sample
							["questID"] = 4763,	-- The Blackwood Corrupted
							["coord"] = { 52.91, 33.38, DARKSHORE },
						},
						{
							["itemID"] = 12342,	-- Blackwood Grain Sample
							["questID"] = 4763,	-- The Blackwood Corrupted
							["coord"] = { 50.63, 35.05, DARKSHORE },
						},
						{
							["itemID"] = 12343,	-- Blackwood Nut Sample
							["questID"] = 4763,	-- The Blackwood Corrupted
							["coord"] = { 51.81, 33.43, DARKSHORE },
						},
						i(15204),	-- Moonstone Wand
						i(15202),	-- Wildkeeper Leggings
						i(15203),	-- Guststorm Legguards
						i(12341),	-- Blackwood Fruit Sample
						i(12342),	-- Blackwood Grain Sample
					},
				}),
				q(4762, {	-- The Cliffspring River
					["qg"] = 3649,	-- Thundris Windweaver
					["sourceQuest"] = 4761,	-- Thundris Windweaver
					["description"] = "Collect the sample at 50.9, 25.6 at the bottom of the waterfall.",
					["coord"] = { 37.4, 40.2, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 12349, 1 },	-- Cliffspring River Sample
					},
					["lvl"] = 11,
					["groups"] = {
						{
							["itemID"] = 12350,	-- Empty Sampling Tube
							["questID"] = 4762,	-- The Cliffspring River
							["coord"] = { 50.76, 25.56, DARKSHORE },
							["description"] = "The item text doesn't have an 'On use', but you do need to right click it when you're under the waterfall.",
						},
					},
				}),
				q(953, {	-- The Fall of Ameth'Aran
					["qg"] = 3639,	-- Sentinel Tysha Moonblade
					["coord"] = { 40.3, 59.7, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 9,
				}),
				q(4813, {	-- The Fragments Within
					["provider"] = { "o", 175524 },	-- Mysterious Red Crystal
					["sourceQuest"] = 4812,	-- As Water Cascades
					["coord"] = { 47.3, 48.7, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
					["g"] = {
						i(15335),	-- Briarsteel Shortsword
						i(15396),	-- Curvewood Dagger
						i(15397),	-- Oakthrush Staff
					},
				}),
				q(944, {	-- The Master's Glaive
					["qg"] = 3616,	-- Onu
					["sourceQuest"] = 948,	-- Onu
					["coord"] = { 43.5, 76.3, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5251, 1 },	-- Phial of Scrying
					},
					["lvl"] = 12,
				}),
				q(968, { 	-- The Powers Below
					["provider"] = { "i", 5352 },	-- Book: The Powers Below
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
				}),
				q(4811, {	-- The Red Crystal
					["qg"] = 2930,	-- Sentinel Glynda Nal'Shea
					["coord"] = { 37.7, 43.4, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
				}),
				q(5321, {	-- The Sleeper Has Awakened
					["qg"] = 11218,	-- Kerlonian Evershade
					["coord"] = { 44.4, 76.4, DARKSHORE },
					["description"] = "Make sure to pick up the Horn of Awakening from the chest next to Kerlonian Evershade.",
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 13536, 1 },	-- Horn of Awakening
					},
					["lvl"] = 17,
					["g"] = {
						i(15205),	-- Owlsight Rifle
						i(15206),	-- Jadefinger Baton
						i(15207),	-- Steelcap Shield
					},
				}),
				q(965, {	-- The Tower of Althalaxx (1/9)
					["qg"] = 3657,	-- Sentinel Elissa Starbreeze
					["coord"] = { 39.0, 43.6, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 13,
				}),
				q(966, {	-- The Tower of Althalaxx (2/9)
					["qg"] = 3661,	-- Balthule Shadowstrike
					["sourceQuest"] = 965,	-- The Tower of Althalaxx (1/9)
					["coord"] = { 55.0, 24.9, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5348, 4 },	-- Worn Parchment
					},
					["lvl"] = 13,
				}),
				q(967, {	-- The Tower of Althalaxx (3/9)
					["qg"] = 3661,	-- Balthule Shadowstrike
					["sourceQuest"] = 966,	-- The Tower of Althalaxx (2/9)
					["coord"] = { 55.0, 24.9, DARKSHORE },
					["maps"] = { ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5354, 1 },	-- Letter to Delgren
					},
					["lvl"] = 13,
				}),
				q(1143, {	-- The Tower of Althalaxx (8/9)
					["qg"] = 3661,	-- Balthule Shadowstrike
					["sourceQuest"] = 1167,	-- The Tower of Althalaxx (7/9)
					["coord"] = { 55.0, 24.9, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5383, 1 },	-- Athrikus Narassin's Head
					},
					["lvl"] = 13,
					["groups"] = {
						{
							["itemID"] = 5383,	-- Athrikus Narassin's Head
							["questID"] = 1143,	-- The Tower of Althalaxx
							["cr"] = 3660,	-- Athrikus Narassin <Cult of the Dark Strand>
							["coord"] = { 56.0, 26.0, DARKSHORE },
						},
					},
				}),
				q(981, {	-- The Tower of Althalaxx (9/9)
					["qg"] = 3661,	-- Balthule Shadowstrike
					["sourceQuest"] = 1143,	-- The Tower of Althalaxx (8/9)
					["coord"] = { 55.0, 24.9, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 13,
					["g"] = {
						i(10043),	-- Pious Legwraps
						i(5614),	-- Seraph's Strike
					},
				}),
				q(949, {	-- The Twilight Camp
					["provider"] = { "o", 10076 },	-- Scrying Bowl
					["sourceQuest"] = 944,	-- The Master's Glaive
					["coord"] = { 38.6, 86.2, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
				}),
				q(945, {	-- Therylune's Escape
					["qg"] = 3584,	-- Therylune
					["coord"] = { 38.6, 87.3, DARKSHORE },
					["maps"] = { ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
				}),
				q(4761, {	-- Thundris Windweaver
					["qg"] = 3693,	-- Terenthis
					["sourceQuest"] = 984,	-- How Big a Threat? (1/2)
					["coord"] = { 39.4, 43.5, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 11,
				}),
				q(958, {	-- Tools of the Highborne
					["qg"] = 3649,	-- Thundris Windweaver
					["coord"] = { 37.4, 40.2, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5360, 7 },	-- Highborne Relic
					},
					["lvl"] = 9,
					["g"] = {
						i(5612),	-- Ivy Cuffs
					},
				}),
				q(990, {	-- Trek to Ashenvale
					["qg"] = 3694,	-- Sentinel Selarin
					["sourceQuests"] = {
						994,	-- Escape Through Force
						995,	-- Escape Through Stealth
					},
					["coord"] = { 39.3, 43.5, DARKSHORE },
					["maps"] = { ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 15,
				}),
				q(4740, {	-- WANTED: Murkdeep!
					["provider"] = { "o", 175320 },	-- WANTED: Murkdeep!
					["description"] = "Quest given by notice board outside of the inn. To complete the quest, go to 36.2, 76.3. Kill the murlocs at the camp and then a few waves of murlocs before Murkblood and a friend show up.",
					["coord"] = { 37.2, 44.2, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["cr"] = 10323,	-- Murkdeep
					["lvl"] = 15,
					["g"] = {
						i(5315),	-- Timberland Armguards
						i(15403),	-- Ridgeback Bracers
						i(15404),	-- Breakwater Girdle
					},
				}),
				q(3524, {	-- Washed Ashore (1/2)
					["qg"] = 10219,	-- Gwennyth Bly'Leggonde
					["coord"] = { 36.6, 45.6, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 12242, 1 },	-- Sea Creature Bones
					},
					["lvl"] = 11,
				}),
				q(4681, {	-- Washed Ashore (2/2)
					["qg"] = 10219,	-- Gwennyth Bly'Leggonde
					["sourceQuest"] = 3524,	-- Washed Ashore (1/2)
					["coord"] = { 36.6, 45.6, DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 12289, 1 },	-- Sea Turtle Remains
					},
					["lvl"] = 11,
					["g"] = {
						i(15398),	-- Sandcomber Boots
						i(15399),	-- Dryweed Belt
						i(15400),	-- Clamshell Bracers
					},
				}),
			}),
		}),
	}),
};