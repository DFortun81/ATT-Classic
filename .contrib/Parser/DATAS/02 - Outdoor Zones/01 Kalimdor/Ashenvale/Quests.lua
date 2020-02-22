---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {	-- Kalimdor
		m(ASHENVALE, {	-- Ashenvale
			n(-17, {	-- Quests
				q(1025, {	-- An Aggressive Defense
					["lvl"] = 18,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3691,	-- Raene Wolfrunner
					["g"] = {
						i(4542),	-- Moist Cornbread
						i(1205),	-- Melon Juice
					},
					["sourceQuest"] = 1023, -- Raene's Cleansing (2)
					["coord"] = { 36.6, 49.6, ASHENVALE },
				}),
				q(6503, {	-- Ashenvale Outrunners
					["qg"] = 12867,	-- Kuray'bin
					["coord"] = { 71.11, 68.13, ASHENVALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 19,
				}),
				q(1010, {	-- Bathran's Hair
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3847,	-- Orendil Broadleaf
					["coord"] = { 26.4, 38.6, ASHENVALE },
				}),
				q(216, {	-- Between a Rock and a Thistlefur
					["qg"] = 12757,	-- Karang Amakkar
					["coord"] = { 11.89, 34.53, ASHENVALE },
					["lvl"] = 21,
					["races"] = HORDE_ONLY,
				}),
				q(1054, {	-- Culling the Threat
					["qg"] = 3691,	-- Raene Wolfrunner
					["coord"] = { 36.6, 49.6, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5544, 1 },	-- Dal Bloodclaw's Skull
					},
					["lvl"] = 18,
					["g"] = {
						{
							["itemID"] = 5544,	-- Dal Bloodclaw's Skull
							["questID"] = 1054,	-- Culling the Threat
							["cr"] = 3987,	-- Dal Bloodclaw
							["coord"] = { 37.6, 35.4, ASHENVALE },
						},
						i(1970),	-- Restoring Balm
					},
				}),
				q(1016, {	-- Elemental Bracers
					["qg"] = 3885,	-- Sentinel Velene Starstrike
					["coord"] = { 49.8, 67.2, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5455, 1 },	-- Divined Scroll
					},
					["lvl"] = 20,
					["g"] = {
						{
							["itemID"] = 5456,	-- Divining Scroll
							["cost"] = {
								{ "i", 12220, 5 },	-- Intact Elemental Bracer
							},
							["groups"] = {
								{
									["itemID"] = 5455,	-- Divined Scroll
									["questID"] = 1016,	-- Elemental Bracers
								},
							},
						},
					},
				}),
				q(1033, {	-- Elune's Tear
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3894,	-- Pelturas Whitemoon
					["sourceQuest"] = 1020,	-- Orendil's Cure
					["coord"] = { 37.3, 51.8, ASHENVALE },
					["description"] = "Take the path at 43.5, 45.6 up to the lake.",
				}),
				q(1035, {	-- Fallen Sky Lake
					["qg"] = 3894,	-- Pelturas Whitemoon
					["sourceQuest"] = 1034,	-- The Ruins of Stardust
					["coord"] = { 37.3, 51.8, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5508, 1 },	-- Fallen Moonstone
					},
					["lvl"] = 20,
					["g"] = {
						{
							["itemID"] = 5508,	-- Fallen Moonstone
							["questID"] = 1035,	-- Fallen Sky Lake
							["cr"] = 3931,	-- Shadethicket Oracle
							["coord"] = { 66.6, 82.0, ASHENVALE },
						},
						i(5814),	-- Snapbrook Armor
						i(6722),	-- Beastial Manacles
						i(17047),	-- Luminescent Amice
					},
				}),
				q(1011, {	-- Forsaken Diseases
					["lvl"] = 24,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3848,	-- Kayneth Stillwind
					["sourceQuest"] = 4581,	-- Kayneth Stillwind
					["coord"] = { 85.3, 44.7, ASHENVALE },
				}),
				q(6482, {	-- Freedom to Ruul
					["qg"] = 12818,	-- Ruul Snowhoof
					["coord"] = { 41.56, 34.47, ASHENVALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 19,
				}),
				q(1012, {	-- Insane Druids
					["lvl"] = 24,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3848,	-- Kayneth Stillwind
					["g"] = {
						i(5813),	-- Emil's Brand
					},
					["sourceQuest"] = 1011,	-- Forsaken Diseases
					["coord"] = { 85.3, 44.7, ASHENVALE },
				}),
				q(824, {	-- Je'neu of the Earthen Ring
					["qg"] = 12737,	-- Mastok Wrilehiss
					["sourceQuest"] = 1918,	-- The Befouled Element
					["coord"] = { 73.66, 60.01, ASHENVALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 23,
					["g"] = {
						i(16659),	-- Deftkin Belt
						i(16660),	-- Driftmire Shield
						i(16661),	-- Soft Willow Cape
					},
				}),
				q(1056, {	-- Journey to Stonetalon Peak
					["lvl"] = 18,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3996,	-- Faldreas Goeth'Shael
					["coord"] = { 35.8, 49.1, ASHENVALE },
				}),
				q(4581, {	-- Kayneth Stillwind
					["lvl"] = 24,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3845,	-- Shindrell Swiftfire
					["coord"] = { 34.7, 48.9, ASHENVALE },
				}),
				q(6621, {	-- King of the Foulweald
					["qg"] = 12757,	-- Karang Amakkar
					["coord"] = { 11.89, 34.53, ASHENVALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 21,
					["g"] = {
						i(17005),	-- Boorguard Tunic
						i(17006),	-- Cobalt Legguards
					},
					["sourceQuest"] = 216,	-- Between a Rock and a Thistlefur
				}),
				q(1017, {	-- Mage Summoner
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3885,	-- Sentinel Velene Starstrike
					["g"] = {
						i(5816),	-- Light of Elune
					},
					["sourceQuest"] = 1016,	-- Elemental Bracers
					["coord"] = { 49.8, 67.2, ASHENVALE },
				}),
				q(6442, {	-- Naga at the Zoram Strand
					["qg"] = 12719,	-- Marukai
					["coord"] = { 11.69, 34.90, ASHENVALE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5490, 20 },	-- Wrathtail Head
					},
					["lvl"] = 14,
				}),
				q(1070, {	-- On Guard in Stonetalon
					["lvl"] = 17,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 4079,	-- Sentinel Thenysil
					["isBreadcrumb"] = true,
					["coord"] = { 34.9, 49.8, ASHENVALE },
				}),
				q(1020, {	-- Orendil's Cure
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3847,	-- Orendil Broadleaf
					["sourceQuest"] = 1010,	-- Bathran's Hair
					["coord"] = { 26.4, 38.6, ASHENVALE },
				}),
				q(1134, {	-- Pridewings of Stonetalon
					["lvl"] = 18,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3845,	-- Shindrell Swiftfire
					["sourceQuest"] = 1008,	-- The Zoram Strand
					["coord"] = { 34.7, 48.9, ASHENVALE },
				}),
				q(991, {	-- Raene's Cleansing (1)
					["qg"] = 3691,	-- Raene Wolfrunner
					["coord"] = { 36.6, 49.6, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
				}),
				q(1023, {	-- Raene's Cleansing (2)
					["qg"] = 3891,	-- Teronis' Corpse
					["sourceQuest"] = 991,	-- Raene's Cleansing (1)
					["coord"] = { 20.2, 42.2, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5505, 1 },	-- Teronis' Journal
						{ "i", 5463, 1 },	-- Glowing Gem
					},
					["lvl"] = 18,
				}),
				q(1024, {	-- Raene's Cleansing (3)
					["qg"] = 3691,	-- Raene Wolfrunner
					["sourceQuest"] = 1023,	-- Raene's Cleansing (2)
					["coord"] = { 36.6, 49.6, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5463, 1 },	-- Glowing Gem
					},
					["lvl"] = 18,
				}),
				q(1026, {	-- Raene's Cleansing (4)
					["qg"] = 3916,	-- Shael'dryn
					["sourceQuest"] = 1024,	-- Raene's Cleansing (3)
					["coord"] = { 53.5, 46.3, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5464, 1 },	-- Iron Shaft
					},
					["lvl"] = 18,
					["groups"] = {
						{
							["itemID"] = 5464,	-- Iron Shaft
							["questID"] = 1026,	-- Raene's Cleansing (4)
							["provider"] = { "o", 19022 },	-- Worn Chest
							["coord"] = { 54.4, 35.3, ASHENVALE },
						},
					},
				}),
				q(1027, {	-- Raene's Cleansing (5)
					["qg"] = 3916,	-- Shael'dryn
					["sourceQuest"] = 1026,	-- Raene's Cleansing (4)
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5519, 1 },	-- Iron Pommel
					},
					["lvl"] = 18,
					["groups"] = {
						{
							["itemID"] = 5519,	-- Iron Pommel
							["questID"] = 1027,	-- Raene's Cleansing (5)
							["cr"] = 3928,	-- Rotting Slime
							["description"] = "When you kill a slime, it can drop a Rusty Chest which can contain this item.",
						},
					},
				}),
				q(1028, {	-- Raene's Cleansing (6)
					["qg"] = 3916,	-- Shael'dryn
					["sourceQuest"] = 1027,	-- Raene's Cleansing (5)
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5547, 1 },	-- Reconstructed Rod
					},
					["lvl"] = 18,
					["g"] = {
						i(5462),	-- Dartol's Rod of Transformation
					},
				}),
				q(1055, {	-- Raene's Cleansing (7)
					["lvl"] = 18,
					["races"] = ALLIANCE_ONLY,
					["provider"] = { "o", 19024 },	-- Hidden Shrine
					["sourceQuest"] = 1028,	-- Raene's Cleansing (6)
				}),
				q(1029, {	-- Raene's Cleansing (8)
					["qg"] = 3916,	-- Shael'dryn
					["sourceQuest"] = 1055,	-- Raene's Cleansing (7)
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5462, 1 },	-- Dartol's Rod of Transformation
					},
					["lvl"] = 18,
				}),
				q(1030, {	-- Raene's Cleansing (9)
					["qg"] = 3691,	-- Raene Wolfrunner
					["sourceQuest"] = 1029,	-- Raene's Cleansing (8)
					["coord"] = { 36.6, 49.6, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5462, 1 },	-- Dartol's Rod of Transformation
					},
					["lvl"] = 18,
				}),
				q(1045, {	-- Raene's Cleansing (10)
					["qg"] = 3897,	-- Krolg
					["sourceQuest"] = 1030,	-- Raene's Cleansing (9)
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5462, 1 },	-- Dartol's Rod of Transformation
					},
					["lvl"] = 18,
					["g"] = {
						{
							["itemID"] = 5388,	-- Ran Bloodtooth's Skull
							["questID"] = 1045,	-- Raene's Cleansing (10)
							["cr"] = 3696, 	-- Ran Bloodtooth
							["coord"] = { 54.6, 79.4, ASHENVALE },
						},
					},
				}),
				q(1046, {	-- Raene's Cleansing (11)
					["qg"] = 3897,	-- Krolg
					["sourceQuest"] = 1045,	-- Raene's Cleansing (10)
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5388, 1 },	-- Ran Bloodtooth's Skull
						{ "i", 5462, 1 },	-- Dartol's Rod of Transformation
					},
					["lvl"] = 18,
					["g"] = {
						{
							["itemID"] = 5462,	-- Dartol's Rod of Transformation
							["description"] = "There's a trick to keep this item forever:\nBefore turning in the quest to Raene, destroy the item. Ask Raene for it back. Then turn in the quest. The item will be removed from your inventory. However, since you destroyed the first one, you can then use the Blizzard Item Restoration tool to get your destroyed rod back.",
						},
						i(5815),	-- Glacial Stone
						i(17046),	-- Gutterblade
						i(1116),	-- Ring of Pure Silver
					},
				}),
				q(1009, {	-- Ruuzel
					["qg"] = 3846,	-- Talen
					["sourceQuest"] = 1007,	-- The Ancient Statuette
					["coord"] = { 14.8, 31.3, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5445, 1 },	-- Ring of Zoram
					},
					["lvl"] = 20,
					["g"] = {
						{
							["itemID"] = 5445,	-- Ring of Zoram
							["questID"] = 1009,	-- Ruuzel
							["cr"] = 3943,	-- Ruuzel
							["coord"] = { 7.6, 13.6, ASHENVALE },
						},
						i(5812),	-- Robes of Antiquity
					},
				}),
				q(6441, {	-- Satyr Horns
					["qg"] = 12724,	-- Pixel
					["coord"] = { 73.06, 61.48, ASHENVALE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5481, 16 },	-- Satyr Horns
					},
					["lvl"] = 21,
				}),
				q(1032, {	-- Satyr Slaying!
					["qg"] = 3901,	-- Illiyana
					["sourceQuest"] = 1031,	-- The Branch of Cenarius
					["coord"] = { 21.7, 53.4, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5481, 16 },	-- Satyr Horns
					},
					["lvl"] = 26,
				}),
				q(7865, {	-- Sentinel Advanced Care Package
					["lvl"] = 45,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 14753,	-- Illiyana Moonblaze
					["g"] = {
						i(19152),	-- Sentinel Advanced Care Package
					},
					["u"] = 3 -- Not Availble until Battlegrounds
				}),
				q(7863, {	-- Sentinel Basic Care Package
					["lvl"] = 25,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 14753,	-- Illiyana Moonblaze
					["g"] = {
						i(19150),	-- Sentinel Basic Care Package
					},
					["u"] = 3 -- Not Availble until Battlegrounds
				}),
				q(7864, {	-- Sentinel Standard Care Package
					["lvl"] = 35,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 14753,	-- Illiyana Moonblaze
					["g"] = {
						i(19151),	-- Sentinel Standard Care Package
					},
					["u"] = 3 -- Not Availble until Battlegrounds
				}),
				q(24, {	-- Shadumbra's Head
					["provider"] = { "i", 16304 },	-- Shadumbra's Head
					["sourceQuest"] = 6383,	-- The Ashenvale Hunt
					["coord"] = { 59.8, 54.6, ASHENVALE },
					["cr"] = 12677,	-- Shadumbra
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
				}),
				q(2, {	-- Sharptalon's Claw
					["provider"] = { "i", 16305 },	-- Sharptalon's Claw
					["sourceQuest"] = 6383,	-- The Ashenvale Hunt
					["coord"] = { 75.8, 69.6, ASHENVALE },
					["cr"] = 12676,	-- Sharptalon
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
				}),
				q(25, {	-- Stonetalon Standstill
					["qg"] = 12737,	-- Mastok Wrilehiss
					["coord"] = { 73.66, 60.01, ASHENVALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 23,
				}),
				q(976, {	-- Supplies to Auberdine
					["lvl"] = 19,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 4484,	-- Feero Ironhand
					["g"] = {
						i(5323),	-- Everglow Lantern
						i(6721),	-- Chestplate of Kor
					},
					["sourceQuest"] = 973,	-- The Tower of Althalaxx (5)
					["coord"] = { 26.2, 38.9, ASHENVALE },
				}),
				q(1007, {	-- The Ancient Statuette
					["lvl"] = 19,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3846,	-- Talen
					["coord"] = { 14.8, 31.3, ASHENVALE },
					["description"] = "The Ancient Statuette is located on the beach at 14.2, 20.6.",
				}),
				q(6383, {	-- The Ashenvale Hunt
					["qg"] = 12696,	-- Senani Thunderheart
					["coord"] = { 73.78, 61.47, ASHENVALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
				}),
				q(1918, {	-- The Befouled Element
					["provider"] = { "i", 16408 },	-- Befouled Water Globe
					["cr"] = 12759,	-- Tideress
					["races"] = HORDE_ONLY,
					["lvl"] = 23,
				}),
				q(1031, {	-- The Branch of Cenarius
					["qg"] = 3920,	-- Anilia
					["sourceQuest"] = 1021,	-- Vile Satyr! Dryads in Danger!
					["coord"] = { 78.3, 44.8, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5461, 1 },	-- Branch of Cenarius
					},
					["lvl"] = 26,
					["g"] = {
						{
							["itemID"] = 5461,	-- Branch of Cenarius
							["questID"] = 1031,	-- The Branch of Cenarius
							["cr"] = 4619,	-- Geltharis
							["coord"] = { 78.6, 42.8, ASHENVALE },
						},
						i(5820),	-- Faerie Mantle
						i(11229),	-- Brightscale Girdle
					},
				}),
				q(1022, {	-- The Howling Vale
					["lvl"] = 25,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3880,	-- Sentinel Melyria Frostshadow
					["coord"] = { 22.2, 53.0, ASHENVALE },
				}),
				q(247, {	-- The Hunt Completed
					["qg"] = 12696,	-- Senani Thunderheart
					["sourceQuests"] = {
						24,	-- Shadumbra's Head
						2,	-- Sharptalon's Claw
						23,	-- Ursangous's Paw
					},
					["coord"] = { 73.78, 61.47, ASHENVALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["g"] = {
						i(16658),	-- Wildhunter Cloak
					},
				}),
				q(6504, {	-- The Lost Pages
					["qg"] = 12718,	-- Gurda Ragescar
					["coord"] = { 70.00, 71.16, ASHENVALE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 16642, 1 },	-- Shredder Operating Manual - Chapter 1
						{ "i", 16643, 1 },	-- Shredder Operating Manual - Chapter 2
						{ "i", 16644, 1 },	-- Shredder Operating Manual - Chapter 3
					},
					["lvl"] = 23,
					["g"] = {
						i(16642, {	-- Shredder Operating Manual - Chapter 1
							["questID"] = 6504,	-- The Lost Pages
							["cost"] = {
								{ "i", 16645, 1 },	-- Shredder Operating Manual - Page 1
								{ "i", 16646, 1 },	-- Shredder Operating Manual - Page 2
								{ "i", 16647, 1 },	-- Shredder Operating Manual - Page 3
								{ "i", 16648, 1 },	-- Shredder Operating Manual - Page 4
							},
						}),
						i(16643, {	-- Shredder Operating Manual - Chapter 2
							["questID"] = 6504,	-- The Lost Pages
							["cost"] = {
								{ "i", 16649, 1 },	-- Shredder Operating Manual - Page 5
								{ "i", 16650, 1 },	-- Shredder Operating Manual - Page 6
								{ "i", 16651, 1 },	-- Shredder Operating Manual - Page 7
								{ "i", 16652, 1 },	-- Shredder Operating Manual - Page 8
							},
						}),
						i(16644, {	-- Shredder Operating Manual - Chapter 3
							["questID"] = 6504,	-- The Lost Pages
							["cost"] = {
								{ "i", 16653, 1 },	-- Shredder Operating Manual - Page 9
								{ "i", 16654, 1 },	-- Shredder Operating Manual - Page 10
								{ "i", 16655, 1 },	-- Shredder Operating Manual - Page 11
								{ "i", 16656, 1 },	-- Shredder Operating Manual - Page 12
							},
						}),
						i(16740),	-- Shredder Operating Gloves
						i(16741),	-- Oilrag Handwraps
					},
				}),
				q(1034, {	-- The Ruins of Stardust
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3894,	-- Pelturas Whitemoon
					["sourceQuest"] = 1033,	-- Elune's Tear
					["coord"] = { 37.3, 51.8, ASHENVALE },
					["description"] = "Pick up the Handful of Stardust on the island in the lake at 34, 66.7.",
				}),
				q(970, {	-- The Tower of Althalaxx (4)
					["lvl"] = 13,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3663,	-- Delgren the Purifier
					["sourceQuest"] = 967,	-- The Tower of Althalaxx (3) (Darkshore)
					["coord"] = { 26.2, 38.7, ASHENVALE },
					["description"] = "Kill the Dark Strand mobs near 32, 29.3 to get the Glowing Soul Gem.",
				}),
				q(973, {	-- The Tower of Althalaxx (5)
					["qg"] = 3663,	-- Delgren the Purifier
					["sourceQuest"] = 970,	-- The Tower of Althalaxx (4)
					["coord"] = { 26.2, 38.6, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5533, 1 },	-- Ilkrud Magthrull's Tome
					},
					["lvl"] = 13,
					["g"] = {
						{
							["itemID"] = 5533,	-- Ilkrud Magthrull's Tome
							["questID"] = 973,	-- The Tower of Althalaxx (5)
							["cr"] = 3664,	-- Ilkrud Magthrull
							["coord"] = { 25.2, 60.6, ASHENVALE },
						},
						i(5622),	-- Clergy Ring
						i(5613),	-- Staff of the Purifier
					},
				}),
				q(1140, {	-- The Tower of Althalaxx (6)
					["lvl"] = 13,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3663,	-- Delgren the Purifier
					["sourceQuest"] = 973,	-- The Tower of Althalaxx (5)
				}),
				q(1167, {	-- The Tower of Althalaxx (7)
					["lvl"] = 13,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3663,	-- Delgren the Purifier
					["sourceQuest"] = 1140,	-- The Tower of Althalaxx (6)
				}),
				q(1008, {	-- The Zoram Strand
					["qg"] = 3845,	-- Shindrell Swiftfire
					["coord"] = { 34.7, 48.9, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5490, 20 },	-- Wrathtail Head
					},
					["lvl"] = 14,
				}),
				q(6544, {	-- Torek's Assault
					["qg"] = 12858,	-- Torek
					["coord"] = { 68.34, 75.30, ASHENVALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["g"] = {
						i(16889),	-- Polished Walking Staff
						i(16890),	-- Slatemetal Cutlass
					},
				}),
				q(6462, {	-- Troll Charm
					["qg"] = 12721,	-- Mitsuwa
					["coord"] = { 11.65, 34.84, ASHENVALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 19,
				}),
				q(23, {	-- Ursangous's Paw
					["provider"] = { "i", 16303 },	-- Ursangous's Paw
					["sourceQuest"] = 6383,	-- The Ashenvale Hunt
					["coord"] = { 41.6, 66.8, ASHENVALE },
					["cr"] = 12678,	-- Ursangous
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
				}),
				q(1037, {	-- Velinde Starsong
					["qg"] = 3880,	-- Sentinel Melyria Frostshadow
					["sourceQuest"] = 1022,	-- The Howling Vale
					["coord"] = { 22.2, 53.0, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
				}),
				q(1021, {	-- Vile Satyr! Dryads in Danger!
					["qg"] = 3901,	-- Illiyana
					["coord"] = { 21.7, 53.4, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 26,
				}),
				q(6641, {	-- Vorsha the Lasher
					["qg"] = 12717,	-- Muglash
					["coord"] = { 12.06, 34.63, ASHENVALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["g"] = {
						i(17692),	-- Horn Ring
					},
				}),
				q(6546, {	-- Warsong Outrider Update
					["qg"] = 12864,	-- Warsong Outrider
					["coord"] = { 83.6, 51.4, ASHENVALE },
					["description"] = "This quest is repeatable, but only available when the quest \"The Warsong Reports\" (Quest #6543) is in your quest log.",
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 17,
					["g"] = {
						i(16765),	-- Warsong Outrider Update
					},
				}),
				q(6545, {	-- Warsong Runner Update
					["qg"] = 12863,	-- Warsong Runner
					["coord"] = { 12.2, 34.2, ASHENVALE },
					["description"] = "This quest is repeatable, but only available when the quest \"The Warsong Reports\" (Quest #6543) is in your quest log.",
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 17,
					["g"] = {
						i(16763),	-- Warsong Runner Update
					},
				}),
				q(6581, {	-- Warsong Saw Blades
					["qg"] = 12724,	-- Pixel
					["coord"] = { 73.06, 61.48, ASHENVALE },
					["description"] = "This quest is repeatable, but only available when the quest \"Warsong Supplies\" (Quest #6571) is in your quest log.",
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 22,
					["g"] = {
						{
							["itemID"] = 16742,	-- Warsong Saw Blades
							["questID"] = 6571,	-- Warsong Supplies
						},
					},
				}),
				q(6547, {	-- Warsong Scout Update
					["qg"] = 12862,	-- Warsong Scout
					["coord"] = { 71.04, 68.22, ASHENVALE },
					["description"] = "This quest is repeatable, but only available when the quest \"The Warsong Reports\" (Quest #6543) is in your quest log.",
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 17,
					["g"] = {
						i(16764),	-- Warsong Scout Update
					},
				}),
				q(6571, {	-- Warsong Supplies
					["qg"] = 11820,	-- Locke Okarr
					["coord"] = { 71.40, 67.64, ASHENVALE },
					["maps"] = { STRANGLETHORN_VALE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 16743, 1 },	-- Logging Rope
						{ "i", 16745, 1 },	-- Warsong Axe Shipment
						{ "i", 16744, 1 },	-- Warsong Oil
						{ "i", 16742, 1 },	-- Warsong Saw Blades
					},
					["lvl"] = 22,
					["g"] = {
						{
							["itemID"] = 16745,	-- Warsong Axe Shipment
							["questID"] = 6571,	-- Warsong Supplies
							["coord"] = { 66.5, 56.9, STRANGLETHORN_VALE },
						},
						{
							["itemID"] = 16744,	-- Warsong Oil
							["questID"] = 6571,	-- Warsong Supplies
							["coords"] = {
								{ 66.5, 56.9, ASHENVALE },
								{ 79.1, 45.5, ASHENVALE },
								{ 80.7, 49.7, ASHENVALE },
							},
						},
						i(16975),	-- Warsong Sash
						i(16977),	-- Warsong Boots
						i(16978),	-- Warsong Gauntlets
					},
				}),
			}),
		}),
	}),
};