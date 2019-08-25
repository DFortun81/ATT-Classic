-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

_.Instances = {
	map(221, { 	-- Blackfathom Deeps
		["description"] = "Situated along the Zoram Strand of Ashenvale, Blackfathom Deeps was once a glorious temple dedicated to the night elves' moon-goddess, Elune. However, the great Sundering shattered the temple - sinking it beneath the waves of the Veiled Sea. There it remained untouched - until, drawn by its ancient power - the naga and satyr emerged to plumb its secrets. Legends hold that the ancient beast, Aku'mai, has taken up residence within the temple's ruins. Aku'mai, a favored pet of the primordial Old Gods, has preyed upon the area ever since. Drawn to Aku'mai's presence, the cult known as the Twilight's Hammer has also come to bask in the Old Gods' evil presence.",
		["coord"] = { 14.0, 11.1, ASHENVALE },	-- TODO: Ashenvale MapID and approximate location
		["lvl"] = 19,
		["groups"] = {
			n(-17, {	-- Quests
				{
					["questID"] = 6565,	-- Allegiance to the Old Gods
					["sourceQuest"] = 6564,	-- Allegiance to the Old Gods
					["qg"] = 12736,	-- Je'neu Sancrea <The Earthen Ring>
					["coord"] = { 11.6, 34.3, ASHENVALE },	-- Ashenvale [TODO: Get the MapID]
					["maps"] = { ASHENVALE },	-- Ashenvale [TODO: Get the MapID]
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						i(17695),	-- Chestnut Mantle
						i(17694),	-- Band of the Fist
					},
				},
				{
					["questID"] = 6565,	-- Amongst the Ruins
					["qg"] = 12736,	-- Je'neu Sancrea <The Earthen Ring>
					["coord"] = { 11.6, 34.3, ASHENVALE },	-- Ashenvale [TODO: Get the MapID]
					["maps"] = { ASHENVALE },	-- Ashenvale [TODO: Get the MapID]
					["races"] = HORDE_ONLY,
					["lvl"] = 21,
				},
				{
					["questID"] = 6922,	-- Baron Aquanis
					["altQuests"] = {
						909,	-- Baron Aquanis [Original?]
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 21,
					["groups"] = {
						i(16886),	-- Outlaw Sabre
						i(16887),	-- Witch's Finger
					},
				},
				{
					["allianceQuestID"] = 1200,	-- Blackfathom Villainy
					["hordeQuestID"] = 6561,	-- Blackfathom Villainy
					["sourceQuest"] = 1198,	-- In Search of Thaelrid
					["qg"] = 4787,	-- Argent Guard Thaelrid <The Argent Dawn>
					["lvl"] = 18,
					["groups"] = {
						i(7002),	-- Arctic Buckler
						i(7001),	-- Gravestone Scepter
					},
				},
				{
					["questID"] = 1198,	-- In Search of Thaelrid
					["qg"] = 4786,	-- Dawnwatcher Shaedlass <The Argent Dawn>
					["coord"] = { 28.7, 52.1, TELDRASSIL },	-- Teldrassil [TODO: Get the MapID]
					["maps"] = { TELDRASSIL },	-- Teldrassil [TODO: Get the MapID]
					-- This quest is also available to Horde, though the questgiver is a bit out of the way. (And, of course, it doesn't grant the Darnassus rep.)
					-- Trying to accept the followup quest as Horde gives you "That quest is not available for your race.".
					["isBreadcrumb"] = true,
					["lvl"] = 18,
				},
				{
					["questID"] = 971,	-- Knowledge in the Deeps
					["qg"] = 2786,	-- Gerrig Bonegrip
					["coord"] = { 50.8, 5.6, IRONFORGE },	-- Ironforge [TODO: Get the MapID]
					["maps"] = { IRONFORGE },	-- Ironforge [TODO: Get the MapID]
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						i(6743),	-- Sustaining Ring
					},
				},
				{
					["questID"] = 1275,	-- Researching the Corruption
					["qg"] = 8997,	-- Gershala Nightwhisper
					["coord"] = { 38.3, 43.0, DARKSHORE },	-- Darkshore [TODO: Get the MapID]
					["maps"] = { DARKSHORE },	-- Darkshore [TODO: Get the MapID]
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						i(7003),	-- Beetle Clasps
						i(7004),	-- Prelacy Cape
					},
				},
				{
					["questID"] = 6565,	-- The Essence of Aku'Mai
					["sourceQuest"] = 6562,	-- Trouble in the Deeps
					["qg"] = 12736,	-- Je'neu Sancrea <The Earthen Ring>
					["coord"] = { 11.6, 34.3, ASHENVALE },	-- Ashenvale [TODO: Get the MapID]
					["maps"] = { ASHENVALE },	-- Ashenvale [TODO: Get the MapID]
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
				},
				{
					["questID"] = 6562,	-- Trouble in the Deeps
					["qg"] = 11862,	-- Tsunaman
					["coord"] = { 47.3, 64.4, STONETALON },	-- Stonetalon Mountains [TODO: Get the MapID]
					["maps"] = { STONETALON },	-- Stonetalon Mountains [TODO: Get the MapID]
					["isBreadcrumb"] = true,
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
				},
				{
					["questID"] = 1199,	-- Twilight Falls
					["qg"] = 4784,	-- Argent Guard Manados <The Argent Dawn>
					["coord"] = { 38.3, 43.0, TELDRASSIL },	-- Teldrassil [TODO: Get the MapID]
					["maps"] = { TELDRASSIL },	-- Teldrassil [TODO: Get the MapID]
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						i(7000),	-- Heartwood Girdle
						i(6998),	-- Nimbus Boots
					},
				},
			}),
			n(0, {	-- Zone Drop
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
				i(5952),	-- Corrupted Brain Stem
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
					["crs"] = { 4802 },	-- Blackfathom Tide Priestess
					["coord"] = { 14.0, 11.1, ASHENVALE },	-- Ashenvale [TODO: Get the MapID]
					["races"] = HORDE_ONLY,
					["groups"] = {
						{
							["questID"] = 6564,	-- Allegiance to the Old Gods
							["qg"] = 12736,	-- Je'neu Sancrea <The Earthen Ring>
							["coord"] = { 11.6, 34.3, ASHENVALE },	-- Ashenvale [TODO: Get the MapID]
							["maps"] = { ASHENVALE },	-- Ashenvale [TODO: Get the MapID]
							["races"] = HORDE_ONLY,
						},
					},
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
					["crs"] = {
						4809,	-- Twilight Acolyte
					},
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
				["sourceQuest"] = 6565,	-- Amongst the Ruins
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(16762),	-- Fathom Core
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
				i(5881),	-- Head of Kelris
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
};