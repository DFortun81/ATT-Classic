-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
_.Instances = { tier(1, {	-- Classic
	map(WAILING_CAVERNS, {
		["description"] = "Recently, a night elf druid named Naralex discovered a network of underground caverns within the heart of the Barrens. Dubbed the 'Wailing Caverns', these natural caves were filled with steam fissures which produced long, mournful wails as they vented. Naralex believed he could use the caverns' underground springs to restore lushness and fertility to the Barrens - but to do so would require siphoning the energies of the fabled Emerald Dream.\n\nOnce connected to the Dream, however, the druid's vision somehow became a nightmare. Soon the Wailing Caverns began to change - the waters turned foul and the once-docile creatures inside metamorphosed into vicious, deadly predators. It is said that Naralex himself still resides somewhere inside the heart of the labyrinth, trapped beyond the edges of the Emerald Dream. Even his former acolytes have been corrupted by their master's waking nightmare - transformed into the wicked Druids of the Fang.",
		["coord"] = { 45.9, 35.7, THE_BARRENS },
		["lvl"] = 10,
		["g"] = {
			n(QUESTS, {
				["description"] = "To get to the quest giver hub outside the instance:\n\nWhen facing the mouth of the cave, you should see that the entrance looks like a skull. The questgivers are in the left eye. To get there, climb up the mountain, drop onto the head, drop onto the brow, drop onto the nose, face the instance, and go into the eye on the left",
				["groups"] = {
					{
						["questID"] = 1487,	-- Deviate Eradication
						["qg"] = 5768,	-- Ebru <Disciple of Naralex>
						["coord"] = { 46.0, 35.7, THE_BARRENS },
						["maps"] = { THE_BARRENS },
						["lvl"] = 15,
						["g"] = {
							i(6476),	-- Pattern: Deviate Scale Belt
							i(8071),	-- Sizzle Stick
							i(6481),	-- Dagmire Gauntlets
						},
					},
					{
						["questID"] = 1486,	-- Deviate Hides
						["qg"] = 5767,	-- Nalpak <Disciple of Naralex>
						["coord"] = { 46.0, 35.7, THE_BARRENS },
						["maps"] = { THE_BARRENS },
						["cost"] = {
							{ "i", 6443, 20 },	-- Deviate Hide
						},
						["lvl"] = 13,
						["g"] = {
							i(6480),	-- Slick Deviate Leggings
							i(918),		-- Deviate Hide Pack
						},
					},
					{
						["questID"] = 1489,	-- Hamuul Runetotem
						["qg"] = 3448,	-- Tonga Runetotem
						["sourceQuest"] = 880,	-- Altered Beings
						["coord"] = { 52.3, 31.9, THE_BARRENS },
						["maps"] = { THE_BARRENS },
						["races"] = HORDE_ONLY,
						["lvl"] = 10,
					},
					{
						["allianceQuestID"] = 3370,	-- In Nightmares
						["hordeQuestID"] = 3369,	-- In Nightmares
						["qg"] = 8418,	-- Falla Sagewind
						["sourceQuest"] = 6981,	-- The Glowing Shard
						["description"] = "She lives in a house on top of the mountain.",
						["coord"] = { 48.2, 32.8, THE_BARRENS },
						["maps"] = { THE_BARRENS },
						["cost"] = {
							{ "i", 10649, 1 },	-- Nightmare Shard
						},
						["lvl"] = 15,
						["groups"] = {
							i(10657),	-- Talbar Mantle
							i(10658),	-- Quagmire Galoshes
						},
					},
					{
						["questID"] = 914,	-- Leaders of the Fang
						["qg"] = 5770,	-- Nara Wildmane
						["sourceQuest"] = 1490,	-- Nara Wildmane
						["coords"] = {
							{ 45.2, 23.3, MULGORE },
							{ 75, 31, THUNDER_BLUFF },
						},
						["maps"] = { MULGORE, THUNDER_BLUFF },
						["races"] = HORDE_ONLY,
						["cost"] = {
							{ "i", 9739, 1 },	-- Gem of Anacondra
							{ "i", 9738, 1 },	-- Gem of Cobrahn
							{ "i", 9740, 1 },	-- Gem of Pythas
							{ "i", 9741, 1 },	-- Gem of Serpentis
						},
						["lvl"] = 10,
						["g"] = {
							i(6505),	-- Crescent Staff
							i(6504),	-- Wingblade
						},
					},
					{
						["questID"] = 1490,	-- Nara Wildmane
						["sourceQuest"] = 1489,	-- Hamuul Runetotem
						["qg"] = 5769,	-- Arch Druid Hamuul Runetotem
						["coords"] = {
							{ 45.8, 22.6, MULGORE },
							{ 74.7, 30.2, THUNDER_BLUFF },
						},
						["maps"] = { MULGORE, THUNDER_BLUFF },
						["races"] = HORDE_ONLY,
						["lvl"] = 10,
					},
					{
						["questID"] = 962,	-- Serpentbloom
						["qg"] = 3419,	-- Apothecary Zamah <Royal Apothecary Society>
						["coord"] = { 34.4, 21.1, MULGORE },
						["maps"] = { MULGORE, THUNDER_BLUFF },
						["races"] = HORDE_ONLY,
						["cost"] = {
							{ "i", 5339, 10 },	-- Serpentbloom
						},
						["lvl"] = 14,
						["groups"] = {
							i(10919),	-- Apothecary Gloves
						},
					},
					{
						["questID"] = 1491,	-- Smart Drinks
						["sourceQuest"] = 865,	-- Raptor Horns
						["qg"] = 3446,	-- Mebok Mizzyrix
						["coord"] = { 62.4, 37.6, THE_BARRENS },
						["maps"] = { THE_BARRENS },
						["cost"] = {
							{ "i", 6464, 6 },	-- Wailing Essence
						},
						["lvl"] = 13,
					},
					{
						["provider"] = { "i", 10441 },	-- Glowing Shard
						["questID"] = 6981,	-- The Glowing Shard
						["qg"] = 3442,	-- Sputtervalve <Tinkers' Union>
						["coord"] = { 63.0, 37.2, THE_BARRENS },
						["maps"] = { THE_BARRENS },
						["altQuests"] = {
							3366 -- The Glowing Shard [6981 and 3366 look identical, but WoWHead doesn't have much info on 3366]
						},
					},
					{
						["questID"] = 959,	-- Trouble at the Docks
						["qg"] = 3665,	-- Crane Operator Bigglefuzz
						["coord"] = { 63.1, 37.6, THE_BARRENS },
						["maps"] = { THE_BARRENS },
						["cost"] = {
							{ "i", 5334, 1 },	-- 99-Year-Old Port
						},
						["lvl"] = 14,
						["groups"] = {
							{
								["itemID"] = 5334,	-- 99-Year-Old Port
								["questID"] = 959,	-- Trouble at the Docks
								["cr"] = 3655,	-- Mad Magglish
								["coord"] = { 45, 35.2, THE_BARRENS },
							},
						},
					},
				},
			}),
			n(VENDORS, {
				n(5783, {	-- Kalldan Felmoon <Specialist Leatherworking Supplies>
					["coord"] = { 45.9, 35.7, THE_BARRENS },
					["maps"] = { THE_BARRENS },
					["g"] = {
						i(6474),	-- Pattern: Deviate Scale Cloak
						i(6475),	-- Pattern: Deviate Scale Gloves
					},
				}),
			}),
			n(ZONEDROPS, {
				i(6443, {	-- Deviate Hide
					["description"] = "Drops from Deviate creatures in the Wailing Caverns.",
					["questID"] = 1486,	-- Deviate Hides
				}),
				i(10413, {	-- Gloves of the Fang
					["cr"] = 3840,	-- Druid of the Fang
				}),
				i(6464, {	-- Wailing Essence
					["questID"] = 1491,	-- Smart Drinks
					["crs"] = {
						3638,	-- Devouring Ectoplasm
						3640,	-- Evolving Ectoplasm
						5763,	-- Nightmare Ectoplasm
					},
				}),
			}),
			prof(SKINNING, {
				i(6470),	-- Deviate Scale
				i(6471),	-- Perfect Deviate Scale
			}),
			n(3671, { 	-- Lady Anacondra
				{
					["itemID"] = 9739,	-- Gem of Anacondra
					["questID"] = 914,	-- Leaders of the Fang
					["races"] = HORDE_ONLY,
				},
				i(5404), 	-- Serpent's Shoulders
				i(10412), 	-- Belt of the Fang
				i(6446),	-- Snakeskin Bag
			}),
			n(3653, { 	-- Kresh
				i(13245), 	-- Kresh's Back
				i(6447), 	-- Worn Turtle Shell Shield
			}),
			n(3670, { 	-- Lord Pythas
				{
					["itemID"] = 9740,	-- Gem of Pythas
					["questID"] = 914,	-- Leaders of the Fang
					["races"] = HORDE_ONLY,
				},
				i(6472), 	-- Stinging Viper
				i(6473), 	-- Armor of the Fang
			}),
			n(3669, { 	-- Lord Cobrahn
				{
					["itemID"] = 9738,	-- Gem of Cobrahn
					["questID"] = 914,	-- Leaders of the Fang
					["races"] = HORDE_ONLY,
				},
				i(6465), 	-- Robe of the Moccasin
				i(6460), 	-- Cobrahn's Grasp
				i(10410), 	-- Leggings of the Fang
			}),
			n(3674, { 	-- Skum
				i(6448), 	-- Tail Spike
				i(6449), 	-- Glowing Lizardscale Cloak
			}),
			n(5912, {	-- Deviate Faerie Dragon
				["description"] = "This is a rare that is not always present.",
				["g"] = {
					i(5243), 	-- Firebelcher
					i(6632), 	-- Feyscale Cloak
				},
			}),
			n(3673, { 	-- Lord Serpentis
				{
					["itemID"] = 9741,	-- Gem of Serpentis
					["questID"] = 914,	-- Leaders of the Fang
					["races"] = HORDE_ONLY,
				},
				i(6469), 	-- Venomstrike
				i(5970), 	-- Serpent Gloves
				i(10411), 	-- Footpads of the Fang
				i(6459), 	-- Savage Trodders
			}),
			n(5775, { 	-- Verdan the Everliving
				i(6631), 	-- Living Root
				i(6630), 	-- Seedcloud Buckler
				i(6629), 	-- Sporid Cape
			}),
			n(3654, { 	-- Mutanus the Devourer
				{
					["itemID"] = 10441,	-- Glowing Shard
					["questID"] = 6981,	-- The Glowing Shard
				},
				i(6461), 	-- Slime-Encrusted Pads
				i(6627), 	-- Mutant Breastplate
				i(6463),	-- Deep Fathom Ring
			}),
		},
	}),
})};