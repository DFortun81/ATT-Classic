---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {	-- Kalimdor
		m(THOUSAND_NEEDLES, {	-- Thousand Needles
			n(-17, {	-- Quests
				q(1175, {	-- A Bump in the Road
					["qg"] = 4629,	-- Trackmaster Zherin
					--["coord"] = { },
					["lvl"] = 28,
				}),
				q(4821, {	-- Alien Egg
					["qg"] = 10539,	-- Hagar Lightninghoof
					["coord"] = { 44.64, 50.29, THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 24,
				}),
				q(5088, {	-- Arikara
					["qg"] = 4046,	-- Magatha Grimtotem
					["sourceQuest"] = 5062,	-- Sacred Fire
					["coord"] = { 69.85, 30.90, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["lvl"] = 24,
					["g"] = {
						i(15464),	-- Brute Hammer
						i(15465),	-- Stingshot Wand
						i(15466),	-- Clink Shield
					},
				}),
				q(4881, {	-- Assassination Plot
					["provider"] = { "o", 12564 },	-- Assassination Note
					["cr"] = 10617,	-- Galak Messenger
					["description"] = "The item that starts this quest is dropped by Galak Messengers.",
					["races"] = HORDE_ONLY,
					["lvl"] = 23,
				}),
				q(1118, {	-- Back to Booty Bay
					["qg"] = 4452,	-- Kravel Koalbeard
					--["coord"] = { },
					["lvl"] = 35,
				}),
				q(1114, {	-- Delivery to the Gnomes
					["qg"] = 4452,	-- Kravel Koalbeard
					--["coord"] = { },
					["lvl"] = 30,
				}),
				q(1116, {	-- Dream Dust in the Swamp
					["qg"] = 773,	-- Krazek
					["sourceQuest"] = 1115,	-- The Rumormonger
					--["coord"] = { },
					["lvl"] = 30,
				}),
				q(1107, {	-- Encrusted Tail Fins
					["qg"] = 4453,	-- Wizzle Brassbolts
					--["coord"] = { },
					["lvl"] = 28,
				}),
				q(5361, {	-- Family Tree
					["qg"] = 10537,	-- Cliffwatcher Longhorn
					["coord"] = { 45.65, 50.80, THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 32,
				}),
				q(1394, {	-- Final Passage
					["qg"] = 4488, 	-- Parqual Fintallas
					["sourceQuest"] = 6628,	-- Test of Lore
					["coord"] = { 57.75, 65.39, UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
					["g"] = {
						i(6804),	-- Windstorm Hammer
						i(6806),	-- Dancing Flame
					},
				}),
				q(4904, {	-- Free at Last
					["qg"] = 10646,	-- Lakota Windsong
					["coord"] = { 37.99, 26.52, THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
					["g"] = {
						i(15469),	-- Windsong Cinch
						i(15468),	-- Windsong Drape
					},
				}),
				q(1120, {	-- Get the Gnomes Drunk
					["qg"] = 4452,	-- Kravel Koalbeard
					["sourceQuest"] = 1119,	-- Zanzil's Mixture and a Fool's Stout
					["isBreadcrumb"] = true,
					--["coord"] = { },
					["lvl"] = 35,
				}),
				q(1121, {	-- Get the Goblins Drunk
					["qg"] = 4452,	-- Kravel Koalbeard
					["sourceQuest"] = 1119,	-- Zanzil's Mixture and a Fool's Stout
					["isBreadcrumb"] = true,
					--["coord"] = { },
					["lvl"] = 35,
				}),
				q(1174, {	-- Gnomes Win!
					["g"] = {
						i(5857),	-- Gnome Prize Box
					},
				}),
				q(1178, {	-- Goblin Sponsorship
					["qg"] = 4630,	-- Pozzik
					["sourceQuest"] = 1176,	-- Load Lightening
					--["coord"] = { },
					["lvl"] = 29,
				}),
				q(1180, {	-- Goblin Sponsorship
					["qg"] = 3391,	-- Gazlowe
					["sourceQuest"] = 1178,	-- Goblin Sponsorship
					--["coord"] = { },
					["lvl"] = 29,
				}),
				q(1181, {	-- Goblin Sponsorship
					["qg"] = 4631,	-- Wharfmaster Lozgil
					["sourceQuest"] = 1180,	-- Goblin Sponsorship
					--["coord"] = { },
					["lvl"] = 29,
				}),
				q(1182, {	-- Goblin Sponsorship
					["qg"] = 2496,	-- Baron Revilgaz
					["sourceQuest"] = 1181,	-- Goblin Sponsorship
					--["coord"] = { },
					["lvl"] = 29,
					["g"] = {
						i(5851),	-- Cozzle's Key
					},
				}),
				q(1183, {	-- Goblin Sponsorship
					["qg"] = 2496,	-- Baron Revilgaz
					["sourceQuest"] = 1182,	-- Goblin Sponsorship
					--["coord"] = { },
					["lvl"] = 29,
				}),
				q(1099, {	-- Goblins Win!
					["g"] = {
						i(5858),	-- Goblin Prize Box
					},
				}),
				q(5064, {	-- Grimtotem Spying
					["qg"] = 10537,	-- Cliffwatcher Longhorn
					["sourceQuest"] = 4841,	-- Pacify the Centaur
					["coord"] = { 45.65, 50.80, THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 24,
					["g"] = {
						i(15457),	-- Desert Shoulders
						i(15458),	-- Tundra Boots
						i(15459),	-- Grimtoll Wristguards
					},
				}),
				q(1105, {	-- Hardened Shells
					["qg"] = 4453,	-- Wizzle Brassbolts
					--["coord"] = { },
					["lvl"] = 28,
				}),
				q(5762, {	-- Hemet Nesingwary
					["qg"] = 4452,	-- Kravel Koalbeard
					--["coord"] = { },
					["lvl"] = 28,
				}),
				q(4770, {	-- Homeward Bound
					["qg"] = 10427,	-- Pao'ka Swiftmountain
					--["coord"] = { },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
				}),
				q(5151, {	-- Hypercapacitor Gizmo
					["qg"] = 10941,	-- Wizlo Bearingshiner
					["coord"] = { 21.44, 32.55, THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 24,
					["g"] = {
						i(15467),	-- Inventor's League Ring
					},
				}),
				q(1108, {	-- Indurium
					["qg"] = 4618,	-- Martek the Exiled
					["sourceQuest"] = 1106,	-- Martek the Exiled
					--["coord"] = { },
					["lvl"] = 28,
				}),
				q(1192, {	-- Indurium Ore
					["lvl"] = 29,
				}),
				q(1190, {	-- Keeping Pace
					["qg"] = 4630,	-- Pozzik
					["sourceQuest"] = 1137,	-- News for Frizzle
					--["coord"] = { },
					["lvl"] = 29,
				}),
				q(1176, {	-- Load Lightening
					["qg"] = 4630,	-- Pozzik
					--["coord"] = { },
					["lvl"] = 29,
				}),
				q(1100, {	-- Lonebrow's Journal
					["provider"] = { "i", 5790 },	-- Lonebrow's Journal
					--["coord"] = { },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 29,
				}),
				q(1106, {	-- Martek the Exiled
					["qg"] = 4454,	-- Fizzle Brassbolts
					--["coord"] = { },
					["lvl"] = 26,
				}),
				q(4542, {	-- Message to Freewind Post
					["qg"] = 10079,	-- Brave Moonhorn
					["coord"] = { 32.23, 22.17, THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 23,
				}),
				q(1137, {	-- News for Fizzle
					["qg"] = 4618,	-- Martek the Exiled
					["sourceQuest"] = 1108,	-- Indurium
					--["coord"] = { },
					["lvl"] = 28,
					["g"] = {
						i(6729),	-- Fizzle's Zippy Lighter
						i(6732),	-- Gnomish Mechanic's Gloves
					},
				}),
				q(4841, {	-- Pacify the Centaur
					["qg"] = 10537,	-- Cliffwatcher Longhorn
					["sourceQuest"] = 4542,	-- Message to Freewind Post
					["coord"] = { 45.65, 50.80, THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 23,
				}),
				q(1112, {	-- Parts for Kravel
					["qg"] = 3453,	-- Wharfmaster Dizzywig
					["sourceQuest"] = 1111,	-- Wharfmaster Dizzywig
					--["coord"] = { },
					["lvl"] = 30,
				}),
				q(1148, {	-- Parts of the Swarm
					["provider"] = { "i", 5877 },	-- Cracked Silithid Carapace
					["crs"] = {
						4133,	-- Silithid Hive Drone
						4130,	-- Silithid Searcher
						4131,	-- Silithid Invader
						4132,	-- Silithid Ravager
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 28,
				}),
				q(1184, {	-- Parts of the Swarm
					["qg"] = 3428,	-- Korran
					["sourceQuest"] = 1148,	-- Parts of the Swarm
					--["coord"] = { },
					["races"] = HORDE_ONLY,
					["lvl"] = 28,
					["g"] = {
						i(6737),	-- Dryleaf Pants
						i(6738),	-- Bleeding Crescent
					},
				}),
				q(4966, {	-- Protect Kanati Greycloud
					["qg"] = 10638,	-- Kanati Greycloud
					["sourceQuest"] = 4881,	-- Assassination Plot
					["coord"] = { 21.27, 32.03, THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 23,
					["g"] = {
						i(15461),	-- Lightheel Boots
						i(15462),	-- Loamflake Bracers
						i(15463),	-- Palestrider Gloves
					},
				}),
				q(1187, {	-- Razzeric's Tweaking
					["qg"] = 4706,	-- Razzeric
					["sourceQuest"] = 1186,	-- The Eighteenth Pilot
					--["coord"] = { },
					["lvl"] = 29,
				}),
				q(1122, {	-- Report Back to Fizzlebub
					["qg"] = 4452,	-- Kravel Koalbeard
					["sourceQuests"] = {
						1120,	-- Get the Gnomes Drunk
						1121,	-- Get the Goblins Drunk
					},
					--["coord"] = { },
					["lvl"] = 35,
					["races"] = HORDE_ONLY,
				}),
				q(1194, {	-- Rizzle's Schematics
					["provider"] = { "o", 20805 }, 	-- Rizzle's Unguarded Plans
					["sourceQuest"] = 1190,	-- Keeping Pace
					--["coord"] = { },
					["lvl"] = 29,
				}),
				q(1110, {	-- Rocket Car Parts
					["qg"] = 4452,	-- Kravel Koalbeard
					--["coord"] = { },
					["lvl"] = 28,
				}),
				q(1117, {	-- Rumors for Kravel
					["qg"] = 773,	-- Krazek
					["sourceQuest"] = 1116,	-- Dream Dust in the Swamp
					--["coord"] = { },
					["lvl"] = 30,
				}),
				q(5062, {	-- Sacred Fire
					["qg"] = 10428,	-- Motega Firemane
					["sourceQuest"] = 4865,	-- Serpent Wild
					["coord"] = { 21.55, 32.34, THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 24,
				}),
				q(1188, {	-- Safety First
					["qg"] = 4706,	-- Razzeric
					["sourceQuest"] = 1187,	-- Razzeric's Tweaking
					--["coord"] = { },
					["lvl"] = 29,
				}),
				q(1189, {	-- Safety First
					["qg"] = 4708,	-- Shreev
					["sourceQuest"] = 1188,	-- Safety First
					["lvl"] = 29,
					["g"] = {
						i(6726),	-- Razzeric's Customized Seatbelt
						i(6727),	-- Razzeric's Racing Grips
					},
				}),
				q(1104, {	-- Salt Flat Venom
					["qg"] = 4454,	-- Fizzle Brassbolts
					--["coord"] = { },
					["lvl"] = 28,
				}),
				q(4865, {	-- Serpent Wild
					["qg"] = 10539,	-- Hagar Lightninghoof
					["sourceQuest"] = 4821,	-- Alien Egg
					["coord"] = { 44.64, 50.29, THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 24,
				}),
				q(1150, {	-- Test of Endurance
					["qg"] = 2986,	-- Dorn Plainstalker
					["sourceQuest"] = 1149,	-- Test of Faith
					["coord"] = { 53.94, 41.49, THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
					["g"] = {
						i(5845),	-- Flank of Meat
					},
				}),
				q(1149, {	-- Test of Faith
					["qg"] = 2986,	-- Dorn Plainstalker
					["coord"] = { 53.94, 41.49, THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
				}),
				q(1152, {	-- Test of Lore
					["qg"] = 2986,	-- Dorn Plainstalker
					["sourceQuest"] = 1151,	-- Test of Strength
					["coord"] = { 53.94, 41.49, THOUSAND_NEEDLES },
					["lvl"] = 25,
					["races"] = HORDE_ONLY,
				}),
				q(1154, {	-- Test of Lore
					["qg"] = 4489,	-- Braug Dimspirit
					["sourceQuest"] = 1152,	-- Test of Lore
					["coord"] = { 78.80, 45.68, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
				}),
				q(6627, {	-- Test of Lore
					["qg"] = 4489,	-- Braug Dimspirit
					["sourceQuest"] = 1154,	-- Test of Lore
					["coord"] = { 78.80, 45.68, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
				}),
				q(1159, {	-- Test of Lore
					["qg"] = 4489,	-- Braug Dimspirit
					["sourceQuest"] = 6627,	-- Test of Lore
					["coord"] = { 78.80, 45.68, STONETALON_MOUNTAINS },
					["lvl"] = 25,
					["races"] = HORDE_ONLY,
				}),
				q(6628, {	-- Test of Lore
					["qg"] = 4488,	-- Parqual Fintallas
					["sourceQuest"] = 1160,	-- Test of Lore
					["coord"] = { 57.75, 65.39, UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
				}),
				q(1151, {	-- Test of Strength
					["qg"] = 2986,	-- Dorn Plainstalker
					["sourceQuest"] = 1150,	-- Test of Endurance
					["coord"] = { 53.94, 41.49, THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
				}),
				q(1179, {	-- The Brassbolts Brothers
					["qg"] = 2092,	-- Pilot Longbeard
					--["coord"] = { },
					["maps"] = { IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(2769, {	-- The Brassbolts Brothers
					["qg"] = 6169,	-- Klockmort Spannerspan
					--["coord"] = { },
					["maps"] = { IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(1186, {	-- The Eighteenth Pilot
					["qg"] = 4630,	-- Pozzik
					["sourceQuest"] = 1183,	-- Goblin Sponsorship
					--["coord"] = { },
					["lvl"] = 29,
				}),
				q(1115, {	-- The Rumormonger
					["qg"] = 4452,	-- Kravel Koalbeard
					--["coord"] = { },
					["lvl"] = 30,
				}),
				q(1147, {	-- The Swarm Grows
					["qg"] = 4483,	-- Moktar Krin
					["sourceQuest"] = 1146,	-- The Swarm Grows
					["coord"] = { 67.60, 63.93, THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 29,
				}),
				q(5147, {	-- Wanted - Arnak Grimtotem
					["provider"] = { "o", 176115 },	-- Assassination Note
					["coord"] = { 46.01, 50.86, THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
					["g"] = {
						i(15471),	-- Brawnhide Armor
						i(15470),	-- Plainsguard Leggings
					},
				}),
				q(1111, {	-- Wharfmaster Dizzywig
					["qg"] = 4452,	-- Kravel Koalbeard
					--["coord"] = { },
					["lvl"] = 30,
				}),
				q(4767, {	-- Wind Rider
					["qg"] = 10377,	-- Elu
					["coord"] = { 44.84, 48.97, THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
					["g"] = {
						i(4265),	-- Heavy Armor Kit
					},
				}),
				q(1191, {	-- Zamek's Distraction
					["qg"] = 4709,	-- Zamek
					--["coord"] = { },
					["lvl"] = 29,
				}),
				q(1119, {	-- Zanzil's Mixture and a Fool's Stout
					["qg"] = 2498,	-- Crank Fizzlebub
					["sourceQuest"] = 1118,	-- Back to Booty Bay
					--["coord"] = { },
					["races"] = HORDE_ONLY,
					["lvl"] = 35,
				}),
			}),
		}),
	}),
};