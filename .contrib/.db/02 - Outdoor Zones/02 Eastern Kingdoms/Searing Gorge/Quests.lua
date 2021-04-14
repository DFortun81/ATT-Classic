---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(SEARING_GORGE, {
			n(QUESTS, {
				q(4449, {	-- Caught!
					["provider"] = { "o", 173265 },	-- Wooden Outhouse
					["lvl"] = 43,
				}),
				q(7723, {	-- Curse These Fat Fingers
					["qg"] = 14627,	-- Hansel Heavyhands
					["coord"] = { 38.6, 27.8, SEARING_GORGE },
					["lvl"] = 45,
					["g"] = {
						i(19126),	-- Slagplate Gauntlets
					},
				}),
				q(3441, {	-- Divine Retribution
					["qg"] = 8479,	-- Kalaran Windblade
					["coord"] = { 39.1, 39.0, SEARING_GORGE },
					["lvl"] = 40,
				}),
				q(3371, {	-- Dwarven Justice
					["qg"] = 8256,	-- Curator Thorius
					["sourceQuest"] = 3368,	-- Suntara Stones (2/2)
					["coord"] = { 71.4, 16.2, IRONFORGE },
					["maps"] = { IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(7724, {	-- Fiery Menace!
					["qg"] = 14627,	-- Hansel Heavyhands
					["coord"] = { 38.6, 27.8, SEARING_GORGE },
					["lvl"] = 45,
					["g"] = {
						i(19125),	-- Seared Mail Girdle
					},
				}),
				q(3443, {	-- Forging the Shaft
					["qg"] = 8479,	-- Kalaran Windblade
					["sourceQuest"] = 3442,	-- The Flawless Flame
					["coord"] = { 39.1, 39.0, SEARING_GORGE },
					["cost"] = {
						{ "i", 10551, 8 },	-- Thorium Plated Dagger
					},
					["lvl"] = 40,
				}),
				q(7737, {	-- Gaining Acceptance
					["qg"] = 14624,	-- Master Smith Burninate
					["minReputation"] = { 59, FRIENDLY },	-- Thorium Brotherhood
					["maxReputation"] = { 59, FRIENDLY },	-- Thorium Brotherhood
					["coord"] = { 38.8, 28.5, SEARING_GORGE },
					["repeatable"] = true,
					["lvl"] = 40,
				}),
				q(7727, {	-- Incendosaurs? Whateverosaur is More Like It
					["qg"] = 14627,	-- Hansel Heavyhands
					["coord"] = { 38.6, 27.8, SEARING_GORGE },
					["lvl"] = 45,
					["g"] = {
						i(19141),	-- Luffa
					},
				}),
				q(7729, {	-- JOB OPPORTUNITY: Culling the Competition
					["provider"] = { "o", 179827 },	-- Wanted\/Missing\/Lost & Found
					["coord"] = { 37.7, 26.5, SEARING_GORGE },
					["lvl"] = 45,
				}),
				un(NEVER_IMPLEMENTED, q(7702, {	-- Kill 'Em With Sleep Deprivation
					["qg"] = 14628,	-- Evonice Sootsmoker
					["coord"] = { 38.4, 27.7, SEARING_GORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["g"] = {
						un(NEVER_IMPLEMENTED, i(19129)),	-- Everglowing Robe
					},
				})),
				q(4450, {	-- Ledger from Tanaris
					["provider"] = { "o", 173265 },	-- Wooden Outhouse
					["sourceQuest"] = 4449,	-- Caught!
					["maps"] = { DUSTWALLOW_MARSH, SWAMP_OF_SORROWS },
					["cost"] = {
						{ "i", 11727, 1 },	-- Goodsteel Ledger
						{ "i", 11725, 20 },	-- Solid Crystal Leg Shaft
						{ "i", 11724, 1 },	-- Overdue Package
						{ "i", 11723, 1 },	-- Goodsteel's Balanced Flameberge
					},
					["lvl"] = 43,
					["g"] = {
						{
							["itemID"] = 11724,	-- Overdue Package
							["questID"] = 4450,	-- Ledger from Tanaris
							["coord"] = { 54.1, 55.8, DUSTWALLOW_MARSH },
						},
						{
							["itemID"] = 11723,	-- Goodsteel's Balanced Flameberge
							["questID"] = 4450,	-- Ledger from Tanaris
							["cr"] = 9916,	-- Jarquia
							["coords"] = {
								{ 94.4, 51.8, SWAMP_OF_SORROWS },
								{ 92.6, 65.6, SWAMP_OF_SORROWS },
							},
						},
						i(11860),	-- Charged Lightning Rod
						i(11861),	-- Girdle of Reprisal
					},
				}),
				un(NEVER_IMPLEMENTED, q(7704, {	-- Look at the Size of It!
					["provider"] = { "i", 18950 },	-- Chambermaid Pillaclencher's Pillow
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 45,
					["g"] = {
						un(NEVER_IMPLEMENTED, i(18951)),	-- Evonice's Landin' Pilla
					},
				})),
				q(3377, {	-- Prayer to Elune
					["qg"] = 8436,	-- Zamael Lunthistle
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(3378, {	-- Prayer to Elune
					["qg"] = 8436,	-- Zamael Lunthistle
					["sourceQuest"] = 3377,	-- Prayer to Elune
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 10458, 1 },	-- Prayer to Elune
					},
					["lvl"] = 40,
					["g"] = {
						i(10745),	-- Kaylari Shoulders
						i(10746),	-- Runesteel Vambraces
					},
				}),
				q(3372, {	-- Release Them
					["qg"] = 8417,	-- Dying Archaeologist
					["sourceQuest"] = 3371,	-- Dwarven Justice
					["coord"] = { 41.2, 25.6, SEARING_GORGE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 10442, 1 },	-- Mysterious Artifact
					},
					["lvl"] = 40,
					["groups"] = {
						{
							["itemID"] = 10442,	-- Mysterious Artifact
							["questID"] = 3372,	-- Release Them
							["coord"] = { 29.2, 25.9, SEARING_GORGE },
						},
					},
				}),
				q(8242, {	-- Restoring Fiery Flux Supplies via Heavy Leather
					["qg"] = 14624,	-- Master Smith Burninate
					["minReputation"] = { 59, NEUTRAL },	-- Thorium Brotherhood
					["maxReputation"] = { 59, NEUTRAL },	-- Thorium Brotherhood
					["sourceQuest"] = 7722,	-- What the Flux?
					["coord"] = { 38.8, 28.5, SEARING_GORGE },
					["cost"] = {
						{ "i", 18944, 2 },	-- Incendosaur Scale
						{ "i", 4234, 10 },	-- Heavy Leather
						{ "i", 3857, 1 },	-- Coal
					},
					["repeatable"] = true,
					["lvl"] = 45,
				}),
				q(8241, {	-- Restoring Fiery Flux Supplies via Iron
					["qg"] = 14624,	-- Master Smith Burninate
					["minReputation"] = { 59, NEUTRAL },	-- Thorium Brotherhood
					["maxReputation"] = { 59, NEUTRAL },	-- Thorium Brotherhood
					["sourceQuest"] = 7722,	-- What the Flux?
					["coord"] = { 38.8, 28.5, SEARING_GORGE },
					["cost"] = {
						{ "i", 18944, 2 },	-- Incendosaur Scale
						{ "i", 3575, 4 },	-- Iron Bar
						{ "i", 3857, 1 },	-- Coal
					},
					["repeatable"] = true,
					["lvl"] = 45,
				}),
				q(7736, {	-- Restoring Fiery Flux Supplies via Kingsblood
					["qg"] = 14624,	-- Master Smith Burninate
					["minReputation"] = { 59, NEUTRAL },	-- Thorium Brotherhood
					["maxReputation"] = { 59, NEUTRAL },	-- Thorium Brotherhood
					["sourceQuest"] = 7722,	-- What the Flux?
					["coord"] = { 38.8, 28.5, SEARING_GORGE },
					["cost"] = {
						{ "i", 18944, 2 },	-- Incendosaur Scale
						{ "i", 3356, 4 },	-- Kingsblood
						{ "i", 3857, 1 },	-- Coal
					},
					["repeatable"] = true,
					["lvl"] = 45,
				}),
				q(3566, {	-- Rise, Obsidion!
					["qg"] = 8417,	-- Dying Archaeologist
					["sourceQuest"] = 3372,	-- Release Them
					["coord"] = { 41.2, 25.6, SEARING_GORGE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 10447, 1 },	-- Head of Lathoric the Black
						{ "i", 10446, 1 },	-- Heart of Obsidion
					},
					["lvl"] = 40,
					["g"] = {
						{
							["itemID"] = 10447,	-- Head of Lathoric the Black
							["questID"] = 3566,	-- Rise, Obsidion!
							["cr"] = 8391,	-- Lathoric the Black
							["coord"] = { 41.6, 26.6, SEARING_GORGE },
						},
						{
							["itemID"] = 10446,	-- Heart of Obsidion
							["questID"] = 3566,	-- Rise, Obsidion!
							["cr"] = 8400,	-- Obsidion
							["coord"] = { 42.6, 27.0, SEARING_GORGE },
						},
						i(10740),	-- Centurion Legplates
						i(10741),	-- Lordrec Helmet
						i(10739),	-- Ring of Fortitude
					},
				}),
				q(7728, {	-- STOLEN: Smithing Tuyere and Lookout's Spyglass
					["provider"] = { "o", 179827 },	-- Wanted\/Missing\/Lost & Found
					["coord"] = { 37.7, 26.5, SEARING_GORGE },
					["cost"] = {
						{ "i", 18960, 1 },	-- Lookout's Spyglass
						{ "i", 18959, 1 },	-- Smithing Tuyere
					},
					["lvl"] = 45,
					["g"] = {
						i(19124),	-- Slagplate Leggings
						i(19123),	-- Everwarm Handwraps
					},
				}),
				q(3463, {	-- Set Them Ablaze!
					["qg"] = 8509,	-- Squire Maltrake
					["sourceQuest"] = 3462,	-- Squire Maltrake
					["coord"] = { 39.1, 39.1, SEARING_GORGE },
					["cost"] = {
						{ "i", 10515, 1 },	-- Torch of Retribution
					},
					["lvl"] = 40,
					["g"] = {
						i(10742),	-- Dragonflight Leggings
						i(10743),	-- Drakefire Headguard
						i(10744),	-- Axe of the Ebon Drake
					},
				}),
				q(3462, {	-- Squire Maltrake
					["qg"] = 8479,	-- Kalaran Windblade
					["sourceQuest"] = 3454,	-- The Torch of Retribution
					["coord"] = { 39.1, 39.0, SEARING_GORGE },
					["lvl"] = 40,
				}),
				q(3367, {	-- Suntara Stones (1/2)
					["qg"] = 8284,	-- Dorius Stonetender
					["coord"] = { 63.8, 60.8, SEARING_GORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(3368, {	-- Suntara Stones (2/2)
					["provider"] = { "i", 10443 },	-- Singed Letter
					["sourceQuest"] = 3367,	-- Suntara Stones (1/2)
					["description"] = "The Signed Letter will be on the ground after you finish escorting Dorius Stonetender.",
					["coord"] = { 74.5, 19.3, SEARING_GORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(3452, {	-- The Flame's Casing
					["qg"] = 8479,	-- Kalaran Windblade
					["sourceQuest"] = 3443,	-- Forging the Shaft
					["coord"] = { 39.1, 39.0, SEARING_GORGE },
					["cost"] = {
						{ "i", 10552, 1 },	-- Symbol of Ragnaros
					},
					["lvl"] = 40,
				}),
				q(3442, {	-- The Flawless Flame
					["qg"] = 8479,	-- Kalaran Windblade
					["sourceQuest"] = 3441,	-- Divine Retribution
					["coord"] = { 39.1, 39.0, SEARING_GORGE },
					["cost"] = {
						{ "i", 10511, 4 },	-- Golem Oil
						{ "i", 10509, 4 },	-- Heart of Flame
					},
					["lvl"] = 40,
				}),
				q(3181, {	-- The Horn of the Beast
					["provider"] = { "i", 10000 },	-- Margol's Horn
					["coord"] = { 73.0, 77.2, SEARING_GORGE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 10005, 1 },	-- Margol's Gigantic Horn
					},
					["lvl"] = 40,
				}),
				q(4451, {	-- The Key to Freedom
					["provider"] = { "i", 11818 },	-- Grimesilt Outhouse Key
					["lvl"] = 43,
				}),
				q(3453, {	-- The Torch of Retribution
					["qg"] = 8479,	-- Kalaran Windblade
					["sourceQuest"] = 3452,	-- The Flame's Casing
					["coord"] = { 39.1, 39.0, SEARING_GORGE },
					["lvl"] = 40,
				}),
				q(3454, {	-- The Torch of Retribution
					["qg"] = 8479,	-- Kalaran Windblade
					["sourceQuest"] = 3453,	-- The Torch of Retribution
					["coord"] = { 39.1, 39.0, SEARING_GORGE },
					["lvl"] = 40,
					["g"] = {
						i(10515),	-- Torch of Retribution
					},
				}),
				q(3481, {	-- Trinkets...
					["provider"] = { "o", 149502 },	-- Hoard of the Black Dragonflight
					["sourceQuest"] = 3463,	-- Set Them Ablaze!
					["lvl"] = 40,
					["g"] = {
						i(10569, {	-- Hoard of the Black Dragonflight
							{
								["itemID"] = 10575,	-- Black Dragonflight Molt
								["questID"] = 4023,	-- A Taste of Flame
								["altQuests"] = {
									4022,	-- A Taste of Flame
								},
							},
						}),
					},
				}),
				q(7701, {	-- WANTED: Overseer Maltorius
					["provider"] = { "o", 179827 },	-- Wanted\/Missing\/Lost & Found
					["coord"] = { 37.7, 26.5, SEARING_GORGE },
					["cost"] = {
						{ "i", 18946, 1 },	-- Head of Overseer Maltorius
					},
					["lvl"] = 45,
					["g"] = {
						{
							["itemID"] = 18946,	-- Head of Overseer Maltorius
							["questID"] = 7701,	-- WANTED: Overseer Maltorius
							["cr"] = 14621,	-- Overseer Maltorius
							["coord"] = { 41.8, 35.4, SEARING_GORGE },
						},
						i(19128),	-- Seared Mail Vest
						i(19127),	-- Charred Leather Tunic
					},
				}),
				q(7722, {	-- What the Flux?
					["qg"] = 14624,	-- Master Smith Burninate
					["coord"] = { 38.8, 28.5, SEARING_GORGE },
					["cost"] = {
						{ "i", 18922, 1 },	-- Secret Plans: Fiery Flux
					},
					["lvl"] = 45,
					["g"] = {
						{
							["itemID"] = 18922,	-- Secret Plans: Fiery Flux
							["questID"] = 7722,	-- What the Flux?
							["coord"] = { 40.6, 35.7, SEARING_GORGE },
						},
					},
				}),
			}),
		}),
	}),
};