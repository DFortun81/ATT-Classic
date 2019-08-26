---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {	-- Kalimdor
		m(THOUSAND_NEEDLES, {	-- Thousand Needles
			n(-17, {	-- Quests
				q(1175, {	-- A Bump in the Road
					["lvl"] = 28,
					["qg"] = 4629,	-- Trackmaster Zherin
				}),
				q(4821, {	-- Alien Egg
					["lvl"] = 24,
					["races"] = HORDE_ONLY,
					["qg"] = 10539,	-- Hagar Lightninghoof
				}),
				q(5088, {	-- Arikara
					["lvl"] = 24,
					["races"] = HORDE_ONLY,
					["qg"] = 4046,	-- Magatha Grimtotem
					["g"] = {
						i(15464),	-- Brute Hammer
						i(15465),	-- Stingshot Wand
						i(15466),	-- Clink Shield
					},
				}),
				q(4881, {	-- Assassination Plot
					["lvl"] = 23,
					["races"] = HORDE_ONLY,
				}),
				q(1118, {	-- Back to Booty Bay
					["lvl"] = 35,
					["races"] = HORDE_ONLY,
					["qg"] = 4452,	-- Kravel Koalbeard
				}),
				q(1114, {	-- Delivery to the Gnomes
					["lvl"] = 30,
					["qg"] = 4452,	-- Kravel Koalbeard
				}),
				q(1116, {	-- Dream Dust in the Swamp
					["lvl"] = 30,
					["races"] = HORDE_ONLY,
					["qg"] = 773,	-- Krazek
				}),
				q(1107, {	-- Encrusted Tail Fins
					["lvl"] = 28,
					["qg"] = 4453,	-- Wizzle Brassbolts
				}),
				q(5361, {	-- Family Tree
					["lvl"] = 32,
					["races"] = HORDE_ONLY,
					["qg"] = 10537,	-- Cliffwatcher Longhorn
				}),
				q(1394, {	-- Final Passage
					["lvl"] = 25,
					["g"] = {
						i(6804),	-- Windstorm Hammer
						i(6806),	-- Dancing Flame
					},
				}),
				q(4904, {	-- Free at Last
					["lvl"] = 25,
					["races"] = HORDE_ONLY,
					["qg"] = 10646,	-- Lakota Windsong
					["g"] = {
						i(15469),	-- Windsong Cinch
						i(15468),	-- Windsong Drape
					},
				}),
				q(1120, {	-- Get the Gnomes Drunk
					["lvl"] = 35,
					["races"] = HORDE_ONLY,
					["qg"] = 4452,	-- Kravel Koalbeard
				}),
				q(1121, {	-- Get the Goblins Drunk
					["lvl"] = 35,
				}),
				q(1174, {	-- Gnomes Win!
					["g"] = {
						i(5857),	-- Gnome Prize Box
					},
				}),
				q(1183, {	-- Goblin Sponsorship
					["lvl"] = 29,
					["qg"] = 2496,	-- Baron Revilgaz
				}),
				q(1178, {	-- Goblin Sponsorship
					["lvl"] = 29,
					["qg"] = 4630,	-- Pozzik
				}),
				q(1180, {	-- Goblin Sponsorship
					["lvl"] = 29,
					["qg"] = 3391,	-- Gazlowe
				}),
				q(1181, {	-- Goblin Sponsorship
					["lvl"] = 29,
					["qg"] = 4631,	-- Wharfmaster Lozgil
				}),
				q(1182, {	-- Goblin Sponsorship
					["lvl"] = 29,
					["qg"] = 2496,	-- Baron Revilgaz
					["g"] = {
						i(5851),	-- Cozzle's Key
					},
				}),
				q(1099, {	-- Goblins Win!
					["g"] = {
						i(5858),	-- Goblin Prize Box
					},
				}),
				q(5064, {	-- Grimtotem Spying
					["lvl"] = 24,
					["races"] = HORDE_ONLY,
					["qg"] = 10537,	-- Cliffwatcher Longhorn
					["g"] = {
						i(15457),	-- Desert Shoulders
						i(15458),	-- Tundra Boots
						i(15459),	-- Grimtoll Wristguards
					},
				}),
				q(1105, {	-- Hardened Shells
					["lvl"] = 28,
					["qg"] = 4453,	-- Wizzle Brassbolts
				}),
				q(5762, {	-- Hemet Nesingwary
					["lvl"] = 28,
					["qg"] = 4452,	-- Kravel Koalbeard
				}),
				q(4770, {	-- Homeward Bound
					["lvl"] = 25,
					["races"] = HORDE_ONLY,
					["qg"] = 10427,	-- Pao'ka Swiftmountain
				}),
				q(5151, {	-- Hypercapacitor Gizmo
					["lvl"] = 24,
					["races"] = HORDE_ONLY,
					["qg"] = 10941,	-- Wizlo Bearingshiner
					["g"] = {
						i(15467),	-- Inventor's League Ring
					},
				}),
				q(1108, {	-- Indurium
					["lvl"] = 28,
					["qg"] = 4618,	-- Martek the Exiled
				}),
				q(1192, {	-- Indurium Ore
					["lvl"] = 29,
				}),
				q(1190, {	-- Keeping Pace
					["lvl"] = 29,
					["qg"] = 4630,	-- Pozzik
				}),
				q(1176, {	-- Load Lightening
					["lvl"] = 29,
					["qg"] = 4630,	-- Pozzik
				}),
				q(1100, {	-- Lonebrow's Journal
					["lvl"] = 29,
					["races"] = ALLIANCE_ONLY,
				}),
				q(1106, {	-- Martek the Exiled
					["lvl"] = 26,
					["qg"] = 4454,	-- Fizzle Brassbolts
				}),
				q(4542, {	-- Message to Freewind Post
					["lvl"] = 23,
					["races"] = HORDE_ONLY,
					["qg"] = 10079,	-- Brave Moonhorn
				}),
				q(1137, {	-- News for Fizzle
					["lvl"] = 28,
					["qg"] = 4618,	-- Martek the Exiled
					["g"] = {
						i(6729),	-- Fizzle's Zippy Lighter
						i(6732),	-- Gnomish Mechanic's Gloves
					},
				}),
				q(4841, {	-- Pacify the Centaur
					["lvl"] = 23,
					["races"] = HORDE_ONLY,
					["qg"] = 10537,	-- Cliffwatcher Longhorn
				}),
				q(1112, {	-- Parts for Kravel
					["lvl"] = 30,
					["qg"] = 3453,	-- Wharfmaster Dizzywig
				}),
				q(1184, {	-- Parts of the Swarm
					["lvl"] = 28,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(6737),	-- Dryleaf Pants
						i(6738),	-- Bleeding Crescent
					},
				}),
				q(1148, {	-- Parts of the Swarm
					["lvl"] = 28,
					["races"] = HORDE_ONLY,
				}),
				q(4966, {	-- Protect Kanati Greycloud
					["lvl"] = 23,
					["races"] = HORDE_ONLY,
					["qg"] = 10638,	-- Kanati Greycloud
					["g"] = {
						i(15461),	-- Lightheel Boots
						i(15462),	-- Loamflake Bracers
						i(15463),	-- Palestrider Gloves
					},
				}),
				q(1187, {	-- Razzeric's Tweaking
					["lvl"] = 29,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 4706,	-- Razzeric
				}),
				q(1122, {	-- Report Back to Fizzlebub
					["lvl"] = 35,
					["races"] = HORDE_ONLY,
					["qg"] = 4452,	-- Kravel Koalbeard
				}),
				q(1194, {	-- Rizzle's Schematics
					["lvl"] = 29,
					--["objectID"] = 20805,	-- Rizzle's Unguarded Plans
				}),
				q(1110, {	-- Rocket Car Parts
					["lvl"] = 28,
					["qg"] = 4452,	-- Kravel Koalbeard
				}),
				q(1117, {	-- Rumors for Kravel
					["lvl"] = 30,
					["races"] = HORDE_ONLY,
					["qg"] = 773,	-- Krazek
				}),
				q(5062, {	-- Sacred Fire
					["lvl"] = 24,
					["races"] = HORDE_ONLY,
					["qg"] = 10428,	-- Motega Firemane
				}),
				q(1188, {	-- Safety First
					["lvl"] = 29,
					["qg"] = 4706,	-- Razzeric
				}),
				q(1189, {	-- Safety First
					["lvl"] = 29,
					["qg"] = 4708,	-- Shreev
					["g"] = {
						i(6726),	-- Razzeric's Customized Seatbelt
						i(6727),	-- Razzeric's Racing Grips
					},
				}),
				q(1104, {	-- Salt Flat Venom
					["lvl"] = 28,
					["qg"] = 4454,	-- Fizzle Brassbolts
				}),
				q(4865, {	-- Serpent Wild
					["lvl"] = 24,
					["races"] = HORDE_ONLY,
					["qg"] = 10539,	-- Hagar Lightninghoof
				}),
				q(1150, {	-- Test of Endurance
					["lvl"] = 25,
					["races"] = HORDE_ONLY,
					["qg"] = 2986,	-- Dorn Plainstalker
					["g"] = {
						i(5845),	-- Flank of Meat
					},
				}),
				q(1149, {	-- Test of Faith
					["lvl"] = 25,
					["races"] = HORDE_ONLY,
					["qg"] = 2986,	-- Dorn Plainstalker
				}),
				q(1159, {	-- Test of Lore
					["lvl"] = 25,
					["races"] = HORDE_ONLY,
					["qg"] = 4489,	-- Braug Dimspirit
				}),
				q(6627, {	-- Test of Lore
					["lvl"] = 25,
					["races"] = HORDE_ONLY,
					["qg"] = 4489,	-- Braug Dimspirit
				}),
				q(1154, {	-- Test of Lore
					["lvl"] = 25,
					["races"] = HORDE_ONLY,
				}),
				q(1152, {	-- Test of Lore
					["lvl"] = 25,
					["races"] = HORDE_ONLY,
					["qg"] = 2986,	-- Dorn Plainstalker
				}),
				q(6628, {	-- Test of Lore
					["lvl"] = 25,
					["races"] = HORDE_ONLY,
				}),
				q(1151, {	-- Test of Strength
					["lvl"] = 25,
					["races"] = HORDE_ONLY,
					["qg"] = 2986,	-- Dorn Plainstalker
				}),
				q(2769, {	-- The Brassbolts Brothers
					["lvl"] = 40,
					["qg"] = 6169,	-- Klockmort Spannerspan
				}),
				q(1179, {	-- The Brassbolts Brothers
					["lvl"] = 28,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2092,	-- Pilot Longbeard
				}),
				q(1186, {	-- The Eighteenth Pilot
					["lvl"] = 29,
					["qg"] = 4630,	-- Pozzik
				}),
				q(1115, {	-- The Rumormonger
					["lvl"] = 30,
					["qg"] = 4452,	-- Kravel Koalbeard
				}),
				q(1147, {	-- The Swarm Grows
					["lvl"] = 29,
					["races"] = HORDE_ONLY,
					["qg"] = 4483,	-- Moktar Krin
				}),
				q(5147, {	-- Wanted - Arnak Grimtotem
					["lvl"] = 25,
					["races"] = HORDE_ONLY,
					--["objectID"] = 176115,	-- Wanted Poster - Arnak Grimtotem
					["g"] = {
						i(15471),	-- Brawnhide Armor
						i(15470),	-- Plainsguard Leggings
					},
				}),
				q(1111, {	-- Wharfmaster Dizzywig
					["lvl"] = 30,
					["qg"] = 4452,	-- Kravel Koalbeard
				}),
				q(4767, {	-- Wind Rider
					["lvl"] = 25,
					["races"] = HORDE_ONLY,
					["qg"] = 10377,	-- Elu
					["g"] = {
						i(4265),	-- Heavy Armor Kit
					},
				}),
				q(1191, {	-- Zamek's Distraction
					["lvl"] = 29,
					["qg"] = 4709,	-- Zamek
				}),
				q(1119, {	-- Zanzil's Mixture and a Fool's Stout
					["lvl"] = 35,
					["races"] = HORDE_ONLY,
				}),
			}),
		}),
	}),
};