---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {	-- Kalimdor
		m(DARKSHORE, {	-- Darkshore
			n(-17, {	-- Quests
				q(986, {	-- A Lost Master
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3693,	-- Terenthis
					["coord"] = { 39.4, 43.5, DARKSHORE},
				}),
				q(993, {	-- A Lost Master
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3693,	-- Terenthis
					["coord"] = { 39.4, 43.5, DARKSHORE},
				}),
				q(4812, {	-- As Water Cascades
					["lvl"] = 12,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2930,	-- Sentinel Glynda Nal'Shea
					["coord"] = { 37.7, 43.4, DARKSHORE},
				}),
				q(955, {	-- Bashal'Aran
					["lvl"] = 7,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3650,	-- Asterion
					["coord"] = { 44.2, 36.3, DARKSHORE },
				}),
				q(956, {	-- Bashal'Aran
					["lvl"] = 7,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3650,	-- Asterion
					["coord"] = { 44.2, 36.3, DARKSHORE },
				}),
				q(954, {	-- Bashal'Aran
					["lvl"] = 7,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3649,	-- Thundris Windweaver
					["coord"] = { 37.4, 40.1, DARKSHORE},
				}),
				q(957, {	-- Bashal'Aran
					["lvl"] = 7,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3650,	-- Asterion
					["g"] = {
						i(7229),	-- Explorer's Vest
						i(5617),	-- Vagabond Leggings
						i(5604),	-- Elven Wand
					},
					["coord"] = { 44.2, 36.3, DARKSHORE },
				}),
				q(4730, {	-- Beached Sea Creature
					["lvl"] = 12,
					["races"] = ALLIANCE_ONLY,
					--["objectID"] = 175227,	-- Beached Sea Creature
				}),
				q(4728, {	-- Beached Sea Creature
					["lvl"] = 12,
					["races"] = ALLIANCE_ONLY,
					--["objectID"] = 175226,	-- Beached Sea Creature
					["coord"] = { 36.0, 70.8, DARKSHORE },
				}),
				q(4733, {	-- Beached Sea Creature
					["lvl"] = 13,
					["races"] = ALLIANCE_ONLY,
					--["objectID"] = 175230,	-- Beached Sea Creature
				}),
				q(4723, {	-- Beached Sea Creature
					["lvl"] = 11,
					["races"] = ALLIANCE_ONLY,
					["coord"] = { 42.0, 31.6, DARKSHORE },
					--["objectID"] = 175233,	-- Beached Sea Creature
				}),
				q(4731, {	-- Beached Sea Turtle
					["lvl"] = 13,
					["races"] = ALLIANCE_ONLY,
					--["objectID"] = 176198,	-- Beached Sea Turtle
				}),
				q(4727, {	-- Beached Sea Turtle
					["lvl"] = 12,
					["races"] = ALLIANCE_ONLY,
					--["objectID"] = 176196,	-- Beached Sea Turtle
					["coord"] = { 53.1, 18.1, DARKSHORE },
				}),
				q(4725, {	-- Beached Sea Turtle
					["lvl"] = 12,
					["races"] = ALLIANCE_ONLY,
					--["objectID"] = 176197,	-- Beached Sea Turtle
					["coord"] = { 44.2, 20.7, Darkshore },
				}),
				q(4732, {	-- Beached Sea Turtle
					["lvl"] = 13,
					["races"] = ALLIANCE_ONLY,
					--["objectID"] = 176191,	-- Beached Sea Turtle
				}),
				q(4722, {	-- Beached Sea Turtle
					["lvl"] = 11,
					["races"] = ALLIANCE_ONLY,
					--["objectID"] = 176190,	-- Beached Sea Turtle
					["coord"] = { 37.2, 62.2, DARKSHORE },
				}),
				q(1002, {	-- Buzzbox 323
					["lvl"] = 7,
					["races"] = ALLIANCE_ONLY,
					--["objectID"] = 17183,	-- Buzzbox 411
				}),
				q(1001, {	-- Buzzbox 411
					["lvl"] = 7,
					["races"] = ALLIANCE_ONLY,
					--["objectID"] = 17182,	-- Buzzbox 827
				}),
				q(1003, {	-- Buzzbox 525
					["lvl"] = 7,
					["races"] = ALLIANCE_ONLY,
					--["objectID"] = 17184,	-- Buzzbox 323
					["g"] = {
						i(2082),	-- Wizbang's Gunnysack
						i(11846),	-- Wizbang's Special Brew
					},
					["coord"] = { 51.3, 24.6, DARKSHORE },
				}),
				q(983, {	-- Buzzbox 827
					["lvl"] = 7,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3666,	-- Wizbang Cranktoggle
				}),
				q(947, {	-- Cave Mushrooms
					["lvl"] = 12,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3583,	-- Barithras Moonshade
					["g"] = {
						i(5610),	-- Gustweald Cloak
						i(4605),	-- Red-speckled Mushroom
					},
					["coord"] = { 37.3, 43.6, DARKSHORE},
					["description"] = "The path up to the cave begins at 54.7, 31.6. Follow the path to the right when you enter the cave to find the Death Cap.",
				}),
				q(2138, {	-- Cleansing of the Infected
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3701,	-- Tharnariun Treetender
					["coord"] = { 38.8, 43.4, DARKSHORE },
				}),
				q(982, {	-- Deep Ocean, Vast Sea
					["lvl"] = 13,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 6301,	-- Gorbold Steelhand
					["g"] = {
						i(15401),	-- Welldrip Gloves
						i(15402),	-- Noosegrip Gauntlets
					},
					["coord"] = { 38.1, 41.2, DARKSHORE},
					["description"] = "The Silver Dawning's Lockbox is located at the bottom of the ship at 38.2, 28.8. The Mist Veil's Lockbox is located at the bottom of the ship at 39.6, 27.5.",
				}),
				q(994, {	-- Escape Through Force
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3692,	-- Volcor
					["altQuests"] = {
						995,	-- Escape Through Stealth
					},
					["g"] = {
						i(5609),	-- Steadfast Cinch
					},
					["description"] = "This quest becomes unavailable if you complete Escape Through Stealth",
				}),
				q(995, {	-- Escape Through Stealth
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3692,	-- Volcor
					["altQuests"] = {
						994,	-- Escape Through Force
					},
					["g"] = {
						i(6659),	-- Scarab Trousers
					},
					["description"] = "This quest becomes unavailable if you complete Escape Through Force",
				}),
				q(963, {	-- For Love Eternal
					["lvl"] = 11,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3644,	-- Cerellean Whiteclaw
					["g"] = {
						i(5611),	-- Tear of Grief
					},
					["coord"] = { 35.8, 43.7, DARKSHORE },
				}),
				q(1138, {	-- Fruit of the Sea
					["lvl"] = 15,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 10216,	-- Gubber Blump
					["g"] = {
						i(15405),	-- Shucking Gloves
						i(15406),	-- Crustacean Boots
					},
					["coord"] = { 36.1, 44.9, DARKSHORE },
					["description"] = "Look for Reef Crawlers around 45.6, 20.6.",
				}),
				q(2098, {	-- Gyromast's Retrieval
					["lvl"] = 14,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 6667,	-- Gelkak Gyromast
				}),
				q(2078, {	-- Gyromast's Revenge
					["lvl"] = 14,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 6667,	-- Gelkak Gyromast
					["g"] = {
						i(5996),	-- Elixir of Water Breathing
					},
				}),
				q(985, {	-- How Big a Threat?
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3693,	-- Terenthis
					["coord"] = { 39.4, 43.5, DARKSHORE},
				}),
				q(984, {	-- How Big a Threat?
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3693,	-- Terenthis
					["coord"] = { 39.4, 43.5, DARKSHORE},
				}),
				q(951, {	-- Mathystra Relics
					["lvl"] = 12,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3616,	-- Onu
					["g"] = {
						i(5757),	-- Hardwood Cudgel
						i(5615),	-- Woodsman Sword
					},
					["coord"] = { 43.5, 76.3, DARKSHORE},
				}),
				q(5713, {	-- One Shot. One Kill.
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 11711,	-- Sentinel Aynasha
					["coord"] = { 45.9, 90.3, DARKSHORE },
				}),
				q(948, {	-- Onu
					["lvl"] = 12,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3583,	-- Barithras Moonshade
					["coord"] = { 37.3, 43.7, DARKSHORE },
				}),
				q(960, {	-- Onu is meditating
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3616,	-- Onu
					["repeatable"] = true,
					["altQuests"] = {
						949,	-- The Twilight Camp
					},
					["coord"] = { 43.5, 76.3, DARKSHORE},
					["g"] = {
						i(5251),	-- Phial of Scrying
					},
					["description"] = "To complete this quest you must return to Onu after you complete The Master's Glaive, but before you turn in The Twilight Camp.",
				}),
				q(961, {	-- Onu is meditating
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3616,	-- Onu
					["repeatable"] = true,
					["altQuests"] = {
						950,	-- Return to Onu
					},
					["g"] = {
						i(5251),	-- Phial of Scrying
					},
					["description"] = "To complete this quest you must return to Onu after you complete The Twilight Camp, but before you turn in Return to Onu.",
					["coord"] = { 43.5, 76.3, DARKSHORE},
				}),
				q(2118, {	-- Plagued Lands
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3701,	-- Tharnariun Treetender
					["coord"] = { 38.8, 43.4, DARKSHORE },
				}),
				q(6343, {	-- Return to Nessa
					["lvl"] = 10,
					["races"] = {
						4,	-- Night Elf
					},
					["qg"] = 4200,	-- Laird
					["sourceQuest"] = 6342,	-- Flight to Auberdine
				}),
				q(950, {	-- Return to Onu
					["lvl"] = 12,
					["races"] = ALLIANCE_ONLY,
					--["objectID"] = 12666,	-- Twilight Tome
				}),
				q(2139, {	-- Tharnariun's Hope
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3701,	-- Tharnariun Treetender
					["g"] = {
						i(7738),	-- Evergreen Gloves
						i(7739),	-- Timberland Cape
					},
					["coord"] = { 38.8, 43.4, DARKSHORE },
					["description"] = "The path up to the cave begins at 52.4, 36.0.",
				}),
				q(729, {	-- The Absent Minded Prospector
					["lvl"] = 15,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2913,	-- Archaeologist Hollee
					["sourceQuest"] = 730, -- Trouble in Darkshore
					["coord"] = { 37.4, 41.8, DARKSHORE },
				}),
				q(731, {	-- The Absent Minded Prospector
					["lvl"] = 15,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2917,	-- Prospector Remtravel
					["sourceQuest"] = 729, -- The Absent Minded Prospector
				}),
				q(741, {	-- The Absent Minded Prospector
					["lvl"] = 15,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2913,	-- Archaeologist Hollee
					["g"] = {
						i(5629),	-- Hammerfist Gloves
						i(5630),	-- Windfelt Gloves
						i(11936),	-- Relic Hunter Belt
					},
					["sourceQuest"] = 731, -- The Absent Minded Prospector
					["coord"] = { 37.4, 41.8, DARKSHORE },
				}),
				q(4763, {	-- The Blackwood Corrupted
					["lvl"] = 15,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3649,	-- Thundris Windweaver
					["g"] = {
						i(15204),	-- Moonstone Wand
						i(15202),	-- Wildkeeper Leggings
						i(15203),	-- Guststorm Legguards
						i(12341),	-- Blackwood Fruit Sample
						i(12342),	-- Blackwood Grain Sample
					},
					["coord"] = { 37.4, 40.1, DARKSHORE},
					["description"] = "Fill the Empty Cleansing Bowl at the Moonwell in Auberdine before you leave to get the other items. Blackwood Grain Sample is located at 50.6, 35.0. Blackwood Nut Sample located at 51.8, 33.5. Blackwood Fruit Sample is located at 52.9, 33.4. Mix the ingredients next to the bonfire at 52.4, 33.4 to spawn the level 19 mob Xabraxxis.",
				}),
				q(4762, {	-- The Cliffspring River
					["lvl"] = 11,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3649,	-- Thundris Windweaver
					["coord"] = { 37.4, 40.1, DARKSHORE},
					["description"] = "Collect the sample at 50.9, 25.6 at the bottom of the waterfall."
				}),
				q(953, {	-- The Fall of Ameth'Aran
					["lvl"] = 9,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3639,	-- Sentinel Tysha Moonblade
					["coord"] = { 40.3, 59.7, DARKSHORE },
				}),
				q(1141, {	-- The Family and the Fishing Pole
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 10216,	-- Gubber Blump
					["g"] = {
						i(12225),	-- Blump Family Fishing Pole
					},
					["coord"] = { 36.1, 44.9, DARKSHORE },
					["description"] = "Talk to Gubber Blump after accepting the quest to learn Fishing. Buy a Fishing Pole for 23c and a Shiny Bauble for 50c from Gubber Blump. Start fishing next to Gubber Blump to catch the fish required for the quest.",
				}),
				q(4813, {	-- The Fragments Within
					["lvl"] = 12,
					["races"] = ALLIANCE_ONLY,
					--["objectID"] = 175524,	-- Mysterious Red Crystal
					["g"] = {
						i(15335),	-- Briarsteel Shortsword
						i(15396),	-- Curvewood Dagger
						i(15397),	-- Oakthrush Staff
					},
					["coord"] = { 47.4, 48.7, DARKSHORE},
				}),
				q(944, {	-- The Master's Glaive
					["lvl"] = 12,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3616,	-- Onu
					["coord"] = { 43.5, 76.3, DARKSHORE},
				}),
				q(968, {	-- The Powers Below
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(4811, {	-- The Red Crystal
					["lvl"] = 12,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2930,	-- Sentinel Glynda Nal'Shea
					["coord"] = { 37.7, 43.4, DARKSHORE},
				}),
				q(5321, {	-- The Sleeper Has Awakened
					["lvl"] = 17,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 11218,	-- Kerlonian Evershade
					["g"] = {
						i(15205),	-- Owlsight Rifle
						i(15206),	-- Jadefinger Baton
						i(15207),	-- Steelcap Shield
					},
				}),
				q(965, {	-- The Tower of Althalaxx
					["lvl"] = 13,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3657,	-- Sentinel Elissa Starbreeze
					["coord"] = { 39.0, 43.6, DARKSHORE},
					["description"] = "Quest giver is on 2nd floor.",
				}),
				q(966, {	-- The Tower of Althalaxx
					["lvl"] = 13,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3661,	-- Balthule Shadowstrike
					["sourceQuest"] = 965,	-- The Tower of Althalaxx
					["coord"] = { 55.0, 24.9, DARKSHORE},
					
				}),
				q(967, {	-- The Tower of Althalaxx
					["lvl"] = 13,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3661,	-- Balthule Shadowstrike
					["sourceQuest"] = 966,	-- The Tower of Althalaxx
					["coord"] = { 55.0, 24.9, DARKSHORE},
				}),
				q(1143, {	-- The Tower of Althalaxx
					["lvl"] = 13,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3661,	-- Balthule Shadowstrike
					["sourceQuest"] = 1167,	-- The Tower of Althalaxx
					["coord"] = { 55.0, 24.9, DARKSHORE},
				}),
				q(981, {	-- The Tower of Althalaxx
					["lvl"] = 13,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3661,	-- Balthule Shadowstrike
					["g"] = {
						i(10043),	-- Pious Legwraps
						i(5614),	-- Seraph's Strike
					},
					["sourceQuest"] = 1143,	-- The Tower of Althalaxx
					["coord"] = { 55.0, 24.9, DARKSHORE},
				}),
				q(949, {	-- The Twilight Camp
					["lvl"] = 12,
					["races"] = ALLIANCE_ONLY,
					--["objectID"] = 10076,	-- Scrying Bowl
				}),
				q(945, {	-- Therylune's Escape
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3584,	-- Therylune
				}),
				q(4761, {	-- Thundris Windweaver
					["lvl"] = 11,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3693,	-- Terenthis
					["coord"] = { 39.4, 43.5, DARKSHORE},
				}),
				q(958, {	-- Tools of the Highborne
					["lvl"] = 9,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3649,	-- Thundris Windweaver
					["g"] = {
						i(5612),	-- Ivy Cuffs
					},
					["coord"] = { 37.4, 40.1, DARKSHORE},
				}),
				q(990, {	-- Trek to Ashenvale
					["lvl"] = 15,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3694,	-- Sentinel Selarin
				}),
				q(4740, {	-- WANTED: Murkdeep!
					["lvl"] = 15,
					["races"] = ALLIANCE_ONLY,
					--["objectID"] = 175320,	-- WANTED: Murkdeep!
					["g"] = {
						i(5315),	-- Timberland Armguards
						i(15403),	-- Ridgeback Bracers
						i(15404),	-- Breakwater Girdle
					},
					["coord"] = { 37.2, 44.2, DARKSHORE },
					["description"] = "Quest given by notice board outside of the inn.",
				}),
				q(4681, {	-- Washed Ashore
					["lvl"] = 11,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 10219,	-- Gwennyth Bly'Leggonde
					["g"] = {
						i(15398),	-- Sandcomber Boots
						i(15399),	-- Dryweed Belt
						i(15400),	-- Clamshell Bracers
					},
				}),
				q(3524, {	-- Washed Ashore
					["lvl"] = 11,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 10219,	-- Gwennyth Bly'Leggonde
				}),
			}),
		}),
	}),
};