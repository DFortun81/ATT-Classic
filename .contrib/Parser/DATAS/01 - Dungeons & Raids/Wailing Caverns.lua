-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

_.Instances = {
	map(279, { 	-- Wailing Caverns
		["description"] = "Recently, a night elf druid named Naralex discovered a network of underground caverns within the heart of the Barrens. Dubbed the 'Wailing Caverns', these natural caves were filled with steam fissures which produced long, mournful wails as they vented. Naralex believed he could use the caverns' underground springs to restore lushness and fertility to the Barrens - but to do so would require siphoning the energies of the fabled Emerald Dream.\n\nOnce connected to the Dream, however, the druid's vision somehow became a nightmare. Soon the Wailing Caverns began to change - the waters turned foul and the once-docile creatures inside metamorphosed into vicious, deadly predators. It is said that Naralex himself still resides somewhere inside the heart of the labyrinth, trapped beyond the edges of the Emerald Dream. Even his former acolytes have been corrupted by their master's waking nightmare - transformed into the wicked Druids of the Fang.",
		["coord"] = { 45.9, 35.7, BARRENS },	-- TODO: Barrens MapID
		["lvl"] = 10,
		["g"] = {
			n(-17, {	-- Quests
				["description"] = "To get to the quest giver hub outside the instance:\n\nWhen facing the mouth of the cave, you should see that the entrance looks like a skull. The questgivers are in the left eye. To get there, climb up the mountain, drop onto the head, drop onto the brow, drop onto the nose, face the instance, and go into the eye on the left",
				["groups"] = {
					{
						["questID"] = 1487,	-- Deviate Eradication
						["qg"] = 5768,	-- Ebru <Disciple of Naralex>
						["coord"] = { 46.0, 35.7, BARRENS },
						["maps"] = { BARRENS },
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
						["coord"] = { 46.0, 35.7, BARRENS },
						["maps"] = { BARRENS },
						["lvl"] = 13,
						["g"] = {
							i(6480),	-- Slick Deviate Leggings
							i(918),		-- Deviate Hide Pack
						},
					},
					{
						["questID"] = 1489,	-- Hamuul Runetotem
						["sourceQuest"] = 880,	-- Altered Beings
						["qg"] = 3448,	-- Tonga Runetotem
						["coord"] = { 52.3, 31.9, BARRENS },
						["maps"] = { BARRENS },
						["races"] = HORDE_ONLY,
						["lvl"] = 10,
					},
					{
						["allianceQuestID"] = 3370,	-- In Nightmares
						["hordeQuestID"] = 3369,	-- In Nightmares
						["sourceQuest"] = 6981,	-- The Glowing Shard
						["qg"] = 8418,	-- Falla Sagewind
						["description"] = "She lives in a house on top of the mountain.",
						["coord"] = { 48.2, 32.8, BARRENS },
						["maps"] = { BARRENS },
						["lvl"] = 15,
						["groups"] = {
							i(10657),	-- Talbar Mantle
							i(10658),	-- Quagmire Galoshes
						},
					},
					{
						["questID"] = 914,	-- Leaders of the Fang
						["sourceQuest"] = 1490,	-- Nara Wildmane
						["qg"] = 5770,	-- Nara Wildmane
						["coords"] = {
							{ 45.2, 23.3, MULGORE },
							{ 75, 31, THUNDERBLUFF },
						},
						["maps"] = { MULGORE, THUNDERBLUFF },
						["races"] = HORDE_ONLY,
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
							{ 74.7, 30.2, THUNDERBLUFF },
						},
						["maps"] = { MULGORE, THUNDERBLUFF },
						["races"] = HORDE_ONLY,
						["lvl"] = 10,
					},
					{
						["questID"] = 962,	-- Serpentbloom
						["qg"] = 3419,	-- Apothecary Zamah <Royal Apothecary Society>
						["coord"] = { 34.4, 21.1, MULGORE },
						["maps"] = { MULGORE, THUNDERBLUFF },
						["races"] = HORDE_ONLY,
						["lvl"] = 14,
						["groups"] = {
							i(10919),	-- Apothecary Gloves
						},
					},
					{
						["questID"] = 1491,	-- Smart Drinks
						["sourceQuest"] = 865,	-- Raptor Horns
						["qg"] = 3446,	-- Mebok Mizzyrix
						["coord"] = { 62.4, 37.6, BARRENS },
						["maps"] = { BARRENS },
						["lvl"] = 13,
					},
					{
						["questID"] = 959,	-- Trouble at the Docks
						["qg"] = 3665,	-- Crane Operator Bigglefuzz
						["coords"] = {
							{ 63.1, 37.6, BARRENS },
							{ 45.7, 33.6, BARRENS },
						},
						["maps"] = { BARRENS },
						["crs"] = { 3655 },	-- Mad Magglish
						["lvl"] = 14,
					},
				},
			}),
			n(-2, {	-- Vendors
				n(5783, {	-- Kalldan Felmoon <Specialist Leatherworking Supplies>
					["coord"] = { 45.9, 35.7, BARRENS },	-- TODO: Barrens MapID
					["maps"] = { BARRENS },	-- TODO: Barrens MapID
					["g"] = {
						i(6474),	-- Pattern: Deviate Scale Cloak
						i(6475),	-- Pattern: Deviate Scale Gloves
					},
				}),
			}),
			n(0, {	-- Zone Drop
				i(10413, {	-- Gloves of the Fang
					["crs"] = {
						3840,	-- Druid of the Fang
					},
				}),
			}),
			n(3671, { 	-- Lady Anacondra
				i(9739),	-- Gem of Anacondra
				i(5404), 	-- Serpent's Shoulders
				i(10412), 	-- Belt of the Fang
				i(6446),	-- Snakeskin Bag
			}),
			n(3653, { 	-- Kresh
				i(13245), 	-- Kresh's Back
				i(6447), 	-- Worn Turtle Shell Shield
			}),
			n(3670, { 	-- Lord Pythas
				i(9740),	-- Gem of Pythas
				i(6472), 	-- Stinging Viper
				i(6473), 	-- Armor of the Fang
			}),
			n(3669, { 	-- Lord Cobrahn
				i(9738),	-- Gem of Cobrahn
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
				i(9741),	-- Gem of Serpentis
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
					["groups"] = {
						{
							["questID"] = 6981,	-- The Glowing Shard
							["qg"] = 3442,	-- Sputtervalve <Tinkers' Union>
							["coord"] = { 63.0, 37.2, BARRENS },
						},
					},
				},
				i(6461), 	-- Slime-Encrusted Pads
				i(6627), 	-- Mutant Breastplate
				i(6463),	-- Deep Fathom Ring
			}),
		},
	}),
};
