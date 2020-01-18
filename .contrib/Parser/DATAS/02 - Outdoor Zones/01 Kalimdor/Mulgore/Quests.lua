---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {	-- Kalimdor
		m(MULGORE, {	-- Mulgore
			n(-17, {	-- Quests
				q(752, {	-- A Humble Task (1/2)
					["qg"] = 2981,	-- Chief Hawkwind
					["races"] = HORDE_ONLY,
					["coord"] = { 44.2, 76.1, MULGORE },
				}),
				q(753, {	-- A Humble Task (2/2)
					["qg"] = 2991,	-- Greatmother Hawkwind
					["races"] = HORDE_ONLY,
					["coord"] = { 50.0, 81.2, MULGORE },
				}),
				q(833, {	-- A Sacred Burial
					["lvl"] = 7,
					["races"] = HORDE_ONLY,
					["qg"] = 3233,	-- Lorekeeper Raintotem
				}),
				q(1656, {	-- A Task Unfinished
					["races"] = HORDE_ONLY,
					["qg"] = 6775,	-- Antur Fallow
					["coord"] = { 38.5, 81.5, MULGORE },
					["g"] = {
						i(4540),	-- Tough Hunk of Bread
						i(159),	-- Refreshing Spring Water
					},
				}),
				q(781, {	-- Attack on Camp Narache
					["races"] = HORDE_ONLY,
					["g"] = {
						i(4911),	-- Thick Bark Buckler
					},
				}),
				q(3376, {	-- Break Sharptusk!
					["lvl"] = 3,
					["qg"] = 3209,	-- Brave Windfeather
					["races"] = HORDE_ONLY,
					["g"] = {
						i(10635),	-- Painted Chain Leggings
						i(10636),	-- Nomadic Gloves
					},
				}),
				q(743, {	-- Dangers of the Windfury
					["lvl"] = 5,
					["races"] = HORDE_ONLY,
					["qg"] = 2985,	-- Ruul Eagletalon
					["coord"] = { 47.4, 62.0, MULGORE },
				}),
				q(746, {	-- Dwarven Digging
					["lvl"] = 6,
					["races"] = HORDE_ONLY,
					["qg"] = 2993,	-- Baine Bloodhoof
					["coord"] = { 47.5, 60.2, MULGORE },
					["g"] = {
						i(4969),	-- Fortified Bindings
						i(4970),	-- Rough-hewn Kodo Leggings
						i(4702),	-- Prospector's Pick
					},
				}),
				q(775, {	-- Journey into Thunder Bluff
					["lvl"] = 3,
					["races"] = HORDE_ONLY,
					["qg"] = 2994,	-- Ancestral Spirit
				}),
				q(854, {	-- Journey to the Crossroads
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
					["races"] = {
						6,	-- Tauren
					},
				}),
				q(766, {	-- Mazzranache
					["lvl"] = 5,
					["qg"] = 3055,	-- Maur Raincaller
					["races"] = HORDE_ONLY,
					["g"] = {
						i(4972),	-- Cliff Runner Boots
						i(4973),	-- Plains Hunter Wristguards
					},
				}),
				q(748, {	-- Poison Water
					["lvl"] = 4,
					["races"] = { TAUREN },
					["qg"] = 2948,	-- Mull Thunderhorn
					["coord"] = { 48.5, 60.4, MULGORE },
				}),
				q(757, {	-- Rite of Strength
					["qg"] = 2982,	-- Seer Graytongue
					["races"] = HORDE_ONLY,
					["coord"] = { 42.6, 92.2, MULGORE },
					["g"] = {
						i(1382),	-- Rock Mace
						i(1383),	-- Stone Tomahawk
						i(2137),	-- Whittling Knife
						i(5776),	-- Elder's Cane
						i(5777),	-- Brave's Axe
					},
				}),
				q(767, {	-- Rite of Vision
					["lvl"] = 3,
					["races"] = HORDE_ONLY,
					["qg"] = 2993,	-- Baine Bloodhoof
					["coord"] = { 47.5, 60.2, MULGORE },
				}),
				q(771, {	-- Rite of Vision
					["lvl"] = 3,
					["races"] = HORDE_ONLY,
					["qg"] = 3054,	-- Zarlman Two-Moons
					["coord"] = { 47.8, 57.5, MULGORE },
				}),
				q(772, {	-- Rite of Vision
					["lvl"] = 3,
					["races"] = HORDE_ONLY,
					["qg"] = 3054,	-- Zarlman Two-Moons
					["coord"] = { 47.8, 57.5, MULGORE },
					["g"] = {
						i(4906),	-- Rainwalker Boots
						i(4958),	-- Sun-beaten Cloak
					},
				}),
				q(773, {	-- Rite of Wisdom
					["lvl"] = 3,
					["races"] = HORDE_ONLY,
					["qg"] = 3233,	-- Lorekeeper Raintotem
				}),
				q(763, {	-- Rites of the Earthmother
					["qg"] = 2981,	-- Chief Hawkwind
					["races"] = HORDE_ONLY,
					["coord"] = { 44.2, 76.1, MULGORE },
				}),
				q(755, {	-- Rites of the Earthmother
					["qg"] = 2981,	-- Chief Hawkwind
					["races"] = HORDE_ONLY,
					["coord"] = { 44.2, 76.1, MULGORE },
				}),
				q(776, {	-- Rites of the Earthmother
					["lvl"] = 3,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(4909),	-- Kodo Hunter's Leggings
					},
				}),
				q(745, {	-- Sharing the Land
					["qg"] = 2993,	-- Baine Bloodhoof
					["races"] = HORDE_ONLY,
					["coord"] = { 47.5, 60.2, MULGORE },
					["g"] = {
						i(4960),	-- Flash Pellet
					},
				}),
				q(765, {	-- Supervisor Fizsprocket
					["lvl"] = 5,
					["races"] = HORDE_ONLY,
					["qg"] = 2988,	-- Morin Cloudstalker
					["g"] = {
						i(4974),	-- Compact Fighting Knife
						i(4964),	-- Goblin Smasher
					},
				}),
				q(761, {	-- Swoop Hunting
					["lvl"] = 4,
					["races"] = HORDE_ONLY,
					["qg"] = 2947,	-- Harken Windtotem
					["coord"] = { 48.7, 59.3, MULGORE },
				}),
				q(780, {	-- The Battleboars
					["qg"] = 2980,	-- Grull Hawkwind
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 750, -- The Hunt Continues
					["coord"] = { 44.9, 77.1, MULGORE },
					["g"] = {
						i(6059),	-- Nomadic Vest
						i(4540),	-- Tough Hunk of Bread
					},
				}),
				q(770, {	-- The Demon Scarred Cloak
					["lvl"] = 6,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(4971),	-- Skorn's Hammer
						i(3079),	-- Skorn's Rifle
					},
				}),
				q(747, {	-- The Hunt Begins
					["qg"] = 2980,	-- Grull Hawkwind
					["races"] = HORDE_ONLY,
					["coord"] = { 44.9, 77.1, MULGORE },
					["g"] = {
						i(4954),	-- Nomadic Belt
						i(4910),	-- Painted Chain Gloves
					},
				}),
				q(750, {	-- The Hunt Continues
					["qg"] = 2980,	-- Grull Hawkwind
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 747, -- The Hunt Begins
					["coord"] = { 44.9, 77.1, MULGORE },
					["g"] = {
						i(4908),	-- Nomadic Bracers
						i(4913),	-- Painted Chain Belt
					},
				}),
				q(861, {	-- The Hunter's Way
					["qg"] = 3052,	-- Skorn Whitecloud
					["isBreadcrumb"] = true,
					["coord"] = { 46.76, 60.22, MULGORE },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(751, {	-- The Ravaged Caravan
					["lvl"] = 5,
					["races"] = HORDE_ONLY,
					["provider"] = { "o", 2908 },	-- Sealed Supply Crate
				}),
				q(749, {	-- The Ravaged Caravan
					["lvl"] = 5,
					["races"] = HORDE_ONLY,
					["qg"] = 2988,	-- Morin Cloudstalker
				}),
				q(764, {	-- The Venture Co.
					["lvl"] = 5,
					["races"] = HORDE_ONLY,
					["qg"] = 2988,	-- Morin Cloudstalker
				}),
				q(758, {	-- Thunderhorn Cleansing
					["lvl"] = 4,
					["races"] = { TAUREN },
					["sourceQuest"] = 5415, -- Thunderhorn Totem
					["g"] = {
						i(4963),	-- Thunderhorn Cloak
					},
				}),
				q(756, {	-- Thunderhorn Totem
					["lvl"] = 4,
					["races"] = { TAUREN },
					["qg"] = 2948,	-- Mull Thunderhorn
					["coord"] = { 48.5, 60.4, MULGORE },
				}),
				q(3094, { 	-- Verdant Note
					["qg"] = 2980,	-- Grull Hawkwind
					["races"] = { TAUREN },
					["classes"] = { DRUID },
					["sourceQuest"] = 747, -- The Hunt Begins
					["coord"] = { 44.9, 77.1, MULGORE },
				}),
				q(5844, {	-- Welcome!
					["provider"] = { "i", 14650 },	-- Camp Narache Gift Voucher
					["races"] = HORDE_ONLY,
					["u"] = 2,
					["g"] = {
						un(2, i(13584)),	-- Diablo Stone
						un(2, i(13583)),	-- Panda Collar
						un(2, i(13582)),	-- Zergling Leash
					},
				}),
				q(760, {	-- Wildmane Cleansing
					["lvl"] = 4,
					["races"] = { TAUREN },
					["g"] = {
						i(3443),	-- Ceremonial Tomahawk
						i(4961),	-- Dreamwatcher Staff
					},
				}),
				q(759, {	-- Wildmane Totem
					["lvl"] = 4,
					["races"] = { TAUREN },
				}),
				q(754, {	-- Winterhoof Cleansing
					["lvl"] = 4,
					["races"] = { TAUREN },
					["qg"] = 2948,	-- Mull Thunderhorn
					["coord"] = { 48.5, 60.4, MULGORE },
				}),
			}),
		}),
	}),
};