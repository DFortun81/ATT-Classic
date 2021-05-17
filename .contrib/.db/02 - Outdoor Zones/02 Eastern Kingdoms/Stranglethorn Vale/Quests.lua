---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(STRANGLETHORN_VALE, {
			n(QUESTS, {
				q(610, {	-- "Pretty Boy" Duncan
					["qg"] = 2542,	-- Catelyn the Blade
					["sourceQuest"] = 603,	-- Ansirem's Key
					["coord"] = { 27.3, 77.5, STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 4027, 1 },	-- Catelyn's Blade
					},
					["lvl"] = 32,
					["groups"] = {
						{
							["itemID"] = 4027,	-- Catelyn's Blade
							["questID"] = 610,	-- "Pretty Boy" Duncan
							["coord"] = { 27.6, 69.6, STRANGLETHORN_VALE },
						},
					},
				}),
				q(617, {	-- Akiris by the Bundle (1/2)
					["qg"] = 2494,	-- Privateer Bloads
					["coord"] = { 27.4, 76.8, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 4029, 10 },	-- Akiris Reed
					},
					["lvl"] = 38,
					["g"] = {
						i(4117),	-- Scorching Sash
					},
				}),
				q(623, {	-- Akiris by the Bundle (2/2)
					["qg"] = 2494,	-- Privateer Bloads
					["sourceQuest"] = 617, 	-- Akiris by the Bundle (1/2)
					["coord"] = { 27.4, 76.8, STRANGLETHORN_VALE },
					["maps"] = { DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 4028, 1 },	-- Bundle of Akiris Reeds
					},
					["lvl"] = 38,
				}),
				q(3721, {	-- An OOX of Your Own
					["qg"] = 7406,	-- Oglethorpe Obnoticus
					["sourceQuests"] = {
						2767,	-- Rescue OOX-22/FE!
						648,	-- Rescue OOX-17/TN!
						836,	-- Rescue OOX-09/HL!
					},
					["lvl"] = 30,
					["g"] = {
						i(10398),	-- Mechanical Chicken
					},
				}),
				q(603, {	-- Ansirem's Key
					["qg"] = 2543,	-- Archmage Ansirem Runeweaver
					["sourceQuest"] = 602,	-- Magical Analysis
					["coord"] = { 18.8, 78.5, ALTERAC_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 32,
				}),
				q(4621, {	-- Avast Ye, Admiral!
					["qg"] = 2546,	-- Fleet Master Firallon
					["sourceQuest"] = 1036,	-- Avast Ye, Scallywag
					["minReputation"] = { 87, FRIENDLY },	-- Bloodsail Buccaneers, Friendly.
					["description"] = "This quest also requires you to be hated or lower with Booty Bay.",
					["coord"] = { 30.6, 90.6, STRANGLETHORN_VALE },
					["lvl"] = 55,
					["groups"] = {
						i(12185),	-- Bloodsail Admiral's Hat
					},
				}),
				q(1036, {	-- Avast Ye, Scallywag
					["qg"] = 2545,	-- "Pretty Boy" Duncan
					["minReputation"] = { 87, FRIENDLY },	-- Bloodsail Buccaneers, Friendly.
					["coord"] = { 27.4, 69.4, STRANGLETHORN_VALE },
					["lvl"] = 55,
					["isBreadcrumb"] = true,
				}),
				q(9272, {	-- Dressing the Part
					["qg"] = 2546,	-- Fleet Master Firallon
					["minReputation"] = { 87, NEUTRAL },	-- Bloodsail Buccaneers, Neutral.
					["coord"] = { 30.6, 90.6, STRANGLETHORN_VALE },
					["lvl"] = 49,
					["groups"] = {
						i(22746),	-- Buccaneer's Uniform
						i(22742),	-- Bloodsail Shirt
						i(22743),	-- Bloodsail Sash
						i(22745),	-- Bloodsail Pants
						i(22744),	-- Bloodsail Boots
					},
				}),
				q(7810, {	-- Arena Master
					["provider"] = { "i", 18706 },	-- Arena Master (trinket)
					["coord"] = { 30.4, 47.8, STRANGLETHORN_VALE },
					["altQuests"] = {
						7908,	-- Arena Master
					},
				}),
				q(7838, {	-- Arena Grandmaster
					["qg"] = 14508,	-- Short John Mithril
					["coord"] = { 29.6, 47.4, STRANGLETHORN_VALE },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 18706, 12 },	-- Arena Master (trinket)
					},
					["groups"] = {
						i(19024),	-- Arena Grand Master
					},
				}),
				q(204, {	-- Bad Medicine
					["qg"] = 733,	-- Sergeant Yohwa
					["coord"] = { 38.0, 3.3, STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2633, 7 },	-- Jungle Remedy
						{ "i", 2634, 1 },	-- Venom Fern Extract
					},
					["lvl"] = 30,
					["g"] = {
						{
							["itemID"] = 2634,	-- Venom Fern Extract
							["questID"] = 204,	-- Bad Medicine
							["coord"] = { 44.5, 9.8, STRANGLETHORN_VALE },
						},
						i(4140),	-- Palm Frond Mantle
						i(4126),	-- Guerrilla Cleaver
					},
				}),
				q(208, {	-- Big Game Hunter
					["qg"] = 715,	-- Hemet Nesingwary
					["sourceQuests"] = {
						193,	-- Panther Mastery
						197,	-- Raptor Mastery
						188,	-- Tiger Mastery
					},
					["coord"] = { 35.7, 10.8, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 3880, 1 },	-- Head of Bangalash
					},
					["lvl"] = 28,
					["g"] = {
						{
							["itemID"] = 3880,	-- Head of Bangalash
							["questID"] = 208,	-- Big Game Hunter
							["cr"] = 731,	-- King Bangalash
							["coord"] = { 38.6, 35.6, STRANGLETHORN_VALE },
						},
						i(17686),	-- Master Hunter's Bow
						i(17687),	-- Master Hunter's Rifle
					},
				}),
				q(584, {	-- Bloodscalp Clan Heads
					["qg"] = 2497,	-- Nimboya
					["coord"] = { 32.2, 27.8, STRANGLETHORN_VALE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3904, 1 },	-- Gan'zulah's Head
						{ "i", 3905, 1 },	-- Nezzliok's Head
					},
					["lvl"] = 30,
					["groups"] = {
						{
							["itemID"] = 3904,	-- Gan'zulah's Head
							["questID"] = 584,	-- Bloodscalp Clan Heads
							["cr"] = 1061,	-- Gan'zulah <Bloodscalp Chief>
							["coord"] = { 23.8, 8.6, STRANGLETHORN_VALE },
						},
						{
							["itemID"] = 3905,	-- Nezzliok's Head
							["questID"] = 584,	-- Bloodscalp Clan Heads
							["cr"] = 1062,	-- Nezzliok the Dire <Bloodscalp Clan Witchdoctor>
							["coord"] = { 23.6, 9.6, STRANGLETHORN_VALE },
						},
					},
				}),
				q(189, {	-- Bloodscalp Ears
					["qg"] = 737,	-- Kebok
					["coord"] = { 27.00, 77.13, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 1519, 15 },	-- Bloodscalp Ear
					},
					["lvl"] = 30,
					["g"] = {
						i(4598),	-- Goblin Fishing Pole
					},
				}),
				q(596, {	-- Bloody Bone Necklaces
					["qg"] = 2519,	-- Kin'weelay
					["coord"] = { 32.2, 27.8, STRANGLETHORN_VALE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3915, 25 },	-- Bloody Bone Necklace
					},
					["lvl"] = 30,
					["g"] = {
						i(4135),	-- Bloodbone Band
					},
				}),
				q(200, {	-- Bookie Herod
					["qg"] = 469,	-- Lieutenant Doren
					["coord"] = { 38.0, 3.0, STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(339, {	-- Chapter I
					["qg"] = 716,	-- Barnil Stonepot
					["coord"] = { 35.7, 10.5, STRANGLETHORN_VALE },
					["lvl"] = 30,
					["g"] = {
						i(2756, {	-- Green Hills of Stranglethorn - Chapter I
							["questID"] = 339,	-- Chapter I
							["cost"] = {
								{ "i", 2725, 1 },	-- Green Hills of Stranglethorn - Page 1
								{ "i", 2728, 1 },	-- Green Hills of Stranglethorn - Page 4
								{ "i", 2730, 1 },	-- Green Hills of Stranglethorn - Page 6
								{ "i", 2732, 1 },	-- Green Hills of Stranglethorn - Page 8
							},
						}),
					},
				}),
				q(340, {	-- Chapter II
					["qg"] = 716,	-- Barnil Stonepot
					["coord"] = { 35.7, 10.5, STRANGLETHORN_VALE },
					["lvl"] = 30,
					["g"] = {
						i(2757, {	-- Green Hills of Stranglethorn - Chapter II
							["questID"] = 340,	-- Chapter II
							["cost"] = {
								{ "i", 2734, 1 },	-- Green Hills of Stranglethorn - Page 10
								{ "i", 2735, 1 },	-- Green Hills of Stranglethorn - Page 11
								{ "i", 2738, 1 },	-- Green Hills of Stranglethorn - Page 14
								{ "i", 2740, 1 },	-- Green Hills of Stranglethorn - Page 16
							},
						}),
					},
				}),
				q(341, {	-- Chapter III
					["qg"] = 716,	-- Barnil Stonepot
					["coord"] = { 35.7, 10.5, STRANGLETHORN_VALE },
					["lvl"] = 30,
					["g"] = {
						i(2758, {	-- Green Hills of Stranglethorn - Chapter III
							["questID"] = 341,	-- Chapter III
							["cost"] = {
								{ "i", 2742, 1 },	-- Green Hills of Stranglethorn - Page 18
								{ "i", 2744, 1 },	-- Green Hills of Stranglethorn - Page 20
								{ "i", 2745, 1 },	-- Green Hills of Stranglethorn - Page 21
								{ "i", 2748, 1 },	-- Green Hills of Stranglethorn - Page 24
							},
						}),
					},
				}),
				q(342, {	-- Chapter IV
					["qg"] = 716,	-- Barnil Stonepot
					["coord"] = { 35.7, 10.5, STRANGLETHORN_VALE },
					["lvl"] = 30,
					["g"] = {
						i(2759, {	-- Green Hills of Stranglethorn - Chapter IV
							["questID"] = 342,	-- Chapter IV
							["cost"] = {
								{ "i", 2749, 1 },	-- Green Hills of Stranglethorn - Page 25
								{ "i", 2750, 1 },	-- Green Hills of Stranglethorn - Page 26
								{ "i", 2751, 1 },	-- Green Hills of Stranglethorn - Page 27
							},
						}),
					},
				}),
				q(202, {	-- Colonel Kurzen
					["qg"] = 469,	-- Lieutenant Doren
					["sourceQuest"] = 574,	-- Special Forces
					["coord"] = { 38.0, 3.0, STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3615, 1 },	-- Kurzen's Head
					},
					["lvl"] = 30,
					["g"] = {
						{
							["itemID"] = 3615,	-- Kurzen's Head
							["questID"] = 202,	-- Colonel Kurzen
							["cr"] = 813,	-- Colonel Kurzen
							["coord"] = { 49.6, 4.0, STRANGLETHORN_VALE },
						},
						i(4127),	-- Shrapnel Blaster
					},
				}),
				q(4782, { 	-- Components for the Enchanted Gold Bloodrobe (3/5)
					["qg"] = 2670,	-- Xizk Goodstitch
					["sourceQuest"] = 4781,	-- Components for the Enchanted Gold Bloodrobe (2/5)
					["classes"] = { WARLOCK },
					["lvl"] = 31,
				}),
				q(624, {	-- Cortello's Riddle (1/3)
					["provider"] = { "i", 4056 },	-- Cortello's Riddle
					["coords"] = {
						{ 29.5, 89.3, STRANGLETHORN_VALE },
						{ 33.6, 88.3, STRANGLETHORN_VALE },
					},
					["maps"] = { SWAMP_OF_SORROWS },
					["lvl"] = 35,
				}),
				q(625, {	-- Cortello's Riddle (2/3)
					["provider"] = { "o", 2553 },	-- A Soggy Scroll
					["sourceQuest"] = 624,	-- Cortello's Riddle (1/3)
					["coord"] = { 22.8, 48.1, SWAMP_OF_SORROWS },
					["maps"] = { DUSTWALLOW_MARSH, SWAMP_OF_SORROWS },
					["lvl"] = 35,
				}),
				q(626, {	-- Cortello's Riddle (3/3)
					["provider"] = { "o", 255 },	-- Musty Scroll
					["sourceQuest"] = 625,	-- Cortello's Riddle (2/3)
					["coord"] = { 31.1, 66.1, DUSTWALLOW_MARSH },
					["maps"] = { DUSTWALLOW_MARSH, THE_HINTERLANDS },
					["lvl"] = 35,
					["g"] = {
						{
							["itemID"] = 11324,	-- Explorer's Knapsack
							["questID"] = 626,	-- Cortello's Riddle
							["coord"] = { 80.8, 46.8, THE_HINTERLANDS },
						},
					},
				}),
				q(613, {	-- Cracking Maury's Foot
					["qg"] = 2501,	-- "Sea Wolf" MacKinley
					["sourceQuest"] = 609,	-- Voodoo Dues
					["coord"] = { 27.8, 77.1, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 3930, 1 },	-- Maury's Key
					},
					["lvl"] = 30,
					["g"] = {
						i(4129),	-- Collection Plate
					},
				}),
				q(1116, {	-- Dream Dust in the Swamp
					["qg"] = 773,	-- Krazek
					["sourceQuest"] = 1115,	-- The Rumormonger
					["coord"] = { 27, 77.2, STRANGLETHORN_VALE },
					["maps"] = { SWAMP_OF_SORROWS },
					["cost"] = {
						{ "i", 5803, 10 },	-- Speck of Dream Dust
					},
					["lvl"] = 30,
				}),
				q(3625, {	-- Enchanted Azsharite Fel Weaponry
					["qg"] = 7802,	-- Galvan the Ancient
					["sourceQuest"] = 3621,	-- The Formation of Felbane
					["lvl"] = 45,
					["g"] = {
						i(10697),	-- Enchanted Azsharite Felbane Dagger
						i(10698),	-- Enchanted Azsharite Felbane Staff
						i(10696),	-- Enchanted Azsharite Felbane Sword
					},
				}),
				q(628, {	-- Excelsior
					["qg"] = 2495,	-- Drizzlik
					["sourceQuest"] = 577,	-- Some Assembly Required
					["coord"] = { 28.2, 77.6, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 4105, 1 },	-- Elder Crocolisk Skin
					},
					["lvl"] = 31,
					["g"] = {
						i(4109),	-- Excelsior Boots
					},
				}),
				q(8554, {	-- Facing Negolash
					["qg"] = 2594,	-- Sprogger
					["sourceQuest"] = 8553,	-- The Captain's Cutlass
					["coord"] = { 26.7, 73.6, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 3935, 1 },	-- Smotts' Cutlass
					},
					["altQuests"] = {
						618,	-- Facing Negolash
					},
					["lvl"] = 35,
					["g"] = {
						q(619, {	-- Enticing Negolash
							["provider"] = { "o", 2289 },	-- Ruined Lifeboat
							["cost"] = {
								{ "i", 4457, 10 },	-- Barbecued Buzzard Wing
								{ "i", 4595, 5 },	-- Junglevine Wine
							},
							["description"] = "This quest is repeatable, but can only be completed while you have the quest \"Facing Negolash\" in your quest log.",
							["repeatable"] = true,
							["groups"] = {
								{
									["itemID"] = 3935,	-- Smotts' Cutlass
									["questID"] = 8554,	-- Facing Negolash
									["cr"] = 1494,	-- Negolash
									["coord"] = { 32.5, 81.9, STRANGLETHORN_VALE },
								}
							},
						}),
						i(4130),	-- Smotts' Compass
					},
				}),
				q(627, {	-- Favor for Krazek
					["qg"] = 773,	-- Krazek
					["coord"] = { 26.95, 77.21, STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 4278, 4 },	-- Lesser Bloodstone Ore
					},
					["lvl"] = 32,
				}),
				q(1127, {	-- Fool's Stout
					["qg"] = 2498,	-- Crank Fizzlebub
					["coord"] = { 27.1, 77.2, STRANGLETHORN_VALE },
					["repeatable"] = true,
					["lvl"] = 35,
					["g"] = {
						i(5806),	-- Fool's Stout
					},
				}),
				q(2932, {	-- Grim Message
					["qg"] = 2497,	-- Nimboya
					["coord"] = { 32.2, 27.8, STRANGLETHORN_VALE },
					["maps"] = { THE_HINTERLANDS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 9319, 1 },	-- Nimboya's Laden Pike
					},
					["lvl"] = 35,
					["g"] = {
						{
							["itemID"] = 15002,	-- Nimboya's Pike
							["cost"] = {
								{ "i", 9320, 20 },	-- Witherbark Skull
							},
							["groups"] = {
								{
									["itemID"] = 9319,	-- Nimboya's Laden Pike
									["questID"] = 2932,	-- Grim Message
									["coord"] = { 32, 58, THE_HINTERLANDS },
								},
							},
						},
					},
				}),
				q(582, {	-- Headhunting
					["qg"] = 2497,	-- Nimboya
					["sourceQuest"] = 581,	-- Hunt for Yenniku
					["coord"] = { 32.2, 27.8, STRANGLETHORN_VALE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 1532, 20 },	-- Shrunken Head
					},
					["lvl"] = 30,
					["g"] = {
						i(4133),	-- Darkspear Cuffs
						i(4132),	-- Darkspear Armsplints
					},
				}),
				q(213, {	-- Hostile Takeover
					["qg"] = 737,	-- Kebok
					["coord"] = { 27.00, 77.13, STRANGLETHORN_VALE },
					["lvl"] = 31,
					["g"] = {
						i(4121),	-- Gemmed Gloves
					},
				}),
				q(581, {	-- Hunt for Yenniku
					["qg"] = 2497,	-- Nimboya
					["coord"] = { 32.2, 27.8, STRANGLETHORN_VALE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3901, 9 },	-- Bloodscalp Tusk
					},
					["lvl"] = 30,
				}),
				q(201, {	-- Investigate the Camp
					["qg"] = 773,	-- Krazek
					["coord"] = { 26.95, 77.21, STRANGLETHORN_VALE },
					["lvl"] = 28,
				}),
				q(215, {	-- Jungle Secrets
					["qg"] = 738,	-- Private Thorsen
					["description"] = "Every so often, Thorsen will go on patrol. If you follow him, he will be ambushed by two of Kurzen's lackeys - if he survives, he will offer you this quest.",
					["coord"] = { 40, 8, STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(576, {	-- Keep An Eye Out
					["qg"] = 2493,	-- Dizzy One-Eye
					["coord"] = { 28.6, 75.9, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 3897, 1 },	-- Dizzy's Eye
					},
					["lvl"] = 37,
					["g"] = {
						i(4114),	-- Darktide Cape
					},
				}),
				q(210, {	-- Krazek's Cookery
					["qg"] = 770,	-- Corporal Kaleb
					["coord"] = { 37.7, 3.3, STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 32,
				}),
				q(207, {	-- Kurzen's Mystery
					["qg"] = 739,	-- Brother Nimetz
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(602, {	-- Magical Analysis
					["qg"] = 2496,	-- Baron Revilgaz
					["sourceQuest"] = 601,	-- Water Elementals
					["coord"] = { 27.2, 76.8, STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3960, 1 },	-- Bag of Water Elemental Bracers
					},
					["lvl"] = 32,
				}),
				q(206, {	-- Mai'Zoth
					["qg"] = 739,	-- Brother Nimetz
					["sourceQuest"] = 205,	-- Troll Witchery
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3616, 1 },	-- Mind's Eye
					},
					["lvl"] = 30,
					["g"] = {
						i(4125),	-- Tranquil Orb
					},
				}),
				q(594, {	-- Message in a Bottle (1/2)
					["provider"] = { "i", 4098 },	-- Carefully Folded Note
					["lvl"] = 45,
				}),
				q(630, {	-- Message in a Bottle (2/2)
					["qg"] = 2634,	-- Princess Poobah
					["sourceQuest"] = 594,	-- Message in a Bottle (1/2)
					["coord"] = { 38.4, 80.6, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 4103, 1 },	-- 	Shackle Key
					},
					["lvl"] = 42,
					["g"] = {
						i(4103, {	-- Shackle Key
							["cr"] = 1559,	-- King Mukla
							["questID"] = 630,	-- Message in a Bottle (2/2)
							["coord"] = { 40.8, 83.2, STRANGLETHORN_VALE },
						}),
						i(4118),	-- Poobah's Nose Ring
					},
				}),
				q(570, {	-- Mok'thardin's Enchantment
					["qg"] = 2465,	-- Far Seer Mok'thardin
					["coord"] = { 32, 29.2, STRANGLETHORN_VALE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3838, 8 },	-- Shadowmaw Claw
						{ "i", 3839, 1 },	-- Pristine Tigress Fang
					},
					["lvl"] = 33,
				}),
				q(572, {	-- Mok'thardin's Enchantment
					["qg"] = 2465,	-- Far Seer Mok'thardin
					["coord"] = { 32, 29.2, STRANGLETHORN_VALE },
					["sourceQuest"] = 570,	-- Mok'thardin's Enchantment
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3863, 10 },	-- Jungle Stalker Feather
					},
					["lvl"] = 33,
				}),
				q(571, {	-- Mok'thardin's Enchantment
					["qg"] = 2465,	-- Far Seer Mok'thardin
					["sourceQuest"] = 572,	-- Mok'thardin's Enchantment
					["coord"] = { 32, 29.2, STRANGLETHORN_VALE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3862, 1 },	-- Aged Gorilla Sinew
					},
					["lvl"] = 33,
				}),
				q(573, {	-- Mok'thardin's Enchantment
					["qg"] = 2465,	-- Far Seer Mok'thardin
					["sourceQuest"] = 571,	-- Mok'thardin's Enchantment
					["coord"] = { 32, 29.2, STRANGLETHORN_VALE },
					["maps"] = { STRANGLETHORN_VALE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 737, 1 },	-- Holy Spring Water
					},
					["lvl"] = 33,
					["g"] = {
						{
							["itemID"] = 737,	-- Holy Spring Water
							["questID"] = 573,	-- Mok'thardin's Enchantment
							["coord"] = { 28.9, 62.0, STRANGLETHORN_VALE },
						},
						i(4112),	-- Choker of the High Shaman
					},
				}),
				q(190, {	-- Panther Mastery (1/4)
					["qg"] = 718,	-- Sir S. J. Erlgadin
					["coord"] = { 35.6, 10.6, STRANGLETHORN_VALE },
					["lvl"] = 28,
				}),
				q(191, {	-- Panther Mastery (2/4)
					["qg"] = 718,	-- Sir S. J. Erlgadin
					["sourceQuest"] = 190,	-- Panther Mastery (1/4)
					["coord"] = { 35.6, 10.6, STRANGLETHORN_VALE },
					["lvl"] = 28,
				}),
				q(192, {	-- Panther Mastery (3/4)
					["qg"] = 718,	-- Sir S. J. Erlgadin
					["sourceQuest"] = 191,	-- Panther Mastery (2/4)
					["coord"] = { 35.6, 10.6, STRANGLETHORN_VALE },
					["lvl"] = 28,
				}),
				q(193, {	-- Panther Mastery (4/4)
					["qg"] = 718,	-- Sir S. J. Erlgadin
					["sourceQuest"] = 192,	-- Panther Mastery (3/4)
					["coord"] = { 35.6, 10.6, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 3876, 1 },	-- Fang of Bhag'thera
					},
					["lvl"] = 28,
					["g"] = {
						{
							["itemID"] = 3876,	-- Fang of Bhag'thera
							["questID"] = 193,	-- Panther Mastery (4/4)
							["cr"] = 728,	-- Bhag'thera
							["coords"] = {
								{ 49.0, 20.6, STRANGLETHORN_VALE },
								{ 49.8, 24.6, STRANGLETHORN_VALE },
								{ 47.8, 28.0, STRANGLETHORN_VALE },
							},
						},
						i(4108),	-- Panther Hunter Leggings
					},
				}),
				q(330, {	-- Patrol Schedules
					["qg"] = 469,	-- Lieutenant Doren
					["coord"] = { 38.0, 3.0, STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(194, {	-- Raptor Mastery (1/4)
					["qg"] = 715,	-- Hemet Nesingwary
					["coord"] = { 35.7, 10.8, STRANGLETHORN_VALE },
					["lvl"] = 28,
				}),
				q(195, {	-- Raptor Mastery (2/4)
					["qg"] = 715,	-- Hemet Nesingwary
					["coord"] = { 35.7, 10.8, STRANGLETHORN_VALE },
					["sourceQuest"] = 194,	-- Raptor Mastery (1/4)
					["lvl"] = 28,
				}),
				q(196, {	-- Raptor Mastery (3/4)
					["qg"] = 715,	-- Hemet Nesingwary
					["sourceQuest"] = 195,	-- Raptor Mastery (2/4)
					["coord"] = { 35.7, 10.8, STRANGLETHORN_VALE },
					["lvl"] = 28,
				}),
				q(197, {	-- Raptor Mastery (4/4)
					["qg"] = 715,	-- Hemet Nesingwary
					["sourceQuest"] = 196,	-- Raptor Mastery (3/4)
					["coord"] = { 35.7, 10.8, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 3877, 1 },	-- Talon of Tethis
					},
					["lvl"] = 28,
					["g"] = {
						{
							["itemID"] = 3877,	-- Talon of Tethis
							["questID"] = 197,	-- Raptor Mastery (4/4)
							["cr"] = 730,	-- Tethis
							["coord"] = { 29.6, 44.8, STRANGLETHORN_VALE },
						},
						i(4119),	-- Raptor Hunter Tunic
					},
				}),
				q(331, {	-- Report to Doren
					["qg"] = 1422,	-- Corporal Sethman
					["coord"] = { 37.7, 3.4, STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["g"] = {
						i(4139),	-- Junglewalker Sandals
						i(4123),	-- Frost Metal Pauldrons
					},
				}),
				q(622, {	-- Return to Corporal Kaleb
					["qg"] = 773,	-- Krazek
					["coord"] = { 26.95, 77.21, STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 32,
					["g"] = {
						i(4124),	-- Cap of Harmony
					},
				}),
				q(607, {	-- Return to MacKinley
					["qg"] = 2502,	-- \"Shaky\" Phillipe
					["sourceQuest"] = 606,	-- Scaring Shaky
					["coord"] = { 26.9, 73.6, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 3922, 1 },	-- Shaky's Payment
					},
					["lvl"] = 30,
				}),
				q(3626, {	-- Return to the Blasted Lands
					["qg"] = 7802,	-- Galvan the Ancient
					["sourceQuest"] = 3625,	-- Enchanted Azsharite Fel Weaponry
					["lvl"] = 45,
				}),
				q(592, {	-- Saving Yenniku
					["qg"] = 2519,	-- Kin'weelay
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3913, 1 },	-- Filled Soul Gem
					},
					["lvl"] = 30,
					["g"] = {
						{
							["itemID"] = 3912,	-- Soul Gem
							["questID"] = 593,	-- Filling the Soul Gem
							["description"] = "This quest is repeatable, but can only be completed while the quest \"Saving Yenniku\" (quest #592) is in your quest log.",
							["qg"] = 2530,	-- Yenniku <Darkspear Hostage>
							["coord"] = { 39, 58.2, STRANGLETHORN_VALE },
							["races"] = HORDE_ONLY,
							["repeatable"] = true,
							["groups"] = {
								{
									["itemID"] = 3913,	-- Filled Soul Gem
									["questID"] = 592,	-- Saving Yenniku
								},
							},
						},
						i(4134),	-- Nimboya's Mystical Staff
						i(6723),	-- Medal of Courage
					},
				}),
				q(606, {	-- Scaring Shaky
					["qg"] = 2501,	-- \"Sea Wolf\" MacKinley
					["coord"] = { 27.78, 77.07, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 3919, 5 },	-- Mistvale Giblets
					},
					["lvl"] = 30,
				}),
				q(605, {	-- Singing Blue Shards
					["qg"] = 2498,	-- Crank Fizzlebub
					["coord"] = { 27.12, 77.22, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 3918, 10 },	-- Singing Crystal Shard
					},
					["lvl"] = 30,
				}),
				q(209, {	-- Skullsplitter Tusks
					["qg"] = 737,	-- Kebok
					["sourceQuest"] = 189,	-- Bloodscalp Ears
					["coord"] = { 27.00, 77.13, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 1524, 18 },	-- Skullsplitter Tusk
					},
					["lvl"] = 37,
				}),
				q(577, {	-- Some Assembly Required
					["qg"] = 2495,	-- Drizzlik
					["coord"] = { 28.2, 77.6, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 4104, 5 },	-- Snapjaw Crocolisk Skin
					},
					["lvl"] = 31,
				}),
				q(586, {	-- Speaking with Gan'zulah
					["provider"] = { "o", 2076 },	-- Bubbling Cauldron
					["coord"] = { 32.2, 27.7, STRANGLETHORN_VALE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3909, 1 },	-- Broken Armor of Ana'thek
					},
					["lvl"] = 30,
					["groups"] = {
						{
							["itemID"] = 3909,	-- Broken Armor of Ana'thek
							["questID"] = 586,	-- Speaking with Gan'zulah
							["cr"] = 1059,	-- Ana'thek the Cruel <Skullsplitter Chief>
							["coord"] = { 44.6, 44.2, STRANGLETHORN_VALE },
						},
					},
				}),
				q(585, {	-- Speaking with Nezzliok
					["provider"] = { "o", 2076 },	-- Bubbling Cauldron
					["coord"] = { 32.2, 27.7, STRANGLETHORN_VALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(574, {	-- Special Forces
					["qg"] = 733,	-- Sergeant Yohwa
					["coord"] = { 38.0, 3.3, STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(598, {	-- Split Bone Necklace
					["qg"] = 2519,	-- Kin'weelay
					["coord"] = { 32.2, 27.8, STRANGLETHORN_VALE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3916, 25 },	-- Split Bone Necklace
					},
					["lvl"] = 30,
					["g"] = {
						i(4137),	-- Darkspear Shoes
						i(4136),	-- Darkspear Boots
					},
				}),
				q(348, {	-- Stranglethorn Fever
					["qg"] = 2486,	-- Fin Fizracket
					["coord"] = { 27.6, 76.7, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 2797, 1 },	-- Heart of Mokk
					},
					["lvl"] = 40,
					["g"] = {
						q(349, {	-- Stranglethorn Fever
							["qg"] = 1449,	-- Witch Doctor Unbagwa
							["coord"] = { 35.2, 60.4, STRANGLETHORN_VALE },
							["description"] = "This quest is repeatable, but can only be completed while you have the quest \"Stranglethorn Fever\" (Quest #348) in your quest log.",
							["cost"] = {
								{ "i", 2799, 10 },	-- Gorilla Fang
							},
							["repeatable"] = true,
							["lvl"] = 32,
							["groups"] = {
								{
									["itemID"] = 2797,	-- Heart of Mokk
									["questID"] = 348,	-- Stranglethorn Fever
									["cr"] = 1514,	-- Mokk the Savage
									["coord"] = { 35.2, 60.4, STRANGLETHORN_VALE },
								},
							},
						}),
						i(4113),	-- Medicine Blanket
					},
				}),
				q(198, {	-- Supplies to Private Thorsen
					["qg"] = 773,	-- Krazek
					["coord"] = { 26.95, 77.21, STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(575, {	-- Supply and Demand
					["qg"] = 2495,	-- Drizzlik
					["coord"] = { 28.29, 77.59, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 4053, 2 },	-- Large River Crocolisk Skin
					},
					["lvl"] = 26,
				}),
				q(595, {	-- The Bloodsail Buccaneers (1)
					["qg"] = 2490,	-- First Mate Crazz
					["coord"] = { 28.1, 76.2, STRANGLETHORN_VALE },
					["lvl"] = 37,
				}),
				q(597, {	-- The Bloodsail Buccaneers (2)
					["sourceQuest"] = 595,	-- The Bloodsail Buccaneers (1)
					["provider"] = { "o", 2083 },	-- Bloodsail Correspondence
					["coord"] = { 27.3, 69.5, STRANGLETHORN_VALE },
					["lvl"] = 37,
				}),
				q(599, {	-- The Bloodsail Buccaneers (3)
					["sourceQuest"] = 597,	-- The Bloodsail Buccaneers (2)
					["qg"] = 2490,	-- First Mate Crazz
					["coord"] = { 28.1, 76.2, STRANGLETHORN_VALE },
					["lvl"] = 37,
				}),
				q(604, {	-- The Bloodsail Buccaneers (4)
					["sourceQuest"] = 599,	-- The Bloodsail Buccaneers (3)
					["qg"] = 2487,	-- Fleet Master Seahorn
					["coord"] = { 27.2, 77.0, STRANGLETHORN_VALE },
					["lvl"] = 37,
				}),
				q(608, {	-- The Bloodsail Buccaneers (5)
					["sourceQuest"] = 604,	-- The Bloodsail Buccaneers (4)
					["qg"] = 2487,	-- Fleet Master Seahorn
					["coord"] = { 27.2, 77.0, STRANGLETHORN_VALE },
					["lvl"] = 37,
					["g"] = {
						i(4138),	-- Blackwater Tunic
					},
				}),
				q(8551, {	-- The Captain's Chest
					["qg"] = 2500,	-- Captain Hecklebury Smotts
					["coord"] = { 26.7, 73.6, STRANGLETHORN_VALE },
					["altQuests"] = {
						614,	-- The Captain's Chest [Old]
					},
					["cost"] = {
						{ "i", 3932, 1 },	-- Smotts' Chest
					},
					["lvl"] = 35,
					["g"] = {
						{
							["itemID"] = 3932,	-- Smotts' Chest
							["questID"] = 8551,	-- The Captain's Chest
							["altQuests"] = {
								614,	-- The Captain's Chest [Old]
							},
							["cr"] = 1492,	-- Gorlash
							["coord"] = { 36.6, 69.6, STRANGLETHORN_VALE },
						},
						i(11469),	-- Bloodband Bracers
					},
				}),
				q(8553, {	-- The Captain's Cutlass
					["qg"]	= 2500,	-- Captain Hecklebury Smotts
					["sourceQuest"] = 8552,	-- The Monogrammed Sash
					["coord"] = { 26.6, 73.6, STRANGLETHORN_VALE },
					["altQuests"] = {
						615,	-- The Captain's Cutlass
					},
					["lvl"] = 35,
				}),
				q(1041, {	-- The Caravan Road
					["qg"] = 3945,	-- Caravaneer Ruzzgot
					["sourceQuest"] = 1040,	-- Passage to Booty Bay(The Barrens)
					["coord"] = { 27.4, 74.1, STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
				}),
				q(611, {	-- The Curse of the Tides
					["qg"] = 2542,	-- Catelyn the Blade
					["sourceQuest"] = 610,	-- "Pretty Boy" Duncan
					["coord"] = { 27.3, 77.5, STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 4034, 1 },	-- Stone of the Tides
					},
					["lvl"] = 32,
					["g"] = {
						{
							["itemID"] = 4027,	-- Catelyn's Blade
							["coord"] = { 25, 23.6, STRANGLETHORN_VALE },
							["cr"] = 2624,	-- Gazban
							["groups"] = {
								{
									["itemID"] = 4034,	-- Stone of the Tides
									["questID"] = 611,	-- The Curse of the Tides
								},
							},
						},
						i(4120),	-- Robe of Crystal Waters
					},
				}),
				q(568, {	-- The Defense of Grom'gol
					["qg"] = 2464,	-- Commander Aggro'gosh
					["races"] = HORDE_ONLY,
					["lvl"] = 33,
				}),
				q(569, {	-- The Defense of Grom'gol
					["qg"] = 2464,	-- Commander Aggro'gosh
					["races"] = HORDE_ONLY,
					["lvl"] = 33,
					["g"] = {
						i(4115),	-- Grom'gol Buckler
					},
				}),
				q(588, {	-- The Fate of Yenniku
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(338, {	-- The Green Hills of Stranglethorn
					["qg"] = 716,	-- Barnil Stonepot
					["coord"] = { 35.7, 10.5, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 2756, 1 },	-- Green Hills of Stranglethorn - Chapter I
						{ "i", 2757, 1 },	-- Green Hills of Stranglethorn - Chapter II
						{ "i", 2758, 1 },	-- Green Hills of Stranglethorn - Chapter III
						{ "i", 2759, 1 },	-- Green Hills of Stranglethorn - Chapter IV
					},
					["lvl"] = 30,
					["g"] = {
						i(17688),	-- Jungle Boots
						i(3928),	-- Superior Healing Potion
						i(8173),	-- Thick Armor Kit
					},
				}),
				q(616, {	-- The Haunted Isle
					["qg"] = 773,	-- Krazek
					["coord"] = { 26.95, 77.21, STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 32,
				}),
				q(328, {	-- The Hidden Key
					["provider"] = { "o", 287 },	-- Bookie Herod's Records
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["g"] = {
						i(4122),	-- Bookmaker's Scepter
					},
				}),
				q(591, {	-- The Mind's Eye
					["qg"] = 2519,	-- Kin'weelay
					["sourceQuest"] = 589,	-- The Singing Crystals
					["coord"] = { 32.2, 27.8, STRANGLETHORN_VALE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3616, 1 },	-- Mind's Eye
					},
					["lvl"] = 30,
				}),
				q(8552, {	-- The Monogrammed Sash
					["provider"] = { "i", 3985, 1 },	-- Monogrammed Sash
					["coord"] = { 23.0, 71.4, STRANGLETHORN_VALE },
					["cr"] = 1493,	-- Mok'rash
					["altQuests"] = {
						620,	-- The Monogrammed Sash
					},
					["lvl"] = 35,
				}),
				q(203, {	-- The Second Rebellion
					["qg"] = 733,	-- Sergeant Yohwa
					["coord"] = { 38.0, 3.3, STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(589, {	-- The Singing Crystals
					["qg"] = 2519,	-- Kin'weelay
					["sourceQuest"] = 588,	-- The Fate of Yenniku
					["coord"] = { 32.2, 27.8, STRANGLETHORN_VALE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 3911, 1 },	-- Pulsing Blue Shard
					},
					["lvl"] = 30,
				}),
				q(329, {	-- The Spy Revealed!
					["provider"] = { "o", 288 },	-- Bookie Herod's Strongbox
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(578, {	-- The Stone of the Tides
					["qg"] = 2496,	-- Baron Revilgaz
					["sourceQuest"] = 616,	-- The Haunted Isle
					["coord"] = { 27.2, 76.9, STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 32,
				}),
				q(629, {	-- The Vile Reef
					["qg"] = 2519,	-- Kin'weelay
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
				}),
				q(185, {	-- Tiger Mastery (1/4)
					["qg"] = 717,	-- Ajeck Rouack
					["coord"] = { 35.6, 10.6, STRANGLETHORN_VALE },
					["lvl"] = 28,
				}),
				q(186, {	-- Tiger Mastery (2/4)
					["qg"] = 717,	-- Ajeck Rouack
					["sourceQuest"] = 185,	-- Tiger Mastery (1/4)
					["coord"] = { 35.6, 10.6, STRANGLETHORN_VALE },
					["lvl"] = 28,
				}),
				q(187, {	-- Tiger Mastery (3/4)
					["qg"] = 717,	-- Ajeck Rouack
					["sourceQuest"] = 186,	-- Tiger Mastery (2/4)
					["coord"] = { 35.6, 10.6, STRANGLETHORN_VALE },
					["lvl"] = 28,
				}),
				q(188, {	-- Tiger Mastery (4/4)
					["qg"] = 717,	-- Ajeck Rouack
					["sourceQuest"] = 187,	-- Tiger Mastery (3/4)
					["coord"] = { 35.6, 10.6, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 3879, 1 },	-- Paw of Sin'Dall
					},
					["lvl"] = 28,
					["g"] = {
						{
							["itemID"] = 3879,	-- Paw of Sin'Dall
							["questID"] = 188,	-- Tiger Mastery (4/4)
							["cr"] = 729,	-- Sin'Dall
							["coord"] = { 32.6, 17.2, STRANGLETHORN_VALE },
						},
						i(4107),	-- Tiger Hunter Gloves
					},
				}),
				q(9259, {	-- Traitor to the Bloodsail
					["qg"] = 16399,	-- Bloodsail Traitor
					["coord"] = { 31.8, 70.9, STRANGLETHORN_VALE },
					["maxReputation"] = { 21, NEUTRAL },	-- Booty Bay, must be less than Neutral
					["cost"] = {
						{ "i", 4306, 40 },	-- Silk Cloth
						{ "i", 2604, 4 },	-- Red Dye
					},
					["repeatable"] = true,
					["lvl"] = 30,
				}),
				q(205, {	-- Troll Witchery
					["qg"] = 739,	-- Brother Nimetz
					["sourceQuest"] = 207,	-- Kurzen's Mystery
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2466, 4 },	-- Skullsplitter Fetish
					},
					["lvl"] = 30,
				}),
				q(638, {	-- Trollbane
					["qg"] = 2497,	-- Nimboya
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 32,
				}),
				q(587, {	-- Up to Snuff
					["qg"] = 2488,	-- Deeg
					["coord"] = { 26.9, 77.3, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 3910, 15 },	-- Snuff
					},
					["lvl"] = 37,
				}),
				q(600, {	-- Venture Company Mining
					["qg"] = 2498,	-- Crank Fizzlebub
					["sourceQuest"] = 605,	-- Singing Blue Shards
					["coord"] = { 27.1, 77.2, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 3917, 10 },	-- Singing Blue Crystal
					},
					["lvl"] = 30,
					["g"] = {
						i(5253),	-- Goblin Igniter
						i(4128),	-- Silver Spade
					},
				}),
				q(609, {	-- Voodoo Dues
					["qg"] = 2501,	-- \"Sea Wolf\" MacKinley
					["sourceQuest"] = 607,	-- Return to MacKinley
					["coord"] = { 27.8, 77.1, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 3926, 1 },	-- Chucky's Huge Ring
						{ "i", 3925, 1 },	-- Jon-Jon's Golden Spyglass
						{ "i", 3924, 1 },	-- Maury's Clubbed Foot
					},
					["lvl"] = 30,
					["groups"] = {
						{
							["itemID"] = 3926,	-- Chucky's Huge Ring
							["questID"] = 609,	-- Voodoo Dues
							["cr"] = 2537,	-- Chucky "Ten Thumbs"
							["coord"] = { 40.2, 58.6, STRANGLETHORN_VALE },
						},
						{
							["itemID"] = 3925,	-- Jon-Jon's Golden Spyglass
							["questID"] = 609,	-- Voodoo Dues
							["cr"] = 2536,	-- Jon-Jon the Crow
							["coord"] = { 34.8, 51.8, STRANGLETHORN_VALE },
						},
						{
							["itemID"] = 3924,	-- Maury's Clubbed Foot
							["questID"] = 609,	-- Voodoo Dues
							["cr"] = 2535,	-- Maury "Club Foot" Wilkins
							["coord"] = { 35.2, 51.0, STRANGLETHORN_VALE },
						},
					},
				}),
				q(601, {	-- Water Elementals
					["qg"] = 2496,	-- Baron Revilgaz
					["sourceQuest"] = 578,	-- 	The Stone of the Tides
					["coord"] = { 27.2, 76.9, STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3923, 6 },	-- Water Elemental Bracers
					},
					["lvl"] = 32,
				}),
				q(583, {	-- Welcome to the Jungle
					["qg"] = 716,	-- Barnil Stonepot
					["coord"] = { 35.7, 10.5, STRANGLETHORN_VALE },
					["lvl"] = 28,
				}),
				q(580, {	-- Whiskey Slim's Lost Grog
					["qg"] = 2491,	-- Whiskey Slim
					["coord"] = { 27.1, 77.5, STRANGLETHORN_VALE },
					["maps"] = { THE_HINTERLANDS },
					["cost"] = {
						 { "i", 3900, 12 },	-- Pupellyverbos Port
					},
					["lvl"] = 40,
					["g"] = {
						{
							["itemID"] = 3900,	-- Pupellyverbos Port
							["questID"] = 580,	-- Whiskey Slim's Lost Grog
							["coords"] = {
								{ 81.7, 49.3, THE_HINTERLANDS },
								{ 80.0, 59.8, THE_HINTERLANDS },
								{ 79.4, 70.4, THE_HINTERLANDS },
								{ 79.6, 81.5, THE_HINTERLANDS },
								{ 73.3, 96.9, THE_HINTERLANDS },
							},
						},
						i(17048),	-- Rumsey Rum
					},
				}),
				q(621, {	-- Zanzil's Secret
					["qg"] = 2498,	-- Crank Fizzlebub
					["coord"] = { 27.1, 77.2, STRANGLETHORN_VALE },
					["cost"] = {
						{ "i", 4016, 12 },	-- Zanzil's Mixture
					},
					["lvl"] = 35,
					["g"] = {
						i(4131),	-- Belt of Corruption
					},
				}),
			}),
		}),
	}),
};