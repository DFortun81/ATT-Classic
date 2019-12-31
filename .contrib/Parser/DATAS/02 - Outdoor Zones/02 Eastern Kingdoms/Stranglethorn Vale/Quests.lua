---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {	-- Eastern Kingdoms
		m(STRANGLETHORN_VALE, {	-- Stranglethorn Vale
			n(-17, {	-- Quests
				q(610, {	-- "Pretty Boy" Duncan
					["lvl"] = 32,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2542, -- Catelyn the Blade
					["sourceQuest"] = 603, -- Ansirem's Key
					["coord"] = { 27.3, 77.5, STRANGLETHORN_VALE },
				}),
				q(623, {	-- Akiris by the Bundle
					["lvl"] = 38,
					["races"] = ALLIANCE_ONLY,
				}),
				q(617, {	-- Akiris by the Bundle
					["lvl"] = 38,
					["qg"] = 2494,	-- Privateer Bloads
					["g"] = {
						i(4117),	-- Scorching Sash
					},
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
					["lvl"] = 32,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2543,	-- Archmage Ansirem Runeweaver
					["sourceQuest"] = 603, -- Magical Analysis
					["coord"] = { 18.8, 78.5, ALTERAC_MOUNTAINS },
				}),
				q(7908, {	-- Arena Master
				}),
				q(7810, {	-- Arena Master
				}),
				q(204, {	-- Bad Medicine
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 733,	-- Sergeant Yohwa
					["g"] = {
						i(4140),	-- Palm Frond Mantle
						i(4126),	-- Guerrilla Cleaver
					},
					["coord"] = { 38.0, 3.3, STRANGLETHORN_VALE },
				}),
				q(208, {	-- Big Game Hunter
					["lvl"] = 28,
					["qg"] = 715,	-- Hemet Nesingwary
					["g"] = {
						i(17686),	-- Master Hunter's Bow
						i(17687),	-- Master Hunter's Rifle
					},
					["coord"] = { 35.7, 10.8, STRANGLETHORN_VALE },
				}),
				q(584, {	-- Bloodscalp Clan Heads
					["lvl"] = 30,
					["races"] = HORDE_ONLY,
					["qg"] = 2497,	-- Nimboya
				}),
				q(189, {	-- Bloodscalp Ears
					["qg"] = 737,	-- Kebok
					["coord"] = { 27.00, 77.13, STRANGLETHORN_VALE },
					["lvl"] = 30,
					["g"] = {
						i(4598),	-- Goblin Fishing Pole
					},
				}),
				q(596, {	-- Bloody Bone Necklaces
					["lvl"] = 30,
					["races"] = HORDE_ONLY,
					["qg"] = 2519,	-- Kin'weelay
					["g"] = {
						i(4135),	-- Bloodbone Band
					},
				}),
				q(200, {	-- Bookie Herod
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 469,	-- Lieutenant Doren
					["coord"] = { 38.0, 3.0, STRANGLETHORN_VALE },
				}),
				q(339, {	-- Chapter I
					["lvl"] = 30,
					["qg"] = 716,	-- Barnil Stonepot
					["g"] = {
						i(2756),	-- Green Hills of Stranglethorn - Chapter I
					},
					["coord"] = { 35.7, 10.5, STRANGLETHORN_VALE },
				}),
				q(340, {	-- Chapter II
					["lvl"] = 30,
					["qg"] = 716,	-- Barnil Stonepot
					["g"] = {
						i(2757),	-- Green Hills of Stranglethorn - Chapter II
					},
					["coord"] = { 35.7, 10.5, STRANGLETHORN_VALE },
				}),
				q(341, {	-- Chapter III
					["lvl"] = 30,
					["qg"] = 716,	-- Barnil Stonepot
					["g"] = {
						i(2758),	-- Green Hills of Stranglethorn - Chapter III
					},
					["coord"] = { 35.7, 10.5, STRANGLETHORN_VALE },
				}),
				q(342, {	-- Chapter IV
					["lvl"] = 30,
					["qg"] = 716,	-- Barnil Stonepot
					["g"] = {
						i(2759),	-- Green Hills of Stranglethorn - Chapter IV
					},
					["coord"] = { 35.7, 10.5, STRANGLETHORN_VALE },
				}),
				q(202, {	-- Colonel Kurzen
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 469,	-- Lieutenant Doren
					["g"] = {
						i(4127),	-- Shrapnel Blaster
					},
					["coord"] = { 38.0, 3.0, STRANGLETHORN_VALE },
				}),
				q(4782, { -- Components for the Enchanted Gold Bloodrobe (3/5)
					["lvl"] = 31,
					["classes"] = { WARLOCK },
					["qg"] = 2670, -- Xizk Goodstitch
					["sourceQuest"] = 4781, -- Components for the Enchanted Gold Bloodrobe (2/5)
				}),
				q(625, {	-- Cortello's Riddle
					["lvl"] = 35,
				}),
				q(624, {	-- Cortello's Riddle
					["lvl"] = 35,
				}),
				q(626, {	-- Cortello's Riddle
					["lvl"] = 35,
					["provider"] = { "o", 255 }, -- Musty Scroll
					--["objectID"] = 2555,	-- Musty Scroll
					["g"] = {
						i(11324),	-- Explorer's Knapsack
					},
				}),
				q(613, {	-- Cracking Maury's Foot
					["lvl"] = 30,
					["g"] = {
						i(4129),	-- Collection Plate
					},
					["sourceQuest"] = 609, -- Voodoo Dues
				}),
				q(3625, {	-- Enchanted Azsharite Fel Weaponry
					["lvl"] = 45,
					["qg"] = 7802,	-- Galvan the Ancient
					["sourceQuest"] = 3621,	-- The Formation of Felbane
					["g"] = {
						i(10697),	-- Enchanted Azsharite Felbane Dagger
						i(10698),	-- Enchanted Azsharite Felbane Staff
						i(10696),	-- Enchanted Azsharite Felbane Sword
					},
				}),
				q(628, {	-- Excelsior
					["lvl"] = 31,
					["g"] = {
						i(4109),	-- Excelsior Boots
					},
				}),
				q(618, { -- Facing Negolash
					["cost"] = {
						{ "i", 3935, 1 },	-- Smotts' Cutlass
					},
					["altQuests"] = {
						8554,	-- Facing Negolash
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
								n(1494, {	-- Negolash
									["coord"] = { 32.5, 81.9, STRANGLETHORN_VALE },
									["groups"] = {
										{
											["itemID"] = 3935,	-- Smotts' Cutlass
											["questID"] = 8554,	-- Facing Negolash
										},
									}
								}),
							},
						}),
						i(4130),	-- Smotts' Compass
					},
				}),
				q(627, {	-- Favor for Krazek
					["lvl"] = 32,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 773,	-- Krazek
					["coord"] = { 26.95, 77.21, STRANGLETHORN_VALE },
				}),
				q(593, {	-- Filling the Soul Gem
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["description"] = "This quest is repeatable, but can only be completed while the quest \"Saving Yenniku\" (quest #592) is in your quest log.",
					["g"] = {
						i(3913),	-- Filled Soul Gem
					},
				}),
				q(1127, {	-- Fool's Stout
					["lvl"] = 35,
					["qg"] = 2498,	-- Crank Fizzlebub
					["repeatable"] = true,
					["g"] = {
						i(5806),	-- Fool's Stout
					},
					["coord"] = { 27.1, 77.2, STRANGLETHORN_VALE },
				}),
				q(582, {	-- Headhunting
					["lvl"] = 30,
					["races"] = HORDE_ONLY,
					["qg"] = 2497,	-- Nimboya
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
					["lvl"] = 30,
					["races"] = HORDE_ONLY,
					["qg"] = 2497,	-- Nimboya
				}),
				q(201, {	-- Investigate the Camp
					["qg"] = 773,	-- Krazek
					["coord"] = { 26.95, 77.21, STRANGLETHORN_VALE },
					["lvl"] = 28,
				}),
				q(215, {	-- Jungle Secrets
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 738,	-- Private Thorsen
				}),
				q(576, {	-- Keep An Eye Out
					["lvl"] = 37,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2493,	-- Dizzy One-Eye
					["g"] = {
						i(4114),	-- Darktide Cape
					},
					["coord"] = { 28.6, 75.9, STRANGLETHORN_VALE },
				}),
				q(210, {	-- Krazek's Cookery
					["lvl"] = 32,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 770,	-- Corporal Kaleb
					["coord"] = { 37.7, 3.3, STRANGLETHORN_VALE },
				}),
				q(207, {	-- Kurzen's Mystery
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 739,	-- Brother Nimetz
				}),
				q(602, {	-- Magical Analysis
					["lvl"] = 32,
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 601, -- Water Elementals
				}),
				q(206, {	-- Mai'Zoth
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 739,	-- Brother Nimetz
					["sourceQuest"] = 205, -- Troll Witchery
					["g"] = {
						i(4125),	-- Tranquil Orb
					},
				}),
				q(630, {	-- Message in a Bottle (2/2)
					["sourceQuest"] = 594,	-- Message in a Bottle (1/2)
					["qg"] = 2634,	-- Princess Poobah
					["lvl"] = 42,
					["g"] = {
						i(4118),	-- Poobah's Nose Ring
					},
				}),
				q(594, {	-- Message in a Bottle (1/2)
					["provider"] = { "i", 4098 },	-- Carefully Folded Note
					["lvl"] = 45,
				}),
				q(572, {	-- Mok'thardin's Enchantment
					["lvl"] = 33,
					["races"] = HORDE_ONLY,
					["qg"] = 2465,	-- Far Seer Mok'thardin
				}),
				q(573, {	-- Mok'thardin's Enchantment
					["lvl"] = 33,
					["races"] = HORDE_ONLY,
					["qg"] = 2465,	-- Far Seer Mok'thardin
					["g"] = {
						i(4112),	-- Choker of the High Shaman
					},
				}),
				q(571, {	-- Mok'thardin's Enchantment
					["lvl"] = 33,
					["races"] = HORDE_ONLY,
					["qg"] = 2465,	-- Far Seer Mok'thardin
				}),
				q(570, {	-- Mok'thardin's Enchantment
					["lvl"] = 33,
					["races"] = HORDE_ONLY,
					["qg"] = 2465,	-- Far Seer Mok'thardin
				}),
				q(190, {	-- Panther Mastery (1/4)
					["lvl"] = 28,
					["qg"] = 718,	-- Sir S. J. Erlgadin
					["coord"] = { 35.6, 10.6, STRANGLETHORN_VALE },
				}),
				q(191, {	-- Panther Mastery (2/4)
					["lvl"] = 28,
					["qg"] = 718,	-- Sir S. J. Erlgadin
					["sourceQuest"] = 190, -- Panther Mastery (1/4)
					["coord"] = { 35.6, 10.6, STRANGLETHORN_VALE },
				}),
				q(192, {	-- Panther Mastery (3/4)
					["lvl"] = 28,
					["qg"] = 718,	-- Sir S. J. Erlgadin
					["sourceQuest"] = 191, -- Panther Mastery (2/4)
					["coord"] = { 35.6, 10.6, STRANGLETHORN_VALE },
				}),
				q(193, {	-- Panther Mastery (4/4)
					["lvl"] = 28,
					["qg"] = 718,	-- Sir S. J. Erlgadin
					["sourceQuest"] = 192, -- Panther Mastery (3/4)
					["coord"] = { 35.6, 10.6, STRANGLETHORN_VALE },
					["g"] = {
						i(4108),	-- Panther Hunter Leggings
					},
				}),
				q(330, {	-- Patrol Schedules
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 469,	-- Lieutenant Doren
					["coord"] = { 38.0, 3.0, STRANGLETHORN_VALE },
				}),
				q(194, {	-- Raptor Mastery (1/4)
					["lvl"] = 28,
					["qg"] = 715,	-- Hemet Nesingwary
					["coord"] = { 35.7, 10.8, STRANGLETHORN_VALE },
				}),
				q(195, {	-- Raptor Mastery (2/4)
					["lvl"] = 28,
					["qg"] = 715,	-- Hemet Nesingwary
					["coord"] = { 35.7, 10.8, STRANGLETHORN_VALE },
					["sourceQuest"] = 194, -- Raptor Mastery (1/4)
				}),
				q(196, {	-- Raptor Mastery (3/4)
					["lvl"] = 28,
					["qg"] = 715,	-- Hemet Nesingwary
					["sourceQuest"] = 195, -- Raptor Mastery (2/4)
					["coord"] = { 35.7, 10.8, STRANGLETHORN_VALE },
				}),
				q(197, {	-- Raptor Mastery (4/4)
					["lvl"] = 28,
					["qg"] = 715,	-- Hemet Nesingwary
					["sourceQuest"] = 196, -- Raptor Mastery (3/4)
					["g"] = {
						i(4119),	-- Raptor Hunter Tunic
					},
					["coord"] = { 35.7, 10.8, STRANGLETHORN_VALE },
				}),
				q(331, {	-- Report to Doren
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1422,	-- Corporal Sethman
					["g"] = {
						i(4139),	-- Junglewalker Sandals
						i(4123),	-- Frost Metal Pauldrons
					},
					["coord"] = { 37.7, 3.4, STRANGLETHORN_VALE },
				}),
				q(622, {	-- Return to Corporal Kaleb
					["lvl"] = 32,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 773,	-- Krazek
					["coord"] = { 26.95, 77.21, STRANGLETHORN_VALE },
					["g"] = {
						i(4124),	-- Cap of Harmony
					},
				}),
				q(607, {	-- Return to MacKinley
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2502,	-- \"Shaky\" Phillipe
					["sourceQuest"] = 606, -- Scaring Shaky
					["coord"] = { 26.9, 73.6, STRANGLETHORN_VALE },
				}),
				q(3626, {	-- Return to the Blasted Lands
					["lvl"] = 45,
					["qg"] = 7802,	-- Galvan the Ancient
					["sourceQuest"] = 3625,	-- Enchanted Azsharite Fel Weaponry
				}),
				q(592, {	-- Saving Yenniku
					["lvl"] = 30,
					["races"] = HORDE_ONLY,
					["qg"] = 2519,	-- Kin'weelay
					["g"] = {
						i(4134),	-- Nimboya's Mystical Staff
						i(6723),	-- Medal of Courage
					},
				}),
				q(606, {	-- Scaring Shaky
					["qg"] = 2501,	-- \"Sea Wolf\" MacKinley
					["coord"] = { 27.78, 77.07, STRANGLETHORN_VALE },
					["lvl"] = 30,
				}),
				q(605, {	-- Singing Blue Shards
					["qg"] = 2498,	-- Crank Fizzlebub
					["coord"] = { 27.12, 77.22, STRANGLETHORN_VALE },
					["lvl"] = 30,
				}),
				q(209, {	-- Skullsplitter Tusks
					["lvl"] = 37,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 737,	-- Kebok
					["sourceQuest"] = 189, -- Bloodscalp Ears
					["coord"] = { 27.00, 77.13, STRANGLETHORN_VALE },
				}),
				q(577, {	-- Some Assembly Required
					["lvl"] = 31,
					["qg"] = 2495,	-- Drizzlik
					["coord"] = { 28.29, 77.59, STRANGLETHORN_VALE },
				}),
				q(586, {	-- Speaking with Gan'zulah
					["lvl"] = 30,
					["races"] = HORDE_ONLY,
				}),
				q(585, {	-- Speaking with Nezzliok
					["lvl"] = 30,
					["races"] = HORDE_ONLY,
				}),
				q(574, {	-- Special Forces
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 733,	-- Sergeant Yohwa
					["coord"] = { 38.0, 3.3, STRANGLETHORN_VALE },
				}),
				q(598, {	-- Split Bone Necklace
					["lvl"] = 30,
					["races"] = HORDE_ONLY,
					["qg"] = 2519,	-- Kin'weelay
					["g"] = {
						i(4137),	-- Darkspear Shoes
						i(4136),	-- Darkspear Boots
					},
				}),
				q(348, {	-- Stranglethorn Fever
					["qg"] = 2486,	-- Fin Fizracket
					["coord"] = { 27.6, 76.7, STRANGLETHORN_VALE },
					["lvl"] = 40,
					["g"] = {
						i(4113),	-- Medicine Blanket
					},
				}),
				q(349, {	-- Stranglethorn Fever
					["qg"] = 1449,	-- Witch Doctor Unbagwa
					["coord"] = { 35.2, 60.4, STRANGLETHORN_VALE },
					["lvl"] = 32,
					["repeatable"] = true,
					["description"] = "This quest is repeatable, but can only be completed while you have the quest \"Stranglethorn Fever\" (Quest #348) in your quest log.",
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
					["lvl"] = 26,
				}),
				q(595, {	-- The Bloodsail Buccaneers (1)
					["qg"] = 2490,	-- First Mate Crazz
					["coord"] = { 28.1, 76.2, STRANGLETHORN_VALE },
					["lvl"] = 37,
				}),
				q(597, {	-- The Bloodsail Buccaneers (2)
					["sourceQuest"] = 595, -- The Bloodsail Buccaneers (1)
					["provider"] = { "o", 2083 }, -- Bloodsail Correspondence
					["coord"] = { 27.3, 69.5, STRANGLETHORN_VALE },
					["lvl"] = 37,
				}),
				q(599, {	-- The Bloodsail Buccaneers (3)
					["sourceQuest"] = 597, -- The Bloodsail Buccaneers (2)
					["qg"] = 2490,	-- First Mate Crazz
					["coord"] = { 28.1, 76.2, STRANGLETHORN_VALE },
					["lvl"] = 37,
				}),
				q(604, {	-- The Bloodsail Buccaneers (4)
					["sourceQuest"] = 599, -- The Bloodsail Buccaneers (3)
					["qg"] = 2487,	-- Fleet Master Seahorn
					["coord"] = { 27.2, 77.0, STRANGLETHORN_VALE },
					["lvl"] = 37,
				}),
				q(608, {	-- The Bloodsail Buccaneers (5)
					["sourceQuest"] = 604, -- The Bloodsail Buccaneers (4)
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
					["lvl"] = 35,
					["g"] = {
						i(11469),	-- Bloodband Bracers
					},
				}),
				q(614, {	-- The Captain's Chest
					["qg"] = 2500,	-- Captain Hecklebury Smotts
					["coord"] = { 26.7, 73.6, STRANGLETHORN_VALE },
					["lvl"] = 35,
					["g"] = {
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
				q(615, {	-- The Captain's Cutlass
					["altQuests"] = {
						8553,	-- The Captain's Cutlass
					},
					["lvl"] = 35,
				}),
				q(1041, {	-- The Caravan Road
					["sourceQuest"] = 1040,	-- Passage to Booty Bay(The Barrens)
					["qg"] = 3945,	-- Caravaneer Ruzzgot
					["description"] = "This quest is part of a series that starts in Ashenvale.",
					["coord"] = { 27.4, 74.1, STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
				}),
				q(611, {	-- The Curse of the Tides
					["qg"] = 2542,	-- Catelyn the Blade
					["sourceQuest"] = 610, -- "Pretty Boy" Duncan
					["coord"] = { 27.3, 77.5, STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 32,
					["g"] = {
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
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					--["objectID"] = 287,	-- Bookie Herod's Records
					["g"] = {
						i(4122),	-- Bookmaker's Scepter
					},
				}),
				q(591, {	-- The Mind's Eye
					["lvl"] = 30,
					["races"] = HORDE_ONLY,
				}),
				q(8552, {	-- The Monogrammed Sash
					["provider"] = { "i", 3985, 1 },	-- Monogrammed Sash
					["cr"] = 1493,	-- Mok'rash
					["coord"] = { 23.0, 71.4, STRANGLETHORN_VALE },
					["altQuests"] = {
						620,	-- The Monogrammed Sash
					},
					["lvl"] = 35,
				}),
				q(620, {	-- The Monogrammed Sash
					["provider"] = { "i", 3985, 1 },	-- Monogrammed Sash
					["cr"] = 1493,	-- Mok'rash
					["altQuests"] = {
						8552,	-- The Monogrammed Sash
					},
					["lvl"] = 35,
				}),
				q(203, {	-- The Second Rebellion
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 733,	-- Sergeant Yohwa
					["coord"] = { 38.0, 3.3, STRANGLETHORN_VALE },
				}),
				q(589, {	-- The Singing Crystals
					["lvl"] = 30,
					["races"] = HORDE_ONLY,
				}),
				q(329, {	-- The Spy Revealed!
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					--["objectID"] = 288,	-- Bookie Herod's Strongbox
				}),
				q(578, {	-- The Stone of the Tides
					["lvl"] = 32,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2496,	-- Baron Revilgaz
					["sourceQuest"] = 616, -- The Haunted Isle
					["coord"] = { 27.2, 76.9, STRANGLETHORN_VALE },
				}),
				q(629, {	-- The Vile Reef
					["lvl"] = 30,
					["races"] = HORDE_ONLY,
					["qg"] = 2519,	-- Kin'weelay
				}),
				q(185, {	-- Tiger Mastery (1/4)
					["lvl"] = 28,
					["qg"] = 717,	-- Ajeck Rouack
					["coord"] = { 35.6, 10.6, STRANGLETHORN_VALE },
				}),
				q(186, {	-- Tiger Mastery (2/4)
					["lvl"] = 28,
					["qg"] = 717,	-- Ajeck Rouack
					["sourceQuest"] = 185, -- Tiger Mastery (1/4)
					["coord"] = { 35.6, 10.6, STRANGLETHORN_VALE },
				}),
				q(187, {	-- Tiger Mastery (3/4)
					["lvl"] = 28,
					["qg"] = 717,	-- Ajeck Rouack
					["sourceQuest"] = 186, -- Tiger Mastery (2/4)
					["coord"] = { 35.6, 10.6, STRANGLETHORN_VALE },
				}),
				q(188, {	-- Tiger Mastery (4/4)
					["lvl"] = 28,
					["qg"] = 717,	-- Ajeck Rouack
					["sourceQuest"] = 187, -- Tiger Mastery (3/4)
					["g"] = {
						i(4107),	-- Tiger Hunter Gloves
					},
					["coord"] = { 35.6, 10.6, STRANGLETHORN_VALE },
				}),
				q(9259, {	-- Traitor to the Bloodsail
					["lvl"] = 30,
					["repeatable"] = true,
					["maxReputation"] = { 21, NEUTRAL },	-- Booty Bay, must be less than Neutral
					["qg"] = 16399,	-- Bloodsail Traitor
					["coord"] = { 31.8, 70.9, STRANGLETHORN_VALE },
				}),
				q(205, {	-- Troll Witchery
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 739,	-- Brother Nimetz
					["sourceQuest"] = 207, -- Kurzen's Mystery
				}),
				q(638, {	-- Trollbane
					["lvl"] = 32,
					["races"] = HORDE_ONLY,
					["qg"] = 2497,	-- Nimboya
				}),
				q(587, {	-- Up to Snuff
					["lvl"] = 37,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2488,	-- Deeg
					["coord"] = { 26.9, 77.3, STRANGLETHORN_VALE },
				}),
				q(600, {	-- Venture Company Mining
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2498,	-- Crank Fizzlebub
					["g"] = {
						i(5253),	-- Goblin Igniter
						i(4128),	-- Silver Spade
					},
					["sourceQuest"] = 605, -- Singing Blue Shards
					["coord"] = { 27.1, 77.2, STRANGLETHORN_VALE },
				}),
				q(609, {	-- Voodoo Dues
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2501,	-- \"Sea Wolf\" MacKinley
					["sourceQuest"] = 607, -- Return to MacKinley
					["coord"] = { 27.8, 77.1, STRANGLETHORN_VALE },
				}),
				q(601, {	-- Water Elementals
					["lvl"] = 32,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2496,	-- Baron Revilgaz
					["sourceQuest"] = 578, --	The Stone of the Tides
					["coord"] = { 27.2, 76.9, STRANGLETHORN_VALE },
				}),
				q(583, {	-- Welcome to the Jungle
					["lvl"] = 28,
					["qg"] = 716,	-- Barnil Stonepot
					["coord"] = { 35.7, 10.5, STRANGLETHORN_VALE },
				}),
				q(580, {	-- Whiskey Slim's Lost Grog
					["lvl"] = 40,
					["qg"] = 2491,	-- Whiskey Slim
					["g"] = {
						i(17048),	-- Rumsey Rum
					},
					["coord"] = { 27.1, 77.5, STRANGLETHORN_VALE },
				}),
				q(621, {	-- Zanzil's Secret
					["lvl"] = 35,
					["qg"] = 2498,	-- Crank Fizzlebub
					["g"] = {
						i(4131),	-- Belt of Corruption
					},
					["coord"] = { 27.1, 77.2, STRANGLETHORN_VALE },
				}),
			}),
		}),
	}),
};