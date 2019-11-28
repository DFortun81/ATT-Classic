---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {	-- Kalimdor
		m(DESOLACE, {	-- Desolace
			n(-17, {	-- Quests
				q(1433, {	-- Alliance Relations
					["qg"] = 5641,	-- Takata Steelblade
					["sourceQuest"] = 1432,	-- Alliance Relations
					["coord"] = { 52.6, 54.2, DESOLACE },
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(1436, {	-- Alliance Relations
					["qg"] = 5641,	-- Takata Steelblade
					["coord"] = { 52.6, 54.2, DESOLACE },
					["sourceQuests"] = {
						1434,	-- Befouled by Satyr
						1435,	-- The Burning of Spirits
					},
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["g"] = {
						i(6744),	-- Gloves of Kapelan
						i(6745),	-- Swiftrunner Cape
					},
				}),
				q(1386, {	-- Assault on the Kolkar
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
				}),
				q(1434, {	-- Befouled by Satyr
					["qg"] = 5641,	-- Takata Steelblade
					["sourceQuest"] = 1432,	-- Alliance Relations
					["coord"] = { 52.57, 54.39, DESOLACE },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
				}),
				q(5821, {	-- Bodyguard for Hire
					["lvl"] = 30,
					["qg"] = 11625,	-- Cork Gizelton
					["g"] = {
						i(15689),	-- Trader's Ring
					},
				}),
				q(5501, {	-- Bone Collector
					["lvl"] = 33,
					["qg"] = 11438,	-- Bibbly F'utzbuckle
					["g"] = {
						i(15690),	-- Kodobone Necklace
					},
					["coord"] = { 62.3, 39.0, DESOLACE },
				}),
				q(6027, {	-- Book of the Ancients
					["lvl"] = 30,
					["qg"] = 11863,	-- Azore Aldamort
					["g"] = {
						i(16791),	-- Silkstream Cuffs
						i(16793),	-- Arcmetal Shoulders
					},
				}),
				q(1369, {	-- Broken Tears
					["qg"] = 5398,	-- Warug
					["minReputation"] = { 93, FRIENDLY },	-- Magram Clan Centaur, Friendly.
					["cost"] = {
						{ "i", 6083, 3 },	-- Broken Tears
					},
					["coord"] = { 74.8, 68, DESOLACE },
					["lvl"] = 30,
				}),
				q(6141, {	-- Brother Anton
					["lvl"] = 34,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 12336,	-- Brother Crowley
				}),
				q(1385, {	-- Brutal Politics
					["qg"] = 5396,	-- Captain Pentigast
					["description"] = "Once you complete 'Khan Hratha' for the Gelkis Clan, you can accept and start working on this quest. Bare in mind that it is quite-the-grind to get back to Friendly. Best of luck to you!",
					["coord"] = { 66.7, 11.0, DESOLACE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(5386, {	-- Catch of the Day
					["lvl"] = 32,
					["races"] = HORDE_ONLY,
					["qg"] = 11259,	-- Nataka Longhorn
					["g"] = {
						i(3858),	-- Mithril Ore
						i(4304),	-- Thick Leather
						i(4338),	-- Mageweave Cloth
					},
				}),
				q(1366, {	-- Centaur Bounty
					["lvl"] = 30,
					["races"] = HORDE_ONLY,
					["qg"] = 5395,	-- Felgur Twocuts
					["g"] = {
						i(6780),	-- Lilac Sash
						i(6784),	-- Braced Handguards
					},
				}),
				q(1387, {	-- Centaur Bounty
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 5752,	-- Corporal Melkins
					["g"] = {
						i(6790),	-- Ring of Calm
					},
					["coord"] = { 66.7, 10.9, DESOLACE },
				}),
				q(6161, {	-- Claim Rackmore's Treasure!
					["lvl"] = 30,
					--["objectID"] = 177787,	-- Rackmore's Log
					["g"] = {
						i(16788),	-- Captain Rackmore's Wheel
						i(16789),	-- Captain Rackmore's Tiller
					},
				}),
				q(6142, {	-- Clam Bait
					["lvl"] = 31,
					["races"] = HORDE_ONLY,
					["qg"] = 12031,	-- Mai'Lahii
					["g"] = {
						i(15585),	-- Pardoc Grips
						i(15587),	-- Ringtail Girdle
						i(15588),	-- Bracesteel Belt
						i(15874),	-- Soft-shelled Clam
					},
				}),
				q(261, {	-- Down the Scarlet Path
					["lvl"] = 34,
					["races"] = ALLIANCE_ONLY,
				}),
				q(1052, {	-- Down the Scarlet Path
					["lvl"] = 34,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1182,	-- Brother Anton
					["coord"] = { 66.5, 7.9, DESOLACE },
				}),
				q(5421, {	-- Fish in a Bucket
					["lvl"] = 25,
					["races"] = HORDE_ONLY,
					["qg"] = 11317,	-- Jinar'Zillen
					["g"] = {
						i(13546),	-- Bloodbelly Fish
					},
				}),
				q(1368, {	-- Gelkis Alliance
					["lvl"] = 30,
					["races"] = HORDE_ONLY,
					["qg"] = 5412,	-- Gurda Wildmane
				}),
				q(6132, {	-- Get Me Out of Here!
					["lvl"] = 34,
					["qg"] = 12277,	-- Melizza Brimbuzzle
				}),
				q(6134, {	-- Ghost-o-plasm Round Up
					["lvl"] = 34,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 6019,	-- Hornizz Brimbuzzle
					["g"] = {
						i(15864),	-- Condor Bracers
						i(15865),	-- Anchorhold Buckler
					},
				}),
				q(5943, {	-- Gizelton Caravan
					["lvl"] = 32,
					["qg"] = 11626,	-- Rigger Gizelton
					["g"] = {
						i(15691),	-- Sidegunner Shottie
						i(15692),	-- Kodo Brander
						i(15695),	-- Studded Ring Shield
					},
				}),
				q(1371, {	-- Gizmo for Warug
					["qg"] = 5398,	-- Warug
					["sourceQuest"] = 1369,	-- Broken Tears
					["minReputation"] = { 93, FRIENDLY },	-- Magram Clan Centaur, Friendly.
					["cost"] = {
						{ "i", 4392, 1 },	-- Advanced Target Dummy
					},
					["coord"] = { 74.8, 68, DESOLACE },
					["lvl"] = 30,
				}),
				q(5381, {	-- Hand of Iruxos
					["qg"] = 11624,	-- Taiga Wisemane
					["coord"] = { 25.8, 68.2, DESOLACE },
					["races"] = HORDE_ONLY,
					["lvl"] = 32,
				}),
				q(5763, {	-- Hunting in Stranglethorn
					["lvl"] = 28,
					["races"] = HORDE_ONLY,
					["qg"] = 11877,	-- Roon Wildmane
				}),
				q(1365, {	-- Khan Dez'hepah
					["lvl"] = 30,
					["races"] = HORDE_ONLY,
					["qg"] = 5395,	-- Felgur Twocuts
				}),
				q(1381, {	-- Khan Hratha
					["qg"] = 5398,	-- Warug
					["sourceQuest"] = 1375,	-- Gizmo for Warug
					["minReputation"] = { 93, FRIENDLY },	-- Magram Clan Centaur, Friendly.
					["cr"] = 5402,	-- Khan Hratha
					["cost"] = {
						{ "i", 6077, 1 },	-- Maraudine Key Fragment
					},
					["coords"] = {
						{ 74.8, 68, DESOLACE },
						{ 29.8, 52.8, DESOLACE },
					},
					["lvl"] = 30,
					["g"] = {
						i(6788),	-- Magram Hunter's Belt
						i(6789),	-- Ceremonial Centaur Blanket
						i(6074),	-- War Horn Mouthpiece
					},
				}),
				q(1380, {	-- Khan Hratha
					["qg"] = 5397,	-- Uthek the Wise
					["sourceQuest"] = 1374,	-- Khan Jehn
					["minReputation"] = { 92, FRIENDLY },	-- Gelkis Clan Centaur, Friendly.
					["cr"] = 5402,	-- Khan Hratha
					["coord"] = { 36.2, 79.2, DESOLACE },
					["lvl"] = 30,
					["g"] = {
						i(6773),	-- Gelkis Marauder Chain
						i(6774),	-- Uthek's Finger
						i(6074),	-- War Horn Mouthpiece
					},
				}),
				q(1374, {	-- Khan Jehn
					["qg"] = 5397,	-- Uthek the Wise
					["sourceQuest"] = 1373,	-- Ongeku
					["minReputation"] = { 92, FRIENDLY },	-- Gelkis Clan Centaur, Friendly.
					["coord"] = { 36.2, 79.2, DESOLACE },
					["lvl"] = 30,
				}),
				q(1375, {	-- Khan Shaka
					["qg"] = 5398,	-- Warug
					["sourceQuest"] = 1371,	-- Gizmo for Warug
					["minReputation"] = { 93, FRIENDLY },	-- Magram Clan Centaur, Friendly.
					["cr"] = 5602,	-- Khan Shaka
					["cost"] = {
						{ "i", 6073, 1 },	-- Khan Shaka's Head
					},
					["coords"] = {
						{ 74.8, 68, DESOLACE },
						{ 40.6, 95.6, DESOLACE },
					},
					["lvl"] = 30,
				}),
				q(5561, {	-- Kodo Roundup
					["lvl"] = 30,
					["qg"] = 11596,	-- Smeed Scrabblescrew
					["g"] = {
						i(15697),	-- Kodo Rustler Boots
						i(15698),	-- Wrangling Spaulders
					},
					["coord"] = { 60.9, 61.9, DESOLACE },
				}),
				q(1367, {	-- Magram Alliance
					["lvl"] = 30,
					["races"] = HORDE_ONLY,
					["qg"] = 5412,	-- Gurda Wildmane
				}),
				q(6568, {	-- Mistress of Deception
					["lvl"] = 55,
					["races"] = HORDE_ONLY,
					["qg"] = 10182, -- Rexxar <Champion of the Horde>
					["sourceQuest"] = 6567, -- The Champion of the Horde
				}),
				q(1373, {	-- Ongeku
					["qg"] = 5397,	-- Uthek the Wise
					["sourceQuest"] = 1370,	-- Stealing Supplies
					["minReputation"] = { 92, FRIENDLY },	-- Gelkis Clan Centaur, Friendly.
					["cost"] = {
						{ "i", 6190, 1 },	-- Draenethyst Shard
					},
					["coord"] = { 36.2, 79.2, DESOLACE },
					["maps"] = { SWAMP_OF_SORROWS },
					["lvl"] = 30,
					["groups"] = {
						n(5622, {	-- Ongeku
							["coord"] = { 65, 21, SWAMP_OF_SORROWS },
							["groups"] = {
								{
									["itemID"] = 6190,	-- Draenethyst Shard
									["questID"] = 1373,	-- Ongeku
								},
							},
						}),
					},
				}),
				q(6143, {	-- Other Fish to Fry
					["lvl"] = 32,
					["races"] = HORDE_ONLY,
					["qg"] = 12340,	-- Drulzegar Skraghook
				}),
				q(5581, {	-- Portals of the Legion
					["sourceQuest"] = 5381,	-- Hand of Iruxos
					["races"] = HORDE_ONLY,
					["lvl"] = 32,
					["qgs"] = {
						5395,	-- Felgur Twocuts
						11624,	-- Taiga Wisemane
					},
					["g"] = {
						i(16794),	-- Gripsteel Wristguards
						i(16873),	-- Braidfur Gloves
					},
				}),
				q(1384, {	-- Raid on the Kolkar
					["qg"] = 5397,	-- Uthek the Wise
					["cost"] = {
						{ "i", 6079, 10 },	-- Crude Charm
					},
					["coord"] = { 36.2, 79.2, DESOLACE },
					["lvl"] = 30,
				}),
				q(1467, {	-- Reagents for Reclaimers Inc.
					["lvl"] = 30,
					["g"] = {
						i(6793),	-- Auric Bracers
						i(6794),	-- Stormfire Gauntlets
					},
				}),
				q(1458, {	-- Reagents for Reclaimers Inc.
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 5638,	-- Kreldig Ungor
					["coord"] = { 66.2, 9.6, DESOLACE },
				}),
				q(1466, {	-- Reagents for Reclaimers Inc.
					["lvl"] = 30,
				}),
				q(1459, {	-- Reagents for Reclaimers Inc.
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 5638,	-- Kreldig Ungor
					["coord"] = { 66.2, 9.6, DESOLACE },
				}),
				q(1361, {	-- Regthar Deathgate
					["qgs"] = {
						2229,	-- Krusk
						4485,	-- Belgrom Rockmaul
						10540,	-- Vol'jin
					},
					["coords"] = {
						{ 63.24, 20.68, HILLSBRAD_FOOTHILLS },	-- Krusk
					},
					["maps"] = { ORGRIMMAR, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(1440, {	-- Return to Vahlarriel
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 5644,	-- Dalinda Malem
					["g"] = {
						i(9687),	-- Grappler's Belt
						i(9698),	-- Gloves of Insight
						i(9699),	-- Garrison Cloak
						i(11884),	-- Moonlit Amice
					},
				}),
				q(5741, {	-- Sceptre of Light
					["lvl"] = 30,
					["qg"] = 11863,	-- Azore Aldamort
				}),
				q(1439, {	-- Search for Tyranis
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 5644,	-- Dalinda Malem
				}),
				q(1370, {	-- Stealing Supplies
					["qg"] = 5397,	-- Uthek the Wise
					["minReputation"] = { 92, FRIENDLY },	-- Gelkis Clan Centaur, Friendly.
					["coord"] = { 36.2, 79.2, DESOLACE },
					["lvl"] = 30,
					["g"] = {
						i(3463),	-- Silver Star
						i(3464),	-- Feathered Arrow
						i(3465),	-- Exploding Shot
					},
				}),
				q(1382, {	-- Strange Alliance
					["qg"] = 5396,	-- Captain Pentigast
					["coord"] = { 66.7, 11.0, DESOLACE },
					["description"] = "Once you complete 'Khan Hratha' for the Magram Clan, you can accept and start working on this quest. Bare in mind that it is quite-the-grind to get back to Friendly. Best of luck to you!",
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(1435, {	-- The Burning of Spirits
					["qg"] = 4498,	-- Maurin Bonesplitter
					["sourceQuest"] = 1433,	-- Alliance Relations
					["coord"] = { 52.2, 53.6, DESOLACE },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
					["g"] = {
						i(6766),	-- Flayed Demon Skin (old2)
					},
				}),
				q(1484, {	-- The Corrupter
					["lvl"] = 25,
					["races"] = HORDE_ONLY,
					["qg"] = 4498,	-- Maurin Bonesplitter
				}),
				q(1480, {	-- The Corrupter
					["lvl"] = 25,
					["races"] = HORDE_ONLY,
				}),
				q(1481, {	-- The Corrupter
					["lvl"] = 25,
					["races"] = HORDE_ONLY,
					["qg"] = 4498,	-- Maurin Bonesplitter
				}),
				q(1488, {	-- The Corrupter
					["lvl"] = 25,
					["races"] = HORDE_ONLY,
					["qg"] = 5641, -- Takata Steelblade
					["sourceQuest"] = 1484, -- The Corrupter
					["g"] = {
						i(6746),	-- Basalt Buckler
						i(6747),	-- Enforcer Pauldrons
					},
				}),
				q(1482, {	-- The Corrupter
					["lvl"] = 25,
					["races"] = HORDE_ONLY,
					["qg"] = 4498,	-- Maurin Bonesplitter
				}),
				q(1455, {	-- The Karnitol Shipwreck
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					--["objectID"] = 35251,	-- Karnitol's Chest
				}),
				q(1456, {	-- The Karnitol Shipwreck
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 5638,	-- Kreldig Ungor
					["coord"] = { 66.2, 9.6, DESOLACE },
				}),
				q(1457, {	-- The Karnitol Shipwreck
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 5638,	-- Kreldig Ungor
					["g"] = {
						i(6791),	-- Hellion Boots
						i(6792),	-- Sanguine Pauldrons
					},
					["coord"] = { 66.2, 9.6, DESOLACE },
				}),
				q(1454, {	-- The Karnitol Shipwreck
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 5638,	-- Kreldig Ungor
					["coord"] = { 66.2, 9.6, DESOLACE },
				}),
				q(1362, {	-- The Kolkar of Desolace
					["qg"] = 3389,	-- Regthar Deathgate
					["sourceQuest"] = 361,	-- Regthar Deathgate
					["coord"] = { 45.34, 28.42, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(1465, {	-- Vahlarriel's Search
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					--["objectID"] = 50961,	-- Malem Chest
				}),
				q(1438, {	-- Vahlarriel's Search
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 5642,	-- Vahlarriel Demonslayer
					["coord"] = { 66.4, 11.8, DESOLACE },
				}),
				q(1437, {	-- Vahlarriel's Search
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 5642,	-- Vahlarriel Demonslayer
					["coord"] = { 66.4, 11.8, DESOLACE },
				}),
			}),
		}),
	}),
};