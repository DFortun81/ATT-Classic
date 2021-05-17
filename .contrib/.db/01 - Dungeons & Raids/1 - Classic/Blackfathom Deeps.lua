-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
_.Instances = { tier(1, {	-- Classic
	map(BLACKFATHOM_DEEPS, {
		["description"] = "Situated along the Zoram Strand of Ashenvale, Blackfathom Deeps was once a glorious temple dedicated to the night elves' moon-goddess, Elune. However, the great Sundering shattered the temple - sinking it beneath the waves of the Veiled Sea. There it remained untouched - until, drawn by its ancient power - the naga and satyr emerged to plumb its secrets. Legends hold that the ancient beast, Aku'mai, has taken up residence within the temple's ruins. Aku'mai, a favored pet of the primordial Old Gods, has preyed upon the area ever since. Drawn to Aku'mai's presence, the cult known as the Twilight's Hammer has also come to bask in the Old Gods' evil presence.",
		["coord"] = { 14.0, 11.1, ASHENVALE },
		["lvl"] = 19,
		["groups"] = {
			n(QUESTS, {
				q(6564, {	-- Allegiance to the Old Gods (1/2)
					["provider"] = { "i", 16790 },	-- Damp Note
					["maps"] = { ASHENVALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
				}),
				q(6565, {	-- Allegiance to the Old Gods (2/2)
					["sourceQuest"] = 6564,	-- Allegiance to the Old Gods (1/2)
					["qg"] = 12736,	-- Je'neu Sancrea <The Earthen Ring>
					["coord"] = { 11.6, 34.3, ASHENVALE },
					["maps"] = { ASHENVALE },
					["races"] = HORDE_ONLY,
					["cr"] = 12902,	-- Lorgus Jett
					["lvl"] = 17,
					["groups"] = {
						i(17695),	-- Chestnut Mantle
						i(17694),	-- Band of the Fist
					},
				}),
				q(6921, {	-- Amongst the Ruins
					["qg"] = 12736,	-- Je'neu Sancrea <The Earthen Ring>
					["altQuests"] = {
						908,	-- Amongst the Ruins
					},
					["coord"] = { 11.6, 34.3, ASHENVALE },
					["maps"] = { ASHENVALE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 16762, 1 },	-- Fathom Core
					},
					["lvl"] = 21,
				}),
				q(6922, {	-- Baron Aquanis
					["provider"] = { "i", 16782 },	-- Strange Water Globe
					["altQuests"] = {
						909,	-- Baron Aquanis [Original?]
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 21,
					["groups"] = {
						i(16886),	-- Outlaw Sabre
						i(16887),	-- Witch's Finger
					},
				}),
				{
					["allianceQuestID"] = 1200,	-- Blackfathom Villainy
					["hordeQuestID"] = 6561,	-- Blackfathom Villainy
					["qg"] = 4787,	-- Argent Guard Thaelrid <The Argent Dawn>
					["sourceQuest"] = 1198,	-- In Search of Thaelrid
					["cost"] = {
						{ "i", 5881, 1 },	-- Head of Kelris
					},
					["lvl"] = 18,
					["groups"] = {
						i(7002),	-- Arctic Buckler
						i(7001),	-- Gravestone Scepter
					},
				},
				q(1198, {	-- In Search of Thaelrid
					["qg"] = 4786,	-- Dawnwatcher Shaedlass <The Argent Dawn>
					["coord"] = { 28.7, 52.1, DARNASSUS },
					["maps"] = { DARNASSUS },
					-- This quest is also available to Horde, though the questgiver is a bit out of the way. (And, of course, it doesn't grant the Darnassus rep.)
					-- Trying to accept the followup quest as Horde gives you "That quest is not available for your race.".
					["isBreadcrumb"] = true,
					["lvl"] = 18,
				}),
				q(971, {	-- Knowledge in the Deeps
					["qg"] = 2786,	-- Gerrig Bonegrip
					["sourceQuest"] = 968,	-- The Powers Below
					["coord"] = { 50.8, 5.6, IRONFORGE },
					["maps"] = { IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5359, 1 },	-- Lorgalis Manuscript
					},
					["lvl"] = 10,
					["groups"] = {
						i(6743),	-- Sustaining Ring
					},
				}),
				q(1275, {	-- Researching the Corruption
					["qg"] = 8997,	-- Gershala Nightwhisper
					["coord"] = { 38.3, 43.0, DARKSHORE },
					["maps"] = { DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5952, 8 },	-- Corrupted Brain Stem
					},
					["lvl"] = 18,
					["groups"] = {
						i(7003),	-- Beetle Clasps
						i(7004),	-- Prelacy Cape
					},
				}),
				q(1442, {	-- Seeking the Kor Gem
					["qg"] = 3649,	-- Thundris Windweaver
					["sourceQuest"] = 1653,	-- The Test of Righteousness (1/3)
					["coord"] = { 37.4, 40.2, DARKSHORE },
					["maps"] = { DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { PALADIN },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 6995, 1 },	-- Corrupted Kor Gem
					},
					["lvl"] = 20,
					["groups"] = {
						{
							["itemID"] = 7083,	-- Purified Kor Gem
							["questID"] = 1654,	-- The Test of Righteousness (2/3)
						},
					},
				}),
				q(6563, {	-- The Essence of Aku'Mai
					["qg"] = 12736,	-- Je'neu Sancrea <The Earthen Ring>
					["sourceQuest"] = 6562,	-- Trouble in the Deeps
					["coord"] = { 11.6, 34.3, ASHENVALE },
					["maps"] = { ASHENVALE },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 16784, 20 },	-- Sapphire of Aku'Mai
					},
					["lvl"] = 17,
				}),
				q(6562, {	-- Trouble in the Deeps
					["qg"] = 11862,	-- Tsunaman
					["coord"] = { 47.3, 64.4, STONETALON_MOUNTAINS },
					["maps"] = { ASHENVALE, STONETALON_MOUNTAINS },
					["isBreadcrumb"] = true,
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
				}),
				q(1199, {	-- Twilight Falls
					["qg"] = 4784,	-- Argent Guard Manados <The Argent Dawn>
					["coord"] = { 38.3, 43.0, DARNASSUS },
					["maps"] = { DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5879, 10 },	-- Twilight Pendant
					},
					["lvl"] = 20,
					["groups"] = {
						i(7000),	-- Heartwood Girdle
						i(6998),	-- Nimbus Boots
					},
				}),
			}),
			n(ZONEDROPS, {
				i(1454, {	-- Axe of the Enforcer
					["crs"] = {
						4825,	-- Aku'mai Snapjaw
						4823,	-- Barbed Crustacean
						12876,	-- Baron Aquanis
						4805,	-- Blackfathom Sea Witch
						4819,	-- Blindlight Muckdweller
						4820,	-- Blindlight Oracle
						4827,	-- Deep Pool Threshfin
						4799,	-- Fallenroot Hellcaller
						4798,	-- Fallenroot Shadowstalker
						12902,	-- Lorgus Jett
						4809,	-- Twilight Acolyte
						4811,	-- Twilight Aquamancer
						4814,	-- Twilight Elementalist
						4812,	-- Twilight Loreseeker
						4810,	-- Twilight Reaver
						4813,	-- Twilight Shadowmage
					},
				}),
				i(5952, {	-- Corrupted Brain Stem
					["questID"] = 1275,	-- Researching the Corruption
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						4807,	-- Blackfathom Myrmidon
						4803,	-- Blackfathom Oracle
						4805,	-- Blackfathom Sea Witch
						4802,	-- Blackfathom Tide Priestess
						4799,	-- Fallenroot Hellcaller
						4789,	-- Fallenroot Rogue
						4788,	-- Fallenroot Satyr
						4798,	-- Fallenroot Shadowstalker
						4831,	-- Lady Sarevess
					},
				}),
				i(3414, {	-- Crested Scepter
					["crs"] = {
						4978,	-- Aku'mai Servant
						4825,	-- Aku'mai Snapjaw
						4823,	-- Barbed Crustacean
						12876,	-- Baron Aquanis
						4805,	-- Blackfathom Sea Witch
						4819,	-- Blindlight Muckdweller
						4820,	-- Blindlight Oracle
						4799,	-- Fallenroot Hellcaller
						4798,	-- Fallenroot Shadowstalker
						12902,	-- Lorgus Jett
						4809,	-- Twilight Acolyte
						4811,	-- Twilight Aquamancer
						4814,	-- Twilight Elementalist
						4812,	-- Twilight Loreseeker
						4810,	-- Twilight Reaver
						4813,	-- Twilight Shadowmage
					},
				}),
				i(16790, {	-- Damp Note
					["questID"] = 6564,	-- Allegiance to the Old Gods (1/2)
					["cr"] = 4802,	-- Blackfathom Tide Priestess
					["races"] = HORDE_ONLY,
				}),
				i(3413, {	-- Doomspike
					["crs"] = {
						4824,	-- Aku'mai Fisher
						4825,	-- Aku'mai Snapjaw
						4823,	-- Barbed Crustacean
						4807,	-- Blackfathom Myrmidon
						4803,	-- Blackfathom Oracle
						4805,	-- Blackfathom Sea Witch
						4819,	-- Blindlight Muckdweller
						4818,	-- Blindlight Murloc
						4820,	-- Blindlight Oracle
						4827,	-- Deep Pool Threshfin
						4799,	-- Fallenroot Hellcaller
						4789,	-- Fallenroot Rogue
						4798,	-- Fallenroot Shadowstalker
						12902,	-- Lorgus Jett
						4815,	-- Murkshallow Snapclaw
						4821,	-- Skittering Crustacean
						4822,	-- Snapping Crustacean
						4809,	-- Twilight Acolyte
						4811,	-- Twilight Aquamancer
						4814,	-- Twilight Elementalist
						4812,	-- Twilight Loreseeker
						4810,	-- Twilight Reaver
						4813,	-- Twilight Shadowmage
					},
				}),
				i(2567, {	-- Evocator's Blade
					["crs"] = {
						4824,	-- Aku'mai Fisher
						4978,	-- Aku'mai Servant
						4825,	-- Aku'mai Snapjaw
						4823,	-- Barbed Crustacean
						4807,	-- Blackfathom Myrmidon
						4803,	-- Blackfathom Oracle
						4805,	-- Blackfathom Sea Witch
						4802,	-- Blackfathom Tide Priestess
						4819,	-- Blindlight Muckdweller
						4818,	-- Blindlight Murloc
						4820,	-- Blindlight Oracle
						4827,	-- Deep Pool Threshfin
						4799,	-- Fallenroot Hellcaller
						4789,	-- Fallenroot Rogue
						4798,	-- Fallenroot Shadowstalker
						4815,	-- Murkshallow Snapclaw
						4821,	-- Skittering Crustacean
						4822,	-- Snapping Crustacean
						4809,	-- Twilight Acolyte
						4811,	-- Twilight Aquamancer
						4814,	-- Twilight Elementalist
						4812,	-- Twilight Loreseeker
						4810,	-- Twilight Reaver
						4813,	-- Twilight Shadowmage
					},
				}),
				i(1481, {	-- Grimclaw
					["crs"] = {
						4825,	-- Aku'mai Snapjaw
						4823,	-- Barbed Crustacean
						12876,	-- Baron Aquanis
						4807,	-- Blackfathom Myrmidon
						4803,	-- Blackfathom Oracle
						4805,	-- Blackfathom Sea Witch
						4819,	-- Blindlight Muckdweller
						4818,	-- Blindlight Murloc
						4820,	-- Blindlight Oracle
						4827,	-- Deep Pool Threshfin
						4799,	-- Fallenroot Hellcaller
						4789,	-- Fallenroot Rogue
						4798,	-- Fallenroot Shadowstalker
						4815,	-- Murkshallow Snapclaw
						4822,	-- Snapping Crustacean
						4809,	-- Twilight Acolyte
						4811,	-- Twilight Aquamancer
						4814,	-- Twilight Elementalist
						4812,	-- Twilight Loreseeker
						4810,	-- Twilight Reaver
						4813,	-- Twilight Shadowmage
					},
				}),
				i(5359, {	-- Lorgalis Manuscript
					["description"] = "Guarded by a few Naga in the underwater room directly to the right of Ghamoo-ra.",
					["questID"] = 971,	-- Knowledge in the Deeps
					["races"] = ALLIANCE_ONLY,
				}),
				i(3416, {	-- Martyr's Chain
					["crs"] = {
						4824,	-- Aku'mai Fisher
						4978,	-- Aku'mai Servant
						4825,	-- Aku'mai Snapjaw
						4823,	-- Barbed Crustacean
						12876,	-- Baron Aquanis
						4807,	-- Blackfathom Myrmidon
						4805,	-- Blackfathom Sea Witch
						4819,	-- Blindlight Muckdweller
						4818,	-- Blindlight Murloc
						4820,	-- Blindlight Oracle
						4827,	-- Deep Pool Threshfin
						4799,	-- Fallenroot Hellcaller
						4798,	-- Fallenroot Shadowstalker
						12902,	-- Lorgus Jett
						4815,	-- Murkshallow Snapclaw
						4809,	-- Twilight Acolyte
						4811,	-- Twilight Aquamancer
						4814,	-- Twilight Elementalist
						4812,	-- Twilight Loreseeker
						4810,	-- Twilight Reaver
						4813,	-- Twilight Shadowmage
					},
				}),
				i(3417, {	-- Onyx Claymore
					["crs"] = {
						4824,	-- Aku'mai Fisher
						4978,	-- Aku'mai Servant
						4825,	-- Aku'mai Snapjaw
						4823,	-- Barbed Crustacean
						4807,	-- Blackfathom Myrmidon
						4805,	-- Blackfathom Sea Witch
						4819,	-- Blindlight Muckdweller
						4818,	-- Blindlight Murloc
						4820,	-- Blindlight Oracle
						4827,	-- Deep Pool Threshfin
						4799,	-- Fallenroot Hellcaller
						4798,	-- Fallenroot Shadowstalker
						12902,	-- Lorgus Jett
						4815,	-- Murkshallow Snapclaw
						4809,	-- Twilight Acolyte
						4811,	-- Twilight Aquamancer
						4814,	-- Twilight Elementalist
						4812,	-- Twilight Loreseeker
						4810,	-- Twilight Reaver
						4813,	-- Twilight Shadowmage
					},
				}),
				i(1491, {	-- Ring of Precision
					["crs"] = {
						4824,	-- Aku'mai Fisher
						4978,	-- Aku'mai Servant
						4825,	-- Aku'mai Snapjaw
						4823,	-- Barbed Crustacean
						12876,	-- Baron Aquanis
						4807,	-- Blackfathom Myrmidon
						4803,	-- Blackfathom Oracle
						4805,	-- Blackfathom Sea Witch
						4819,	-- Blindlight Muckdweller
						4818,	-- Blindlight Murloc
						4820,	-- Blindlight Oracle
						4799,	-- Fallenroot Hellcaller
						4789,	-- Fallenroot Rogue
						4798,	-- Fallenroot Shadowstalker
						4815,	-- Murkshallow Snapclaw
						4821,	-- Skittering Crustacean
						4822,	-- Snapping Crustacean
						4809,	-- Twilight Acolyte
						4811,	-- Twilight Aquamancer
						4814,	-- Twilight Elementalist
						4812,	-- Twilight Loreseeker
						4810,	-- Twilight Reaver
						4813,	-- Twilight Shadowmage
					},
				}),
				i(2034, {	-- Scholarly Robes
					["crs"] = {
						4809,	-- Twilight Acolyte
						4811,	-- Twilight Aquamancer
						4814,	-- Twilight Elementalist
						4812,	-- Twilight Loreseeker
						4810,	-- Twilight Reaver
						4813,	-- Twilight Shadowmage
					},
				}),
				i(6914, {	-- Soran'ruk Fragment
					["questID"] = 1740,	-- The Orb of Soran'ruk
					["classes"] = { WARLOCK },
					["cr"] = 4809,	-- Twilight Acolyte
				}),
				i(2271, {	-- Staff of the Blessed Seer
					["crs"] = {
						4824,	-- Aku'mai Fisher
						4978,	-- Aku'mai Servant
						4825,	-- Aku'mai Snapjaw
						4823,	-- Barbed Crustacean
						12876,	-- Baron Aquanis
						4807,	-- Blackfathom Myrmidon
						4803,	-- Blackfathom Oracle
						4805,	-- Blackfathom Sea Witch
						4802,	-- Blackfathom Tide Priestess
						4819,	-- Blindlight Muckdweller
						4818,	-- Blindlight Murloc
						4820,	-- Blindlight Oracle
						4799,	-- Fallenroot Hellcaller
						4789,	-- Fallenroot Rogue
						4788,	-- Fallenroot Satyr
						4798,	-- Fallenroot Shadowstalker
						12902,	-- Lorgus Jett
						4815,	-- Murkshallow Snapclaw
						4821,	-- Skittering Crustacean
						4822,	-- Snapping Crustacean
						4809,	-- Twilight Acolyte
						4811,	-- Twilight Aquamancer
						4814,	-- Twilight Elementalist
						4812,	-- Twilight Loreseeker
						4810,	-- Twilight Reaver
						4813,	-- Twilight Shadowmage
					},
				}),
				i(3415, {	-- Staff of the Friar
					["crs"] = {
						4824,	-- Aku'mai Fisher
						4825,	-- Aku'mai Snapjaw
						4823,	-- Barbed Crustacean
						4807,	-- Blackfathom Myrmidon
						4803,	-- Blackfathom Oracle
						4805,	-- Blackfathom Sea Witch
						4802,	-- Blackfathom Tide Priestess
						4819,	-- Blindlight Muckdweller
						4818,	-- Blindlight Murloc
						4820,	-- Blindlight Oracle
						4827,	-- Deep Pool Threshfin
						4799,	-- Fallenroot Hellcaller
						4789,	-- Fallenroot Rogue
						4788,	-- Fallenroot Satyr
						4798,	-- Fallenroot Shadowstalker
						12902,	-- Lorgus Jett
						4815,	-- Murkshallow Snapclaw
						4821,	-- Skittering Crustacean
						4822,	-- Snapping Crustacean
						4809,	-- Twilight Acolyte
						4811,	-- Twilight Aquamancer
						4814,	-- Twilight Elementalist
						4812,	-- Twilight Loreseeker
						4810,	-- Twilight Reaver
						4813,	-- Twilight Shadowmage
					},
				}),
				i(1486, {	-- Tree Bark Jacket
					["crs"] = {
						4824,	-- Aku'mai Fisher
						4978,	-- Aku'mai Servant
						4825,	-- Aku'mai Snapjaw
						4823,	-- Barbed Crustacean
						4807,	-- Blackfathom Myrmidon
						4803,	-- Blackfathom Oracle
						4805,	-- Blackfathom Sea Witch
						4802,	-- Blackfathom Tide Priestess
						4819,	-- Blindlight Muckdweller
						4818,	-- Blindlight Murloc
						4820,	-- Blindlight Oracle
						4827,	-- Deep Pool Threshfin
						4799,	-- Fallenroot Hellcaller
						4789,	-- Fallenroot Rogue
						4788,	-- Fallenroot Satyr
						4798,	-- Fallenroot Shadowstalker
						12902,	-- Lorgus Jett
						4815,	-- Murkshallow Snapclaw
						4821,	-- Skittering Crustacean
						4822,	-- Snapping Crustacean
						4809,	-- Twilight Acolyte
						4811,	-- Twilight Aquamancer
						4814,	-- Twilight Elementalist
						4812,	-- Twilight Loreseeker
						4810,	-- Twilight Reaver
						4813,	-- Twilight Shadowmage
					},
				}),
				i(5879, {	-- Twilight Pendant
					["questID"] = 1199,	-- Twilight Falls
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						4809,	-- Twilight Acolyte
						4811,	-- Twilight Aquamancer
						4814,	-- Twilight Elementalist
						4812,	-- Twilight Loreseeker
						4810,	-- Twilight Reaver
						4813,	-- Twilight Shadowmage
					},
				}),
			}),
			n(4887, {	-- Ghamoo-ra
				i(6907),	-- Tortoise Armor
				i(6908),	-- Ghamoo-ra's Bind
			}),
			n(4831, {	-- Lady Sarevess
				i(11121),	-- Darkwater Talwar
				i(3078),	-- Naga Heartpiercer
				i(888),		-- Naga Battle Gloves
			}),
			n(6243, {	-- Gelihast
				i(6905),	-- Reef Axe
				i(6906),	-- Algae Fists
			}),
			o(177964, {	-- Fathom Stone
				["description"] = "In the water below the Twilight bridge.\n\nWARNING: Spawns Baron Aquanis.",
				["sourceQuest"] = 6921,	-- Amongst the Ruins
				["races"] = HORDE_ONLY,
				["groups"] = {
					{
						["itemID"] = 16762,	-- Fathom Core
						["questID"] = 6921,	-- Amongst the Ruins
						["races"] = HORDE_ONLY,
					},
					n(12876, {	-- Baron Aquanis
						["description"] = "This boss can only be summoned by Horde players on the Amongst the Ruins quest.",
						["races"] = HORDE_ONLY,
						["groups"] = {
							{
								["itemID"] = 16782,	-- Strange Water Globe
								["questID"] = 6922,	-- Baron Aquanis
								["altQuests"] = {
									909,	-- Baron Aquanis [Original?]
								},
							},
						},
					}),
				},
			}),
			n(4830, {	-- Old Serra'kis
				i(6904),	-- Bite of Serra'kis
				i(6902),	-- Bands of Serra'kis
				i(6901),	-- Glowing Thresher Cape
			}),
			n(4832, {	-- Twilight Lord Kelris
				{
					["itemID"] = 5881,	-- Head of Kelris
					["allianceQuestID"] = 1200,	-- Blackfathom Villainy
					["hordeQuestID"] = 6561,	-- Blackfathom Villainy
				},
				i(1155),	-- Rod of the Sleepwalker
				i(6903),	-- Gaze Dreamer Pants
			}),
			n(4829, {	-- Aku'mai
				i(6909),	-- Strike of the Hydra
				i(6911),	-- Moss Cinch
				i(6910),	-- Leech Pants
			}),
		},
	}),
})};