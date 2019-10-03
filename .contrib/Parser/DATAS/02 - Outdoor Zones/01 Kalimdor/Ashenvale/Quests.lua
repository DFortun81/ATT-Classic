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
				}),
				q(1044, {	-- Answered Questions
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
					["g"] = {
						i(5817),	-- Lunaris Bow
						i(5818),	-- Moonbeam Wand
					},
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
				}),
				q(216, {	-- Between a Rock and a Thistlefur
					["qg"] = 12757,	-- Karang Amakkar
					["coord"] = { 11.89, 34.53, ASHENVALE },
					["lvl"] = 21,
					["races"] = HORDE_ONLY,
				}),
				q(1054, {	-- Culling the Threat
					["lvl"] = 18,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3691,	-- Raene Wolfrunner
					["g"] = {
						i(1970),	-- Restoring Balm
					},
				}),
				q(1016, {	-- Elemental Bracers
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3885,	-- Sentinel Velene Starstrike
					["g"] = {
						i(12220),	-- Intact Elemental Bracer
					},
				}),
				q(1033, {	-- Elune's Tear
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3894,	-- Pelturas Whitemoon
				}),
				q(1035, {	-- Fallen Sky Lake
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3894,	-- Pelturas Whitemoon
					["g"] = {
						i(5814),	-- Snapbrook Armor
						i(6722),	-- Beastial Manacles
						i(17047),	-- Luminescent Amice
					},
				}),
				q(1011, {	-- Forsaken Diseases
					["lvl"] = 24,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3848,	-- Kayneth Stillwind
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
				}),
				q(4581, {	-- Kayneth Stillwind
					["lvl"] = 24,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3845,	-- Shindrell Swiftfire
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
				}),
				q(1017, {	-- Mage Summoner
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(5816),	-- Light of Elune
					},
				}),
				q(6442, {	-- Naga at the Zoram Strand
					["qg"] = 12719,	-- Marukai
					["coord"] = { 11.69, 34.90, ASHENVALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 14,
				}),
				q(1085, {	-- On Guard in Stonetalon
					["lvl"] = 17,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 4080,	-- Kaela Shadowspear
				}),
				q(1070, {	-- On Guard in Stonetalon
					["lvl"] = 17,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 4079,	-- Sentinel Thenysil
				}),
				q(1020, {	-- Orendil's Cure
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3847,	-- Orendil Broadleaf
				}),
				q(1040, {	-- Passage to Booty Bay
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
				}),
				q(1134, {	-- Pridewings of Stonetalon
					["lvl"] = 18,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3845,	-- Shindrell Swiftfire
				}),
				q(1023, {	-- Raene's Cleansing
					["lvl"] = 18,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3891,	-- Teronis' Corpse
				}),
				q(1055, {	-- Raene's Cleansing
					["lvl"] = 18,
					["races"] = ALLIANCE_ONLY,
					--["objectID"] = 19024,	-- Hidden Shrine
				}),
				q(1030, {	-- Raene's Cleansing
					["lvl"] = 18,
					["races"] = ALLIANCE_ONLY,
				}),
				q(1029, {	-- Raene's Cleansing
					["lvl"] = 18,
					["races"] = ALLIANCE_ONLY,
				}),
				q(1045, {	-- Raene's Cleansing
					["lvl"] = 18,
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(5388),	-- Ran Bloodtooth's Skull
					},
				}),
				q(1027, {	-- Raene's Cleansing
					["lvl"] = 18,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3916,	-- Shael'dryn
				}),
				q(1026, {	-- Raene's Cleansing
					["lvl"] = 18,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3916,	-- Shael'dryn
					["g"] = {
						i(5475),	-- Wooden Key
					},
				}),
				q(991, {	-- Raene's Cleansing
					["lvl"] = 18,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3691,	-- Raene Wolfrunner
				}),
				q(1024, {	-- Raene's Cleansing
					["lvl"] = 18,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3691,	-- Raene Wolfrunner
				}),
				q(1028, {	-- Raene's Cleansing
					["lvl"] = 18,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3916,	-- Shael'dryn
					["g"] = {
						i(5462),	-- Dartol's Rod of Transformation
					},
				}),
				q(1046, {	-- Raene's Cleansing
					["lvl"] = 18,
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(5815),	-- Glacial Stone
						i(17046),	-- Gutterblade
						i(1116),	-- Ring of Pure Silver
					},
				}),
				q(1009, {	-- Ruuzel
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3846,	-- Talen
					["g"] = {
						i(5812),	-- Robes of Antiquity
					},
				}),
				q(6441, {	-- Satyr Horns
					["qg"] = 12724,	-- Pixel
					["coord"] = { 73.06, 61.48, ASHENVALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 21,
				}),
				q(1032, {	-- Satyr Slaying!
					["lvl"] = 26,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3901,	-- Illiyana
				}),
				q(7865, {	-- Sentinel Advanced Care Package
					["lvl"] = 45,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 14753,	-- Illiyana Moonblaze
					["g"] = {
						i(19152),	-- Sentinel Advanced Care Package
					},
				}),
				q(7863, {	-- Sentinel Basic Care Package
					["lvl"] = 25,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 14753,	-- Illiyana Moonblaze
					["g"] = {
						i(19150),	-- Sentinel Basic Care Package
					},
				}),
				q(7864, {	-- Sentinel Standard Care Package
					["lvl"] = 35,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 14753,	-- Illiyana Moonblaze
					["g"] = {
						i(19151),	-- Sentinel Standard Care Package
					},
				}),
				q(24, {	-- Shadumbra's Head
					["provider"] = { "i", 16304 },	-- Shadumbra's Head
					["cr"] = 12677,	-- Shadumbra
					["lvl"] = 20,
					["races"] = HORDE_ONLY,
				}),
				q(2, {	-- Sharptalon's Claw
					["provider"] = { "i", 16305 },	-- Sharptalon's Claw
					["cr"] = 12676,	-- Sharptalon
					["lvl"] = 20,
					["races"] = HORDE_ONLY,
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
				}),
				q(1007, {	-- The Ancient Statuette
					["lvl"] = 19,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3846,	-- Talen
				}),
				q(6383, {	-- The Ashenvale Hunt
					["qg"] = 12696,	-- Senani Thunderheart
					["coord"] = { 73.78, 61.47, ASHENVALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
				}),
				q(1039, {	-- The Barrens Port
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
				}),
				q(1918, {	-- The Befouled Element
					["provider"] = { "i", 16408 },	-- Befouled Water Globe
					["cr"] = 12759,	-- Tideress
					["races"] = HORDE_ONLY,
					["lvl"] = 23,
				}),
				q(1031, {	-- The Branch of Cenarius
					["lvl"] = 26,
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(5820),	-- Faerie Mantle
						i(11229),	-- Brightscale Girdle
					},
				}),
				q(1041, {	-- The Caravan Road
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
				}),
				q(1042, {	-- The Carevin Family
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
				}),
				q(1022, {	-- The Howling Vale
					["lvl"] = 25,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3880,	-- Sentinel Melyria Frostshadow
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
					["coord"] = { 70.00, 71.16, ASHENVALE},
					["races"] = HORDE_ONLY,
					["lvl"] = 23,
					["g"] = {
						i(16740),	-- Shredder Operating Gloves
						i(16741),	-- Oilrag Handwraps
					},
				}),
				q(1034, {	-- The Ruins of Stardust
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3894,	-- Pelturas Whitemoon
				}),
				q(1043, {	-- The Scythe of Elune
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
				}),
				q(970, {	-- The Tower of Althalaxx
					["lvl"] = 13,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3663,	-- Delgren the Purifier
					["sourceQuest"] = 967,	-- The Tower of Althalaxx
				}),
				q(973, {	-- The Tower of Althalaxx
					["lvl"] = 13,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3663,	-- Delgren the Purifier
					["g"] = {
						i(5622),	-- Clergy Ring
						i(5613),	-- Staff of the Purifier
					},
					["sourceQuest"] = 970,	-- The Tower of Althalaxx
				}),
				q(1140, {	-- The Tower of Althalaxx
					["lvl"] = 13,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3663,	-- Delgren the Purifier
					["sourceQuest"] = 973,	-- The Tower of Althalaxx
				}),
				q(1167, {	-- The Tower of Althalaxx
					["lvl"] = 13,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3663,	-- Delgren the Purifier
					["sourceQuest"] = 1140,	-- The Tower of Althalaxx
				}),
				q(1008, {	-- The Zoram Strand
					["lvl"] = 14,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3845,	-- Shindrell Swiftfire
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
					["cr"] = 12678,	-- Ursangous
					["lvl"] = 20,
					["races"] = HORDE_ONLY,
				}),
				q(1037, {	-- Velinde Starsong
					["lvl"] = 25,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3880,	-- Sentinel Melyria Frostshadow
				}),
				q(1038, {	-- Velinde's Effects
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
				}),
				q(1021, {	-- Vile Satyr! Dryads in Danger!
					["lvl"] = 26,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 3901,	-- Illiyana
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
					["repeatable"] = true,
					["coord"] = { 83.6, 51.4, ASHENVALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
					["g"] = {
						i(16765),	-- Warsong Outrider Update
					},
				}),
				q(6545, {	-- Warsong Runner Update
					["qg"] = 12863,	-- Warsong Runner
					["repeatable"] = true,
					["coord"] = { 12.2, 34.2, ASHENVALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
					["g"] = {
						i(16763),	-- Warsong Runner Update
					},
				}),
				q(6581, {	-- Warsong Saw Blades
					["qg"] = 12724,	-- Pixel
					["repeatable"] = true,
					["coord"] = { 73.06, 61.48, ASHENVALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 22,
					["g"] = {
						i(16742),	-- Warsong Saw Blades
					},
				}),
				q(6547, {	-- Warsong Scout Update
					["qg"] = 12862,	-- Warsong Scout
					["repeatable"] = true,
					["coord"] = { 71.04, 68.22, ASHENVALE },
					["lvl"] = 17,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(16764),	-- Warsong Scout Update
					},
				}),
				q(6571, {	-- Warsong Supplies
					["qg"] = 11820,	-- Locke Okarr
					["coord"] = { 71.40, 67.64, ASHENVALE},
					["races"] = HORDE_ONLY,
					["lvl"] = 22,
					["g"] = {
						i(16975),	-- Warsong Sash
						i(16977),	-- Warsong Boots
						i(16978),	-- Warsong Gauntlets
					},
				}),
			}),
		}),
	}),
};