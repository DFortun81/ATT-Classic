---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(ASHENVALE, {
			n(QUESTS, {
				q(9533, {	-- A Helping Hand
					["qg"] = 17106,	-- Vindicator Palanaar
					["coord"] = { 34.9, 49.7, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["u"] = TBC_PHASE_ONE,
					["lvl"] = 22,
				}),
				q(9517, {	-- A Shameful Waste
					["qg"] = 17291,	-- Architect Nemos
					["coord"] = { 86.8, 44.8, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 23776, 15 },	-- Warsong Lumber
						{ "i", 24081, 5 },	-- Satyrnaar Fel Wood
					},
					["u"] = TBC_PHASE_ONE,
					["lvl"] = 24,
				}),
				q(9518, {	-- Agents of Destruction
					["qg"] = 17287,	-- Sentinel Luciel Starwhisper <Silverwing Sentinels>
					["coord"] = { 86.0, 44.4, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["u"] = TBC_PHASE_ONE,
					["lvl"] = 24,
				}),
				q(1025, {	-- An Aggressive Defense
					["qg"] = 3691,	-- Raene Wolfrunner
					["sourceQuest"] = 1023,	-- Raene's Cleansing (2)
					["coord"] = { 36.6, 49.6, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
				}),
				q(6503, {	-- Ashenvale Outrunners
					["qg"] = 12867,	-- Kuray'bin
					["coord"] = { 71.11, 68.13, ASHENVALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 19,
				}),
				q(1010, {	-- Bathran's Hair
					["qg"] = 3847,	-- Orendil Broadleaf
					["coord"] = { 26.4, 38.6, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5437, 5 },	-- Bathran's Hair
					},
					["lvl"] = 20,
					["groups"] = {
						{
							["itemID"] = 5437,	-- Bathran's Hair
							["questID"] = 1010,	-- Bathran's Hair
							["coord"] = { 31.8, 22.9, ASHENVALE },
						},
					},
				}),
				q(216, {	-- Between a Rock and a Thistlefur
					["qg"] = 12757,	-- Karang Amakkar
					["coord"] = { 11.89, 34.53, ASHENVALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 21,
				}),
				q(1054, {	-- Culling the Threat
					["qg"] = 3691,	-- Raene Wolfrunner
					["coord"] = { 36.6, 49.6, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5544, 1 },	-- Dal Bloodclaw's Skull
					},
					["lvl"] = 18,
					["groups"] = {
						{
							["itemID"] = 5544,	-- Dal Bloodclaw's Skull
							["questID"] = 1054,	-- Culling the Threat
							["cr"] = 3987,	-- Dal Bloodclaw
							["coord"] = { 37.6, 35.4, ASHENVALE },
						},
						i(1970),	-- Restoring Balm
					},
				}),
				q(9516, {	-- Destroy the Legion [Alliance]
					["qg"] = 17303,	-- Vindicator Vedaar <Hand of Argus>
					["coord"] = { 86.5, 44.2, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["u"] = TBC_PHASE_ONE,
					["lvl"] = 26,
				}),
				q(9534, {	-- Destroy the Legion [Horde]
					["qg"] = 17355,	-- Valusha
					["coord"] = { 73.2, 60.4, ASHENVALE },
					["races"] = HORDE_ONLY,
					["u"] = TBC_PHASE_ONE,
					["lvl"] = 26,
				}),
				q(9520, {	-- Diabolical Plans [Alliance]
					["provider"] = { "i", 23780 },	-- Diabolical Plans
					["races"] = ALLIANCE_ONLY,
					["u"] = TBC_PHASE_ONE,
					["lvl"] = 27,
				}),
				q(9535, {	-- Diabolical Plans [Horde]
					["provider"] = { "i", 23798 },	-- Diabolical Plans
					["races"] = HORDE_ONLY,
					["u"] = TBC_PHASE_ONE,
					["lvl"] = 27,
				}),
				q(1016, {	-- Elemental Bracers
					["qg"] = 3885,	-- Sentinel Velene Starstrike
					["coord"] = { 49.8, 67.2, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5455, 1 },	-- Divined Scroll
					},
					["lvl"] = 20,
					["groups"] = {
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
					["qg"] = 3894,	-- Pelturas Whitemoon
					["sourceQuest"] = 1020,	-- Orendil's Cure
					["coord"] = { 37.3, 51.8, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5493, 1 },	-- Elune's Tear
					},
					["lvl"] = 20,
					["groups"] = {
						{
							["itemID"] = 5493,	-- Elune's Tear
							["questID"] = 1033,	-- Elune's Tear
							["coord"] = { 46, 46.5, ASHENVALE },
						},
					},
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
					["groups"] = {
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
					["qg"] = 3848,	-- Kayneth Stillwind
					["sourceQuest"] = 4581,	-- Kayneth Stillwind
					["coord"] = { 85.3, 44.7, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5440, 1 },	-- Bottle of Disease
					},
					["lvl"] = 24,
					["groups"] = {
						{
							["itemID"] = 5440,	-- Bottle of Disease
							["questID"] = 1011,	-- Forsaken Diseases
							["coord"] = { 75.3, 72.3, ASHENVALE },
						},
					},
				}),
				q(6482, {	-- Freedom to Ruul
					["qg"] = 12818,	-- Ruul Snowhoof
					["coord"] = { 41.4, 34.4, ASHENVALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 19,
				}),
				q(1012, {	-- Insane Druids
					["qg"] = 3848,	-- Kayneth Stillwind
					["sourceQuest"] = 1011,	-- Forsaken Diseases
					["coord"] = { 85.3, 44.7, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 24,
					["groups"] = {
						i(5813),	-- Emil's Brand
					},
				}),
				q(824, {	-- Je'neu of the Earthen Ring
					["qg"] = 12737,	-- Mastok Wrilehiss
					["sourceQuest"] = 1918,	-- The Befouled Element
					["coord"] = { 73.6, 60, ASHENVALE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 16408, 1 },	-- Befouled Water Globe
					},
					["lvl"] = 23,
					["groups"] = {
						i(16659),	-- Deftkin Belt
						i(16660),	-- Driftmire Shield
						i(16661),	-- Soft Willow Cape
					},
				}),
				q(1056, {	-- Journey to Stonetalon Peak
					["qg"] = 3996,	-- Faldreas Goeth'Shael
					["coord"] = { 35.6, 49.2, ASHENVALE },
					["maps"] = { STONETALON_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
					["isBreadcrumb"] = true,
				}),
				q(4581, {	-- Kayneth Stillwind
					["qg"] = 3845,	-- Shindrell Swiftfire
					["coord"] = { 34.7, 48.9, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 12060, 1 },	-- Shindrell's Note
					},
					["lvl"] = 24,
				}),
				q(6621, {	-- King of the Foulweald
					["qg"] = 12757,	-- Karang Amakkar
					["sourceQuest"] = 216,	-- Between a Rock and a Thistlefur
					["coord"] = { 11.89, 34.53, ASHENVALE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 16972, 1 },	-- Karang's Banner
						{ "i", 16976, 1 },	-- Murgut's Totem
					},
					["lvl"] = 21,
					["groups"] = {
						{
							["itemID"] = 16976,	-- Murgut's Totem
							["questID"] = 6621,	-- King of the Foulweald
							["provider"] = { "o", 178227 },	-- Murgut's Totem Basket
							["cr"] = 12918,	-- Chief Murgut
							["coord"] = { 56.5, 63.5, ASHENVALE },
						},
						i(17005),	-- Boorguard Tunic
						i(17006),	-- Cobalt Legguards
					},
				}),
				q(1017, {	-- Mage Summoner
					["qg"] = 3885,	-- Sentinel Velene Starstrike
					["sourceQuest"] = 1016,	-- Elemental Bracers
					["coord"] = { 49.8, 67.2, ASHENVALE },
					["maps"] = { THE_BARRENS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5537, 1 },	-- Sarilus Foulborne's Head
					},
					["lvl"] = 20,
					["groups"] = {
						{
							["itemID"] = 5537,	-- Sarilus Foulborne's Head
							["questID"] = 1017,	-- Mage Summoner
							["cr"] = 3986,	-- Sarilus Foulborne
							["coord"] = { 48.2, 19.0, THE_BARRENS },
						},
						{
							["itemID"] = 5816,	-- Light of Elune
							["description"] = "Single use. Save this for AQ40 or Naxx.",
						},
					},
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
				q(9522, {	-- Never Again! [Alliance]
					["qg"] = 17303,	-- Vindicator Vedaar <Hand of Argus>
					["sourceQuest"] = 9520,	-- Diabolical Plans [Alliance]
					["coord"] = { 86.5, 44.2, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["u"] = TBC_PHASE_ONE,
					["lvl"] = 27,
					["groups"] = {
						i(24119, {	-- Band of Argas
							["u"] = TBC_PHASE_ONE,
						}),
						i(24120, {	-- Seal of Argas
							["u"] = TBC_PHASE_ONE,
						}),
						i(24118, {	-- Signet of Argas
							["u"] = TBC_PHASE_ONE,
						}),
					},
				}),
				q(9536, {	-- Never Again! [Horde]
					["qg"] = 17355,	-- Valusha
					["sourceQuest"] = 9535,	-- Diabolical Plans [Horde]
					["coord"] = { 73.2, 60.4, ASHENVALE },
					["races"] = HORDE_ONLY,
					["u"] = TBC_PHASE_ONE,
					["lvl"] = 27,
					["groups"] = {
						i(24119, {	-- Band of Argas
							["u"] = TBC_PHASE_ONE,
						}),
						i(24120, {	-- Seal of Argas
							["u"] = TBC_PHASE_ONE,
						}),
						i(24118, {	-- Signet of Argas
							["u"] = TBC_PHASE_ONE,
						}),
					},
				}),
				q(1070, {	-- On Guard in Stonetalon
					["qg"] = 4079,	-- Sentinel Thenysil
					["coord"] = { 34.9, 49.8, ASHENVALE },
					["maps"] = { STONETALON_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 17,
				}),
				q(1020, {	-- Orendil's Cure
					["qg"] = 3847,	-- Orendil Broadleaf
					["sourceQuest"] = 1010,	-- Bathran's Hair
					["coord"] = { 26.4, 38.6, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5460, 1 },	-- Orendil's Cure
					},
					["lvl"] = 20,
				}),
				q(1134, {	-- Pridewings of Stonetalon
					["qg"] = 3845,	-- Shindrell Swiftfire
					["sourceQuest"] = 1008,	-- The Zoram Strand
					["coord"] = { 34.7, 48.9, ASHENVALE },
					["maps"] = { STONETALON_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5808, 12 },	-- Pridewing Venom Sac
					},
					["lvl"] = 18,
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
					["coord"] = { 53.5, 46.3, ASHENVALE },
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
					["coord"] = { 53.5, 46.3, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5547, 1 },	-- Reconstructed Rod
					},
					["lvl"] = 18,
					["groups"] = {
						i(5462),	-- Dartol's Rod of Transformation
					},
				}),
				q(1055, {	-- Raene's Cleansing (7)
					["provider"] = { "o", 19024 },	-- Hidden Shrine
					["sourceQuest"] = 1028,	-- Raene's Cleansing (6)
					["coord"] = { 56.38, 49.24, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
				}),
				q(1029, {	-- Raene's Cleansing (8)
					["qg"] = 3916,	-- Shael'dryn
					["sourceQuest"] = 1055,	-- Raene's Cleansing (7)
					["coord"] = { 53.5, 46.3, ASHENVALE },
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
					["coord"] = { 50.8, 75.0, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5462, 1 },	-- Dartol's Rod of Transformation
					},
					["lvl"] = 18,
					["groups"] = {
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
					["coord"] = { 50.8, 75.0, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5388, 1 },	-- Ran Bloodtooth's Skull
						{ "i", 5462, 1 },	-- Dartol's Rod of Transformation
					},
					["lvl"] = 18,
					["groups"] = {
						{
							["itemID"] = 5462,	-- Dartol's Rod of Transformation
							["description"] = "There's a trick to keep this item forever:\nBefore turning in the quest to Raene, destroy the item. Ask Raene for it back. Then turn in the quest. The item will be removed from your inventory. However, since you destroyed the first one, you can then use the Blizzard Item Restoration tool to get your destroyed rod back.",
						},
						i(5815),	-- Glacial Stone
						i(17046),	-- Gutterblade
						i(1116),	-- Ring of Pure Silver
					},
				}),
				q(1081, {	-- Reception from Tyrande
					["qg"] = 4079,	-- Sentinel Thenysil
					["sourceQuest"] = 1082,	-- Update for Sentinel Thenysil
					["maps"] = { STONETALON_MOUNTAINS, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						i(7334),	-- Efflorescent Robe
						i(7335),	-- Grizzly Tunic
						i(7336),	-- Wildwood Chain
						i(6678),	-- Band of Elven Grace
					},
				}),
				q(9526, {	-- Reclaiming Felfire Hill
					["qg"] = 17310,	-- Gnarl <Ancient of War>
					["coord"] = { 84.2, 45.6, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 23788, 1 },	-- Tree Seedlings
					},
					["u"] = TBC_PHASE_ONE,
					["lvl"] = 24,
				}),
				q(9521, {	-- Report from the Northern Front
					["qg"] = 17287,	-- Sentinel Luciel Starwhisper <Silverwing Sentinels>
					["coord"] = { 86.0, 44.4, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 23778, 1 },	-- Sentinel Luciel's Report
					},
					["u"] = TBC_PHASE_ONE,
					["lvl"] = 21,
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
					["groups"] = {
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
					["coord"] = { 73, 61.4, ASHENVALE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 5481, 16 },	-- Satyr Horns
					},
					["lvl"] = 21,
				}),
				q(1032, {	-- Satyr Slaying!
					["qg"] = 3901,	-- Illiyana
					["sourceQuest"] = 1031,	-- The Branch of Cenarius
					["coord"] = { 21.8, 53.2, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5481, 16 },	-- Satyr Horns
					},
					["lvl"] = 26,
				}),
				q(24, {		-- Shadumbra's Head
					["provider"] = { "i", 16304 },	-- Shadumbra's Head
					["sourceQuest"] = 6383,	-- The Ashenvale Hunt
					["coord"] = { 59.8, 54.6, ASHENVALE },
					["cr"] = 12677,	-- Shadumbra
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
				}),
				q(2, {		-- Sharptalon's Claw
					["provider"] = { "i", 16305 },	-- Sharptalon's Claw
					["sourceQuest"] = 6383,	-- The Ashenvale Hunt
					["coord"] = { 75.8, 69.6, ASHENVALE },
					["cr"] = 12676,	-- Sharptalon
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
				}),
				q(25, {		-- Stonetalon Standstill
					["qg"] = 12737,	-- Mastok Wrilehiss
					["coord"] = { 73.66, 60.01, ASHENVALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 23,
				}),
				q(976, {	-- Supplies to Auberdine
					["qg"] = 4484,	-- Feero Ironhand
					["sourceQuest"] = 973,	-- The Tower of Althalaxx (5/9)
					["coord"] = { 26.2, 38.9, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 19,
					["groups"] = {
						i(5323),	-- Everglow Lantern
						i(6721),	-- Chestplate of Kor
					},
				}),
				q(1007, {	-- The Ancient Statuette
					["qg"] = 3846,	-- Talen
					["coord"] = { 14.8, 31.3, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5424, 1 },	-- Ancient Statuette
					},
					["lvl"] = 19,
					["groups"] = {
						{
							["itemID"] = 5424,	-- Ancient Statuette
							["questID"] = 1007,	-- The Ancient Statuette
							["coord"] = { 14.2, 20.6, ASHENVALE },
						},
					},
				}),
				q(6383, {	-- The Ashenvale Hunt
					["qg"] = 12696,	-- Senani Thunderheart
					["coord"] = { 73.78, 61.47, ASHENVALE },
					["sourceQuests"] = {
						235,	-- The Ashenvale Hunt [Orgrimmar]
						742,	-- The Ashenvale Hunt [Thunder Bluff]
						6382,	-- The Ashenvale Hunt [The Barrens]
					},
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
					["groups"] = {
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
					["qg"] = 3880,	-- Sentinel Melyria Frostshadow
					["coord"] = { 22.2, 53.0, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						objective(1, {	-- View the Tome of Mel'Thandris
							["icon"] = "Interface\\Icons\\INV_Misc_Book_09",
							["coord"] = { 50.5, 39.1, ASHENVALE },
						}),
					},
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
					["groups"] = {
						i(16658),	-- Wildhunter Cloak
					},
				}),
				q(9519, {	-- The Lost Chalice
					["qg"] = 3848,	-- Kayneth Stillwind
					["coord"] = { 85.3, 44.7, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 23760, 1 },	-- Chalice of Elune
					},
					["u"] = TBC_PHASE_ONE,
					["lvl"] = 23,
					["groups"] = {
						i(23760, {	-- Chalice of Elune
							["coord"] = { 81.4, 48.9, ASHENVALE },
						}),
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
					["groups"] = {
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
					["qg"] = 3894,	-- Pelturas Whitemoon
					["sourceQuest"] = 1033,	-- Elune's Tear
					["coord"] = { 37.3, 51.8, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5494, 5 },	-- Handful of Stardust
					},
					["lvl"] = 20,
					["groups"] = {
						{
							["itemID"] = 5494,	-- Handful of Stardust
							["questID"] = 1034,	-- The Ruins of Stardust
							["coord"] = { 33.9, 68.2, ASHENVALE },
						},
					},
				}),
				q(970, {	-- The Tower of Althalaxx (4/9)
					["qg"] = 3663,	-- Delgren the Purifier
					["sourceQuest"] = 967,	-- The Tower of Althalaxx (3/9) (Darkshore)
					["coord"] = { 26.2, 38.7, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5366, 1 },	-- Glowing Soul Gem
					},
					["lvl"] = 13,
				}),
				q(973, {	-- The Tower of Althalaxx (5/9)
					["qg"] = 3663,	-- Delgren the Purifier
					["sourceQuest"] = 970,	-- The Tower of Althalaxx (4/9)
					["coord"] = { 26.2, 38.6, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5533, 1 },	-- Ilkrud Magthrull's Tome
					},
					["lvl"] = 13,
					["groups"] = {
						{
							["itemID"] = 5533,	-- Ilkrud Magthrull's Tome
							["questID"] = 973,	-- The Tower of Althalaxx (5/9)
							["cr"] = 3664,	-- Ilkrud Magthrull
							["coord"] = { 25.2, 60.6, ASHENVALE },
						},
						i(5622),	-- Clergy Ring
						i(5613),	-- Staff of the Purifier
					},
				}),
				q(1140, {	-- The Tower of Althalaxx (6/9)
					["qg"] = 3663,	-- Delgren the Purifier
					["sourceQuest"] = 973,	-- The Tower of Althalaxx (5/9)
					["coord"] = { 26.2, 38.6, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 13,
				}),
				q(1167, {	-- The Tower of Althalaxx (7/9)
					["qg"] = 3663,	-- Delgren the Purifier
					["sourceQuest"] = 1140,	-- The Tower of Althalaxx (6/9)
					["coord"] = { 26.2, 38.6, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 13,
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
					["groups"] = {
						i(16889),	-- Polished Walking Staff
						i(16890),	-- Slatemetal Cutlass
					},
				}),
				q(6462, {	-- Troll Charm
					["qg"] = 12721,	-- Mitsuwa
					["coord"] = { 11.65, 34.84, ASHENVALE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 16602, 8 },	-- Troll Charm
					},
					["lvl"] = 19,
					["groups"] = {
						{
							["itemID"] = 16602,	-- Troll Charm
							["questID"] = 6462,	-- Troll Charm
							["provider"] = { "o", 178144 },	-- Troll Chest
							["coord"] = { 40.8, 32.9, ASHENVALE },
						},
					},
				}),
				q(23, {		-- Ursangous's Paw
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
					["cr"] = 12940,	-- Vorsha the Lasher
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						i(17692),	-- Horn Ring
					},
				}),
				q(6546, {	-- Warsong Outrider Update
					["qg"] = 12864,	-- Warsong Outrider
					["coord"] = { 83.6, 51.4, ASHENVALE },
					["description"] = "This quest is repeatable, but only available when the quest \"The Warsong Reports\" (Quest #6543) is in your quest log.",
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 16746, 1 },	-- Warsong Report
					},
					["lvl"] = 17,
					["groups"] = {
						{
							["itemID"] = 16765,	-- Warsong Outrider Update
							["questID"] = 6543,	-- The Warsong Reports
						},
					},
				}),
				q(6545, {	-- Warsong Runner Update
					["qg"] = 12863,	-- Warsong Runner
					["coord"] = { 12.2, 34.2, ASHENVALE },
					["description"] = "This quest is repeatable, but only available when the quest \"The Warsong Reports\" (Quest #6543) is in your quest log.",
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 16746, 1 },	-- Warsong Report
					},
					["lvl"] = 17,
					["groups"] = {
						{
							["itemID"] = 16763,	-- Warsong Runner Update
							["questID"] = 6543,	-- The Warsong Reports
						},
					},
				}),
				q(6581, {	-- Warsong Saw Blades
					["qg"] = 12724,	-- Pixel
					["coord"] = { 73, 61.4, ASHENVALE },
					["description"] = "This quest is repeatable, but only available when the quest \"Warsong Supplies\" (Quest #6571) is in your quest log.",
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 4369, 1 },	-- Deadly Blunderbuss
					},
					["lvl"] = 22,
					["groups"] = {
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
					["cost"] = {
						{ "i", 16746, 1 },	-- Warsong Report
					},
					["lvl"] = 17,
					["groups"] = {
						{
							["itemID"] = 16764,	-- Warsong Scout Update
							["questID"] = 6543,	-- The Warsong Reports
						},
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
					["groups"] = {
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