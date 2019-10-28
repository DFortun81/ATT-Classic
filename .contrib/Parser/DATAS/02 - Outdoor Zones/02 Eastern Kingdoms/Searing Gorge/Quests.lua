---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {	-- Eastern Kingdoms
		m(SEARING_GORGE, {	-- Searing Gorge
			n(-17, {	-- Quests
				q(4449, {	-- Caught!
					["lvl"] = 43,
					["provider"] = { "o", 173265 },	-- Wooden Outhouse
				}),
				q(7723, {	-- Curse These Fat Fingers
					["lvl"] = 45,
					["qg"] = 14627,	-- Hansel Heavyhands
					["g"] = {
						i(19126),	-- Slagplate Gauntlets
					},
					["coord"] = { 38.6, 27.8, SEARING_GORGE },
				}),
				q(3441, {	-- Divine Retribution
					["lvl"] = 40,
					["qg"] = 8479,	-- Kalaran Windblade
					["coord"] = { 39.1, 39.0, SEARING_GORGE },
				}),
				q(7724, {	-- Fiery Menace!
					["lvl"] = 45,
					["qg"] = 14627,	-- Hansel Heavyhands
					["g"] = {
						i(19125),	-- Seared Mail Girdle
					},
					["coord"] = { 38.6, 27.8, SEARING_GORGE },
				}),
				q(3443, {	-- Forging the Shaft
					["lvl"] = 40,
					["qg"] = 8479,	-- Kalaran Windblade
					["sourceQuest"] = 3442,	-- The Flawless Flame
					["coord"] = { 39.1, 39.0, SEARING_GORGE },
				}),
				q(7737, {	-- Gaining Acceptance
					["lvl"] = 40,
					["repeatable"] = true,
					["minReputation"] = { 59, FRIENDLY },	-- Thorium Brotherhood
					["maxReputation"] = { 59, FRIENDLY },	-- Thorium Brotherhood
					["qg"] = 14624,	-- Master Smith Burninate
					["coord"] = { 38.8, 28.5, SEARING_GORGE },
				}),
				q(7727, {	-- Incendosaurs? Whateverosaur is More Like It
					["lvl"] = 45,
					["qg"] = 14627,	-- Hansel Heavyhands
					["g"] = {
						i(19141),	-- Luffa
					},
					["coord"] = { 38.6, 27.8, SEARING_GORGE },
				}),
				q(7729, {	-- JOB OPPORTUNITY: Culling the Competition
					["lvl"] = 45,
					["provider"] = { "o", 179827 },	-- Wanted\/Missing\/Lost & Found
					["coord"] = { 37.7, 26.5, SEARING_GORGE },
				}),
				q(7702, {	-- Kill 'Em With Sleep Deprivation
					["u"] = 3,	-- Added in later phase
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 14628,	-- Evonice Sootsmoker
					["g"] = {
						i(19129),	-- Everglowing Robe
					},
					["coord"] = { 38.4, 27.7, SEARING_GORGE },
				}),
				q(4450, {	-- Ledger from Tanaris
					["lvl"] = 43,
					["provider"] = { "o", 173265 },	-- Wooden Outhouse
					["sourceQuest"] = 4449,	-- Caught!
					["g"] = {
						i(11860),	-- Charged Lightning Rod
						i(11861),	-- Girdle of Reprisal
					},
				}),
				q(7704, {	-- Look at the Size of It!
					["u"] = 3,	-- Added in later phase
					["lvl"] = 45,
					["races"] = ALLIANCE_ONLY,
					["provider"] = { "i", 18950 },	-- Chambermaid Pillaclencher's Pillow
					["g"] = {
						i(18951),	-- Evonice's Landin' Pilla
					},
				}),
				q(3377, {	-- Prayer to Elune
					["lvl"] = 40,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 8436,	-- Zamael Lunthistle
				}),
				q(3378, {	-- Prayer to Elune
					["lvl"] = 40,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 8436,	-- Zamael Lunthistle
					["sourceQuest"] = 3377,	-- Prayer to Elune
					["g"] = {
						i(10745),	-- Kaylari Shoulders
						i(10746),	-- Runesteel Vambraces
					},
				}),
				q(3372, {	-- Release Them
					["lvl"] = 40,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 8417,	-- Dying Archaeologist
					["sourceQuest"] = 3371,	-- Dwarven Justice
				}),
				q(8242, {	-- Restoring Fiery Flux Supplies via Heavy Leather
					["lvl"] = 45,
					["repeatable"] = true,
					["qg"] = 14624,	-- Master Smith Burninate
					["minReputation"] = { 59, NEUTRAL },	-- Thorium Brotherhood
					["maxReputation"] = { 59, NEUTRAL },	-- Thorium Brotherhood
					["sourceQuest"] = 7722,	-- What the Flux?
					["coord"] = { 38.8, 28.5, SEARING_GORGE },
				}),
				q(8241, {	-- Restoring Fiery Flux Supplies via Iron
					["lvl"] = 45,
					["repeatable"] = true,
					["qg"] = 14624,	-- Master Smith Burninate
					["minReputation"] = { 59, NEUTRAL },	-- Thorium Brotherhood
					["maxReputation"] = { 59, NEUTRAL },	-- Thorium Brotherhood
					["sourceQuest"] = 7722,	-- What the Flux?
					["coord"] = { 38.8, 28.5, SEARING_GORGE },
				}),
				q(7736, {	-- Restoring Fiery Flux Supplies via Kingsblood
					["lvl"] = 45,
					["repeatable"] = true,
					["qg"] = 14624,	-- Master Smith Burninate
					["minReputation"] = { 59, NEUTRAL },	-- Thorium Brotherhood
					["maxReputation"] = { 59, NEUTRAL },	-- Thorium Brotherhood
					["sourceQuest"] = 7722,	-- What the Flux?
					["coord"] = { 38.8, 28.5, SEARING_GORGE },
				}),
				q(3566, {	-- Rise, Obsidion!
					["lvl"] = 40,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 8417,	-- Dying Archaeologist
					["sourceQuest"] = 3372,	-- Release Them
					["g"] = {
						i(10740),	-- Centurion Legplates
						i(10741),	-- Lordrec Helmet
						i(10739),	-- Ring of Fortitude
					},
				}),
				q(7728, {	-- STOLEN: Smithing Tuyere and Lookout's Spyglass
					["lvl"] = 45,
					["provider"] = { "o", 179827 },	-- Wanted\/Missing\/Lost & Found
					--["objectID"] = 179827,	-- Wanted\/Missing\/Lost & Found
					["g"] = {
						i(19124),	-- Slagplate Leggings
						i(19123),	-- Everwarm Handwraps
					},
					["coord"] = { 37.7, 26.5, SEARING_GORGE },
				}),
				q(3463, {	-- Set Them Ablaze!
					["lvl"] = 40,
					["qg"] = 8509,	-- Squire Maltrake
					["sourceQuest"] = 3462,	-- Squire Maltrake
					["g"] = {
						i(10742),	-- Dragonflight Leggings
						i(10743),	-- Drakefire Headguard
						i(10744),	-- Axe of the Ebon Drake
					},
					["coord"] = { 39.1, 39.1, SEARING_GORGE },
				}),
				q(3462, {	-- Squire Maltrake
					["lvl"] = 40,
					["qg"] = 8479,	-- Kalaran Windblade
					["sourceQuest"] = 3454,	-- The Torch of Retribution
					["coord"] = { 39.1, 39.0, SEARING_GORGE },
				}),
				q(3367, {	-- Suntara Stones
					["lvl"] = 40,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 8284,	-- Dorius Stonetender
				}),
				q(3368, {	-- Suntara Stones
					["lvl"] = 40,
					["races"] = ALLIANCE_ONLY,
					["provider"] = { "i", 10443 },	-- Singed Letter
					["sourceQuest"] = 3367,	-- Suntara Stones
				}),
				q(3452, {	-- The Flame's Casing
					["lvl"] = 40,
					["qg"] = 8479,	-- Kalaran Windblade
					["sourceQuest"] = 3443,	-- Forging the Shaft
					["coord"] = { 39.1, 39.0, SEARING_GORGE },
				}),
				q(3442, {	-- The Flawless Flame
					["lvl"] = 40,
					["qg"] = 8479,	-- Kalaran Windblade
					["sourceQuest"] = 3441,	-- Divine Retribution
					["coord"] = { 39.1, 39.0, SEARING_GORGE },
				}),
				q(3181, {	-- The Horn of the Beast
					["lvl"] = 40,
					["races"] = ALLIANCE_ONLY,
				}),
				q(4451, {	-- The Key to Freedom
					["lvl"] = 43,
					["provider"] = { "i", 11818 }, -- Grimesilt Outhouse Key
				}),
				q(3453, {	-- The Torch of Retribution
					["lvl"] = 40,
					["qg"] = 8479,	-- Kalaran Windblade
					["sourceQuest"] = 3452,	-- The Flame's Casing
					["coord"] = { 39.1, 39.0, SEARING_GORGE },
				}),
				q(3454, {	-- The Torch of Retribution
					["lvl"] = 40,
					["qg"] = 8479,	-- Kalaran Windblade
					["sourceQuest"] = 3453,	-- The Torch of Retribution
					["g"] = {
						i(10515),	-- Torch of Retribution
					},
					["coord"] = { 39.1, 39.0, SEARING_GORGE },
				}),
				q(3481, {	-- Trinkets...
					["lvl"] = 40,
					["provider"] = { "o", 149502 },	-- Hoard of the Black Dragonflight
					["sourceQuest"] = 3463,	-- Set Them Ablaze!
					["g"] = {
						i(10569, {	-- Hoard of the Black Dragonflight
							{
								["itemID"] = 10575, -- Black Dragonflight Molt
								["questID"] = 4023,	-- A Taste of Flame
							},
						}),
					},
				}),
				q(7701, {	-- WANTED: Overseer Maltorius
					["lvl"] = 45,
					["provider"] = { "o", 179827 },	-- Wanted\/Missing\/Lost & Found
					--["objectID"] = 179827,	-- Wanted\/Missing\/Lost & Found
					["g"] = {
						i(19128),	-- Seared Mail Vest
						i(19127),	-- Charred Leather Tunic
					},
					["coord"] = { 37.7, 26.5, SEARING_GORGE },
				}),
				q(7722, {	-- What the Flux?
					["lvl"] = 45,
					["qg"] = 14624,	-- Master Smith Burninate
					["coord"] = { 38.8, 28.5, SEARING_GORGE },
				}),
			}),
		}),
	}),
};