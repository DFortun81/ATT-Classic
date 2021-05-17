---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(DESOLACE, {
			n(QUESTS, {
				q(1431, {	-- Alliance Relations (1/4)
					["qg"] = 5639,	-- Craven Drok
					["coord"] = { 49.8, 47.8, ORGRIMMAR },
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(1432, {	-- Alliance Relations (2/4)
					["qg"] = 5640,	-- Keldran
					["sourceQuest"] = 1431,	-- Alliance Relations (1/4)
					["coord"] = { 22.4, 52.8, ORGRIMMAR },
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(1433, {	-- Alliance Relations (3/4)
					["qg"] = 5641,	-- Takata Steelblade
					["sourceQuest"] = 1432,	-- Alliance Relations (2/4)
					["coord"] = { 52.6, 54.2, DESOLACE },
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(1436, {	-- Alliance Relations (4/4)
					["qg"] = 5641,	-- Takata Steelblade
					["sourceQuests"] = {
						1434,	-- Befouled by Satyr
						1435,	-- The Burning of Spirits
					},
					["coord"] = { 52.6, 54.2, DESOLACE },
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["g"] = {
						i(6744),	-- Gloves of Kapelan
						i(6745),	-- Swiftrunner Cape
					},
				}),
				q(1386, {	-- Assault on the Kolkar  [TODO: Double check that this is only Alliance Only]
					["qg"] = 5398,	-- Warug
					["sourceQuest"] = 1385,	-- Brutal Politics
					["minReputation"] = { 93, FRIENDLY },	-- Magram Clan Centaur, Friendly.
					["coord"] = { 74.8, 68.0, DESOLACE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(1434, {	-- Befouled by Satyr
					["qg"] = 5641,	-- Takata Steelblade
					["sourceQuest"] = 1432,	-- Alliance Relations (2/4)
					["coord"] = { 52.6, 54.2, DESOLACE },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
				}),
				q(5821, {	-- Bodyguard for Hire
					["qg"] = 11625,	-- Cork Gizelton
					["coord"] = { 40.4, 79.2, DESOLACE },
					["lvl"] = 30,
					["g"] = {
						i(15689),	-- Trader's Ring
					},
				}),
				q(5501, {	-- Bone Collector
					["qg"] = 11438,	-- Bibbly F'utzbuckle
					["coord"] = { 62.3, 39.0, DESOLACE },
					["cost"] = {
						{ "i", 13703, 10 },	-- Kodo Bone
					},
					["lvl"] = 33,
					["g"] = {
						i(15690),	-- Kodobone Necklace
					},
				}),
				q(6027, {	-- Book of the Ancients
					["qg"] = 11863,	-- Azore Aldamort <The Argent Dawn>
					["sourceQuest"] = 5741,	-- Sceptre of Light
					["coord"] = { 38.8, 27.2, DESOLACE },
					["cost"] = {
						{ "i", 15803, 1 },	-- Book of the Ancients
					},
					["lvl"] = 30,
					["g"] = {
						{
							["itemID"] = 15766,	-- Gem of the Serpent
							["coord"] = { 28.2, 6.4, DESOLACE },
							["groups"] = {
								{
									["itemID"] = 15803,	-- Book of the Ancients
									["questID"] = 6027,	-- Book of the Ancients
									["cr"] = 12369,	-- Lord Kragaru
								},
							},
						},
						i(16791),	-- Silkstream Cuffs
						i(16793),	-- Arcmetal Shoulders
					},
				}),
				q(1369, {	-- Broken Tears
					["qg"] = 5398,	-- Warug
					["sourceQuests"] = {
						1386,	-- Assault on the Kolkar
						1367,	-- Magram Alliance
					},
					["minReputation"] = { 93, FRIENDLY },	-- Magram Clan Centaur, Friendly.
					["coord"] = { 74.8, 68.0, DESOLACE },
					["cost"] = {
						{ "i", 6083, 3 },	-- Broken Tears
					},
					["lvl"] = 30,
				}),
				q(6141, {	-- Brother Anton
					["qg"] = 12336,	-- Brother Crowley
					["coord"] = { 42.4, 24.4, STORMWIND_CITY },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 34,
				}),
				q(1385, {	-- Brutal Politics
					["qg"] = 5396,	-- Captain Pentigast
					["description"] = "Once you complete 'Khan Hratha' for the Gelkis Clan, you can accept and start working on this quest. Bare in mind that it is quite-the-grind to get back to Friendly. Best of luck to you!",
					["coord"] = { 66.7, 11.0, DESOLACE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(5386, {	-- Catch of the Day
					["qg"] = 11259,	-- Nataka Longhorn
					["coord"] = { 55.4, 55.8, DESOLACE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 13546, 2 },	-- Bloodbelly Fish
					},
					["lvl"] = 32,
					["g"] = {
						i(3858),	-- Mithril Ore
						i(4304),	-- Thick Leather
						i(4338),	-- Mageweave Cloth
					},
				}),
				q(1366, {	-- Centaur Bounty
					["qg"] = 5395,	-- Felgur Twocuts
					["sourceQuest"] = 1365,	-- Khan Dez'hepah
					["coord"] = { 56.2, 59.4, DESOLACE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 6067, 15 },	-- Centaur Ear
					},
					["lvl"] = 30,
					["g"] = {
						i(6780),	-- Lilac Sash
						i(6784),	-- Braced Handguards
					},
				}),
				q(1387, {	-- Centaur Bounty
					["qg"] = 5752,	-- Corporal Melkins
					["coord"] = { 66.7, 10.9, DESOLACE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 6067, 15 },	-- Centaur Ear
					},
					["lvl"] = 30,
					["g"] = {
						i(6790),	-- Ring of Calm
					},
				}),
				q(6161, {	-- Claim Rackmore's Treasure!
					["provider"] = { "o", 177787 },	-- Rackmore's Log
					["coord"] = { 36.1, 30.4, DESOLACE },
					["cost"] = {
						{ "i", 15881, 1 },	-- Rackmore's Golden Key
						{ "i", 15878, 1 },	-- Rackmore's Silver Key
					},
					["lvl"] = 30,
					["g"] = {
						i(16788),	-- Captain Rackmore's Wheel
						i(16789),	-- Captain Rackmore's Tiller
					},
				}),
				q(6142, {	-- Clam Bait
					["qg"] = 12031,	-- Mai'Lahii
					["coord"] = { 22.6, 72, DESOLACE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 15924, 10 },	-- Soft-shelled Clam Meat
					},
					["lvl"] = 31,
					["g"] = {
						i(15585),	-- Pardoc Grips
						i(15587),	-- Ringtail Girdle
						i(15588),	-- Bracesteel Belt
					},
				}),
				q(261, {	-- Down the Scarlet Path (1/2)
					["qg"] = 1182,	-- Brother Anton <Scarlet Crusade Emissary>
					["sourceQuest"] = 6141,	-- Brother Anton
					["coord"] = { 66.4, 7.8, DESOLACE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 34,
				}),
				q(1052, {	-- Down the Scarlet Path (2/2)
					["qg"] = 1182,	-- Brother Anton <Scarlet Crusade Emissary>
					["sourceQuest"] = 261,	-- Down the Scarlet Path (1/2)
					["coord"] = { 66.5, 7.9, DESOLACE },
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5539, 1 },	-- Letter of Commendation
					},
					["lvl"] = 34,
				}),
				q(5421, {	-- Fish in a Bucket
					["qg"] = 11317,	-- Jinar'Zillen
					["coord"] = { 22.4, 73, DESOLACE },
					["description"] = "You must be on the quest 'Catch of the Day' to accept this quest. It becomes unavailable after you turn in that quest as well.\n\nConsideration: You can make 55s for every 5 Shellfish you turn in and sell the fish on the AH. Up to you if your time is worth more or not. On densely populated servers, probably not a good idea.",
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 13545, 5 },	-- Shellfish
					},
					["lvl"] = 25,
					["g"] = {
						{
							["itemID"] = 13546,	-- Bloodbelly Fish
							["questID"] = 5386,	-- Catch of the Day
						},
					},
				}),
				q(1368, {	-- Gelkis Alliance
					["qg"] = 5412,	-- Gurda Wildmane
					["coord"] = { 56.2, 59.6, DESOLACE },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(6132, {	-- Get Me Out of Here!
					["qg"] = 12277,	-- Melizza Brimbuzzle
					["coord"] = { 33.8, 53.4, DESOLACE },
					["lvl"] = 34,
				}),
				q(6134, {	-- Ghost-o-plasm Round Up
					["qg"] = 6019,	-- Hornizz Brimbuzzle
					["coord"] = { 47.8, 61.8, DESOLACE },
					["cost"] = {
						{ "i", 15849, 8 },	-- Ghost-o-plasm
					},
					["lvl"] = 34,
					["g"] = {
						{
							["itemID"] = 15848,	-- Crate of Ghost Magnets
							["coord"] = { 65, 91, DESOLACE },
							["groups"] = {
								{
									["itemID"] = 15849,	-- Ghost-o-plasm
									["questID"] = 6134,	-- Ghost-o-plasm Round Up
									["cr"] = 11560,	-- Magrami Spectre
								},
							},
						},
						i(15864),	-- Condor Bracers
						i(15865),	-- Anchorhold Buckler
					},
				}),
				q(5943, {	-- Gizelton Caravan
					["qg"] = 11626,	-- Rigger Gizelton
					["coord"] = { 40.4, 79.4, DESOLACE },
					["lvl"] = 32,
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
					["coord"] = { 74.8, 68.0, DESOLACE },
					["cost"] = {
						{ "i", 4392, 1 },	-- Advanced Target Dummy
					},
					["lvl"] = 30,
				}),
				q(5381, {	-- Hand of Iruxos
					["qg"] = 11624,	-- Taiga Wisemane
					["coord"] = { 25.8, 68.2, DESOLACE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 13542, 1 },	-- Demon Box
					},
					["lvl"] = 32,
					["groups"] = {
						{
							["itemID"] = 14523,	-- Demon Pick
							["cr"] = 11876,	-- Demon Spirit
							["coord"] = { 55, 26.4, DESOLACE },
							["groups"] = {
								{
									["itemID"] = 13542,	-- Demon Box
									["questID"] = 5381,	-- Hand of Iruxos
								},
							},
						},
					},
				}),
				q(5763, {	-- Hunting in Stranglethorn
					["qg"] = 11877,	-- Roon Wildmane
					["coord"] = { 25, 72.2, DESOLACE },
					["maps"] = { STRANGLETHORN_VALE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 14546, 1 },	-- Roon's Kodo Horn
					},
					["lvl"] = 28,
				}),
				q(1365, {	-- Khan Dez'hepah
					["qg"] = 5395,	-- Felgur Twocuts
					["coord"] = { 56.2, 59.4, DESOLACE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 6066, 1 },	-- Khan Dez'hepah's Head
					},
					["lvl"] = 30,
					["groups"] = {
						{
							["itemID"] = 6066,	-- Khan Dez'hepah's Head
							["questID"] = 1365,	-- Khan Dez'hepah
							["cr"] = 5600,	-- Khan Dez'hepah
							["coords"] = {
								{ 73.2, 42.6, DESOLACE },
								{ 74.6, 48.8, DESOLACE },
							},
						},
					},
				}),
				q(1381, {	-- Khan Hratha
					["qg"] = 5398,	-- Warug
					["sourceQuest"] = 1375,	-- Khan Shaka
					["minReputation"] = { 93, FRIENDLY },	-- Magram Clan Centaur, Friendly.
					["coord"] = { 74.8, 68.0, DESOLACE },
					["cost"] = {
						{ "i", 6077, 1 },	-- Maraudine Key Fragment
					},
					["lvl"] = 30,
					["groups"] = {
						{
							["itemID"] = 6074,	-- War Horn Mouthpiece
							["groups"] = {
								{
									["itemID"] = 6077,	-- Maraudine Key Fragment
									["questID"] = 1381,	-- Khan Hratha
									["cr"] = 5402,	-- Khan Hratha
									["coord"] = { 29.8, 52.8, DESOLACE },
								},
							},
						},
						i(6788),	-- Magram Hunter's Belt
						i(6789),	-- Ceremonial Centaur Blanket
					},
				}),
				q(1380, {	-- Khan Hratha
					["qg"] = 5397,	-- Uthek the Wise
					["sourceQuest"] = 1374,	-- Khan Jehn
					["coord"] = { 36.2, 79.2, DESOLACE },
					["minReputation"] = { 92, FRIENDLY },	-- Gelkis Clan Centaur, Friendly.
					["cost"] = {
						{ "i", 6077, 1 },	-- Maraudine Key Fragment
					},
					["lvl"] = 30,
					["groups"] = {
						{
							["itemID"] = 6074,	-- War Horn Mouthpiece
							["groups"] = {
								{
									["itemID"] = 6077,	-- Maraudine Key Fragment
									["questID"] = 1380,	-- Khan Hratha
									["cr"] = 5402,	-- Khan Hratha
									["coord"] = { 29.8, 52.8, DESOLACE },
								},
							},
						},
						i(6773),	-- Gelkis Marauder Chain
						i(6774),	-- Uthek's Finger
						i(6074),	-- War Horn Mouthpiece
					},
				}),
				q(1374, {	-- Khan Jehn
					["qg"] = 5397,	-- Uthek the Wise
					["sourceQuest"] = 1373,	-- Ongeku
					["coord"] = { 36.2, 79.2, DESOLACE },
					["minReputation"] = { 92, FRIENDLY },	-- Gelkis Clan Centaur, Friendly.
					["cost"] = {
						{ "i", 6072, 1 },	-- Khan Jehn's Head
					},
					["lvl"] = 30,
					["groups"] = {
						{
							["itemID"] = 6072,	-- Khan Jehn's Head
							["questID"] = 1374,	-- Khan Jehn
							["cr"] = 5601,	-- Khan Jehn
							["coord"] = { 66.6, 79.8, DESOLACE },
						},
					},
				}),
				q(1375, {	-- Khan Shaka
					["qg"] = 5398,	-- Warug
					["sourceQuest"] = 1371,	-- Gizmo for Warug
					["minReputation"] = { 93, FRIENDLY },	-- Magram Clan Centaur, Friendly.
					["coord"] = { 74.8, 68.0, DESOLACE },
					["cost"] = {
						{ "i", 6073, 1 },	-- Khan Shaka's Head
					},
					["lvl"] = 30,
					["groups"] = {
						{
							["itemID"] = 6073,	-- Khan Shaka's Head
							["questID"] = 1375,	-- Khan Shaka
							["cr"] = 5602,	-- Khan Shaka
							["coord"] = { 40.6, 95.6, DESOLACE },
						},
					},
				}),
				q(5561, {	-- Kodo Roundup
					["qg"] = 11596,	-- Smeed Scrabblescrew
					["coord"] = { 60.9, 61.9, DESOLACE },
					["cost"] = {
						{ "i", 13892, 1 },	-- Kodo Kombobulator
					},
					["crs"] = {
						4702,	-- Ancient Kodo
						4700,	-- Aged Kodo
						4701,	-- Dying Kodo
						11627,	-- Tamed Kodo
					},
					["lvl"] = 30,
					["g"] = {
						i(15697),	-- Kodo Rustler Boots
						i(15698),	-- Wrangling Spaulders
					},
				}),
				q(1367, {	-- Magram Alliance
					["qg"] = 5412,	-- Gurda Wildmane
					["coord"] = { 56.2, 59.6, DESOLACE },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(1373, {	-- Ongeku
					["qg"] = 5397,	-- Uthek the Wise
					["sourceQuest"] = 1370,	-- Stealing Supplies
					["coord"] = { 36.2, 79.2, DESOLACE },
					["minReputation"] = { 92, FRIENDLY },	-- Gelkis Clan Centaur, Friendly.
					["maps"] = { SWAMP_OF_SORROWS },
					["cost"] = {
						{ "i", 6190, 1 },	-- Draenethyst Shard
					},
					["lvl"] = 30,
					["groups"] = {
						{
							["itemID"] = 6190,	-- Draenethyst Shard
							["questID"] = 1373,	-- Ongeku
							["cr"] = 5622,	-- Ongeku
							["coord"] = { 65, 21, SWAMP_OF_SORROWS },
						},
					},
				}),
				q(6143, {	-- Other Fish to Fry
					["qg"] = 12340,	-- Drulzegar Skraghook
					["coord"] = { 23.2, 72.8, DESOLACE },
					["races"] = HORDE_ONLY,
					["lvl"] = 32,
				}),
				q(5581, {	-- Portals of the Legion
					["qg"] = 11624,	-- Taiga Wisemane
					["sourceQuest"] = 5381,	-- Hand of Iruxos
					["coord"] = { 25.8, 68.2, DESOLACE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 14547, 1 },	-- Hand of Iruxos
					},
					["lvl"] = 32,
					["g"] = {
						i(16794),	-- Gripsteel Wristguards
						i(16873),	-- Braidfur Gloves
					},
				}),
				q(1384, {	-- Raid on the Kolkar
					["qg"] = 5397,	-- Uthek the Wise
					["coord"] = { 36.2, 79.2, DESOLACE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 6079, 10 },	-- Crude Charm
					},
					["lvl"] = 30,
				}),
				q(1453, {	-- Reclaimers' Business in Desolace
					["qg"] = 5637,	-- Roetten Stonehammer
					["coord"] = { 69.6, 21, IRONFORGE },
					["maps"] = { IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(1458, {	-- Reagents for Reclaimers Inc. (1/4)
					["qg"] = 5638,	-- Kreldig Ungor
					["sourceQuest"] = 1453,	-- Reclaimers' Business in Desolace
					["coord"] = { 66.2, 9.6, DESOLACE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 6246, 10 },	-- Hatefury Claw
						{ "i", 6247, 10 },	-- Hatefury Horn
					},
					["lvl"] = 30,
				}),
				q(1459, {	-- Reagents for Reclaimers Inc. (2/4)
					["qg"] = 5638,	-- Kreldig Ungor
					["sourceQuest"] = 1458,	-- Reagents for Reclaimers Inc. (1/4)
					["coord"] = { 66.2, 9.6, DESOLACE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 6248, 7 },	-- Scorpashi Venom
						{ "i", 6249, 3 },	-- Aged Kodo Hide
					},
					["lvl"] = 30,
				}),
				q(1466, {	-- Reagents for Reclaimers Inc. (3/4)
					["qg"] = 5638,	-- Kreldig Ungor
					["sourceQuest"] = 1459,	-- Reagents for Reclaimers Inc. (2/4)
					["coord"] = { 66.2, 9.6, DESOLACE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 6252, 10 },	-- Doomwarder Blood
						{ "i", 6250, 10 },	-- Felhound Brain
						{ "i", 6251, 10 },	-- Nether Wing
					},
					["lvl"] = 30,
				}),
				q(1467, {	-- Reagents for Reclaimers Inc. (4/4)
					["qg"] = 5638,	-- Kreldig Ungor
					["sourceQuest"] = 1466,	-- Reagents for Reclaimers Inc. (3/4)
					["coord"] = { 66.2, 9.6, DESOLACE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 6253, 1 },	-- Leftwitch's Package
					},
					["lvl"] = 30,
					["g"] = {
						i(6793),	-- Auric Bracers
						i(6794),	-- Stormfire Gauntlets
					},
				}),
				q(1361, {	-- Regthar Deathgate
					["qgs"] = {
						2229,	-- Krusk
						4485,	-- Belgrom Rockmaul
					},
					["coords"] = {
						{ 63.24, 20.68, HILLSBRAD_FOOTHILLS },	-- Krusk
						{ 75, 34.2, ORGRIMMAR },	-- Belgrom Rockmaul
					},
					["maps"] = { THE_BARRENS, ORGRIMMAR, HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 30,
				}),
				q(1440, {	-- Return to Vahlarriel
					["qg"] = 5644,	-- Dalinda Malem
					["sourceQuest"] = 1439,	-- Search for Tyranis
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["g"] = {
						i(9687),	-- Grappler's Belt
						i(9698),	-- Gloves of Insight
						i(9699),	-- Garrison Cloak
						i(11884),	-- Moonlit Amice
					},
				}),
				q(5741, {	-- Sceptre of Light
					["qg"] = 11863,	-- Azore Aldamort <The Argent Dawn>
					["coord"] = { 38.8, 27.2, DESOLACE },
					["cost"] = {
						{ "i", 15750, 1 },	-- Sceptre of Light
					},
					["lvl"] = 30,
					["groups"] = {
						{
							["itemID"] = 15750,	-- Sceptre of Light
							["questID"] = 5741,	-- Sceptre of Light
							["cr"] = 13019,	-- Burning Blade Seer
							["coord"] = { 55.2, 30.0, DESOLACE },
						},
					},
				}),
				q(1439, {	-- Search for Tyranis
					["qg"] = 5644,	-- Dalinda Malem
					["sourceQuest"] = 1438,	-- Vahlarriel's Search (3/3)
					["coord"] = { 54.8, 26.2, DESOLACE },
					["cost"] = {
						{ "i", 6767, 1 },	-- Tyranis' Pendant
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						{
							["itemID"] = 6767,	-- Tyranis' Pendant
							["questID"] = 1439,	-- Search for Tyranis
							["cr"] = 5643,	-- Tyranis Malem
							["coord"] = { 53.0, 28.4, DESOLACE },
						},
					},
				}),
				q(1370, {	-- Stealing Supplies
					["qg"] = 5397,	-- Uthek the Wise
					["sourceQuests"] = {
						1368,	-- Gelkis Alliance
						1384,	-- Raid on the Kolkar
					},
					["coord"] = { 36.2, 79.2, DESOLACE },
					["minReputation"] = { 92, FRIENDLY },	-- Gelkis Clan Centaur, Friendly.
					["timeline"] = { "removed 4.0.3.10000" },
					["cost"] = {
						{ "i", 6069, 6 },	-- Crudely Dried Meat
					},
					["lvl"] = 30,
					["g"] = {
						-- #if BEFORE MOP
						i(3463, {	-- Silver Star [Classic] / Broken Silver Star [TBC]
							["timeline"] = {
								"added 1.11.1.5462",
								"removed 2.0.1.5678"
							},
						}),
						un(TBC_PHASE_ONE, i(32378, {	-- Silver Star [TBC]
							["timeline"] = {
								"added 2.0.1.5678",
								"removed 4.0.3.10000",
							},
						})),
						-- #endif
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
					["sourceQuest"] = 1433,	-- Alliance Relations (3/4)
					["coord"] = { 52.2, 53.4, DESOLACE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 6435, 15 },	-- Infused Burning Gem
					},
					["lvl"] = 25,
					["g"] = {
						{
							["itemID"] = 6436,	-- Burning Gem
							["coord"] = { 55, 26.7, DESOLACE },
							["groups"] = {
								{
									["itemID"] = 6435,	-- Infused Burning Gem
									["questID"] = 1435,	-- The Burning of Spirits
								},
							},
						},
						i(6766),	-- Flayed Demon Skin (old2) [TODO: Double check that this actually is given... strange name.]
					},
				}),
				q(1480, {	-- The Corrupter (1/5)
					["provider"] = { "i", 20310 },	-- Flayed Demon Skin
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
				}),
				q(1481, {	-- The Corrupter (2/5)
					["qg"] = 4498,	-- Maurin Bonesplitter
					["sourceQuest"] = 1480,	-- The Corrupter (1/5)
					["coord"] = { 52.2, 53.4, DESOLACE },
					["cr"] = 4674,	-- Hatefury Shadowstalker
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 6441, 1 },	-- Shadowstalker Scalp
					},
					["lvl"] = 25,
				}),
				q(1482, {	-- The Corrupter (3/5)
					["qg"] = 4498,	-- Maurin Bonesplitter
					["sourceQuest"] = 1481,	-- The Corrupter (2/5)
					["coord"] = { 52.2, 53.4, DESOLACE },
					["cr"] = 4718,	-- Slitherblade Oracle
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 6442, 1 },	-- Oracle Crystal
					},
					["lvl"] = 25,
				}),
				q(1484, {	-- The Corrupter (4/5)
					["qg"] = 4498,	-- Maurin Bonesplitter
					["sourceQuest"] = 1482,	-- The Corrupter (3/5)
					["coord"] = { 52.2, 53.4, DESOLACE },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
				}),
				q(1488, {	-- The Corrupter (5/5)
					["qg"] = 5641,	-- Takata Steelblade
					["sourceQuest"] = 1484,	-- The Corrupter (4/5)
					["coord"] = { 52.6, 54.2, DESOLACE },
					["races"] = HORDE_ONLY,
					["crs"] = {
						5771,	-- Jugkar Grim'rod
						5760,	-- Lord Azrethoc
					},
					["lvl"] = 25,
					["g"] = {
						i(6746),	-- Basalt Buckler
						i(6747),	-- Enforcer Pauldrons
					},
				}),
				q(1454, {	-- The Karnitol Shipwreck (1/4)
					["qg"] = 5638,	-- Kreldig Ungor
					["sourceQuest"] = 1453,	-- Reclaimers' Business in Desolace
					["coord"] = { 66.2, 9.6, DESOLACE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(1455, {	-- The Karnitol Shipwreck (2/4)
					["provider"] = { "o", 35251 },	-- Karnitol's Chest
					["sourceQuest"] = 1454,	-- The Karnitol Shipwreck (1/4)
					["coord"] = { 36.1, 30.5, DESOLACE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(1456, {	-- The Karnitol Shipwreck (3/4)
					["qg"] = 5638,	-- Kreldig Ungor
					["sourceQuest"] = 1455,	-- The Karnitol Shipwreck (2/4)
					["coord"] = { 66.2, 9.6, DESOLACE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 6245, 1 },	-- Karnitol's Satchel
					},
					["lvl"] = 30,
				}),
				q(1457, {	-- The Karnitol Shipwreck (4/4)
					["qg"] = 5638,	-- Kreldig Ungor
					["sourceQuest"] = 1456,	-- The Karnitol Shipwreck (3/4)
					["coord"] = { 66.2, 9.6, DESOLACE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 6245, 1 },	-- Karnitol's Satchel
					},
					["lvl"] = 30,
					["g"] = {
						i(6791),	-- Hellion Boots
						i(6792),	-- Sanguine Pauldrons
					},
				}),
				q(1362, {	-- The Kolkar of Desolace
					["qg"] = 3389,	-- Regthar Deathgate
					["sourceQuest"] = 1361,	-- Regthar Deathgate
					["coord"] = { 45.2, 28.4, THE_BARRENS },
					["maps"] = { THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(1437, {	-- Vahlarriel's Search (1/3)
					["qg"] = 5642,	-- Vahlarriel Demonslayer
					["coord"] = { 66.4, 11.8, DESOLACE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(1465, {	-- Vahlarriel's Search (2/3)
					["provider"] = { "o", 50961 },	-- Malem Chest
					["sourceQuest"] = 1437,	-- Vahlarriel's Search (1/3)
					["coord"] = { 56.6, 17.8, DESOLACE },
					["cost"] = {
						{ "i", 6479, 1 },	-- Malem Pendant
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(1438, {	-- Vahlarriel's Search (3/3)
					["qg"] = 5642,	-- Vahlarriel Demonslayer
					["sourceQuest"] = 1465,	-- Vahlarriel's Search (2/3)
					["coord"] = { 66.4, 11.8, DESOLACE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
			}),
		}),
	}),
};