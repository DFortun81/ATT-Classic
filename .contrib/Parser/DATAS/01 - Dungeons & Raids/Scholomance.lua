-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

_.Instances = {
	map(SCHOLOMANCE, { 	-- Scholomance
		["description"] = "The Scholomance is housed within a series of crypts that lie beneath the ruined keep of Caer Darrow. Once owned by the noble Barov family, Caer Darrow fell to ruin following the Second War. As the wizard Kel'thuzad enlisted followers for his Cult of the Damned he would often promise immortality in exchange for serving his Lich King. The Barov family fell to Kel'thuzad's charismatic influence and donated the keep and its crypts to the Scourge. The cultists then killed the Barovs and turned the ancient crypts into a school for necromancy known as the Scholomance. Though Kel'thuzad no longer resides in the crypts, devoted cultists and instructors still remain. The powerful lich, Ras Frostwhisper, rules over the site and guards it in the Scourge's name - while the mortal necromancer, Darkmaster Gandling, serves as the school's insidious headmaster.",
		["sourceQuests"] = {
			5505,	-- The Key to Scholomance [Alliance]
			5511,	-- The Key to Scholomance [Horde]
		},
		["cost"] = {
			{ "i", 13704, 1 },	-- Skeleton Key
		},
		["lvl"] = 58,
		["groups"] = {
			n(-17, {	-- Quests
				{
					["questID"] = 5803,	-- Araj's Scarab (A)
					["sourceQuest"] = 5801,	-- Fire Plume Forged (A)
					["qg"] = 11056,	-- Alchemist Arbington
					["coord"] = { 42.7, 83.8, WESTERN_PLAGUELANDS },
					["maps"] = { WESTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 14610, 1 },	-- Araj's Scarab
					},
					["crs"] = {
						1852,	-- Araj the Summoner
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 55,
				},
				{
					["questID"] = 5804,	-- Araj's Scarab (H)
					["sourceQuest"] = 5802,	-- Fire Plume Forged (H)
					["qg"] = 11057,	-- Apothecary Dithers
					["coord"] = { 83.3, 69.2, TIRISFAL_GLADES },
					["maps"] = { TIRISFAL_GLADES },
					["cost"] = {
						{ "i", 14610, 1 },	-- Araj's Scarab
					},
					["crs"] = {
						1852,	-- Araj the Summoner
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 55,
				},
				{
					["questID"] = 5341,	-- Barov Family Fortune
					["qg"] = 11022,	-- Alexi Barov <House of Barov>
					["coord"] = { 83.06, 71.6, TIRISFAL_GLADES },
					["maps"] = { TIRISFAL_GLADES },
					["cost"] = {
						{ "i", 13471, 1 },	-- The Deed to Brill
						{ "i", 13448, 1 },	-- The Deed to Caer Darrow
						{ "i", 13450, 1 },	-- The Deed to Southshore
						{ "i", 13451, 1 },	-- The Deed to Tarren Mill
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 52,
				},
				{
					["questID"] = 5343,	-- Barov Family Fortune
					["qg"] = 11023,	-- Weldon Barov <House of Barov>
					["coord"] = { 43.5, 83.7, WESTERN_PLAGUELANDS },
					["maps"] = { WESTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 13471, 1 },	-- The Deed to Brill
						{ "i", 13448, 1 },	-- The Deed to Caer Darrow
						{ "i", 13450, 1 },	-- The Deed to Southshore
						{ "i", 13451, 1 },	-- The Deed to Tarren Mill
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 52,
				},
				{
					["questID"] = 5531,	-- Betina Bigglezink
					["sourceQuest"] = 5522,	-- Leonid Barthalomew
					["qg"] = 11036,	-- Leonid Barthalomew the Revered <The Argent Dawn>
					["coord"] = { 81.73, 57.83, EASTERN_PLAGUELANDS },
					["maps"] = { EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 13761, 1 },	-- Frozen Eggs
					},
					["lvl"] = 57,
				},
				{
					["questID"] = 4771,	-- Dawn's Gambit
					["sourceQuest"] = 5531,	-- Betina Bigglezink
					["qg"] = 11035,	-- Betina Bigglezink <The Argent Dawn>
					["coord"] = { 81.5, 59.7, EASTERN_PLAGUELANDS },
					["maps"] = { EASTERN_PLAGUELANDS },
					["lvl"] = 57,
					["groups"] = {
						{
							["itemID"] = 12368,	-- Dawn's Gambit
							["questID"] = 4771,	-- Dawn's Gambit
							["description"] = "This will significantly reduce all of the nearby student's health and damage. As soon as the component opens, you should have your tank or plate/rogue dps aggro the room other than the 2 bosses and get ready to AOE.",
						},
						i(15854), 	-- Dancing Sliver
						i(15853), 	-- Windreaper
					},
				},
				{
					["questID"] = 5382,	-- Doctor Theolen Krastinov, the Butcher
					["qg"] = 11216,	-- Eva Sarkhoff
					["description"] = "Talk to Eva until she offers the quest.",
					["coord"] = { 70.2, 73.7, WESTERN_PLAGUELANDS },
					["maps"] = { WESTERN_PLAGUELANDS },
					["crs"] = {
						11261,	-- Doctor Theolen Krastinov <The Butcher>
					},
					["lvl"] = 55,
				},
				{
					["questID"] = 5801,	-- Fire Plume Forged (A)
					["sourceQuest"] = 5538,	-- Mold Rhymes With...
					["qg"] = 5411,	-- Krinkle Goodsteel <Blacksmithing Supplies>
					["coord"] = { 51.5, 28.8, TANARIS },
					["maps"] = { TANARIS },
					["cost"] = {
						{ "i", 14645, 1 },	-- Unfinished Skeleton Key
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 55,
					["groups"] = {
						{
							["itemID"] = 14644,	-- Skeleton Key Mold
							["allianceQuestID"] = 5801,	-- Fire Plume Forged (A)
							["hordeQuestID"] = 5802,	-- Fire Plume Forged (H)
							["cost"] = {
								{ "i", 12359, 2 },	-- Thorium Bar
							},
						},
					},
				},
				{
					["questID"] = 5802,	-- Fire Plume Forged (H)
					["sourceQuest"] = 5514,	-- Mold Rhymes With...
					["qg"] = 5411,	-- Krinkle Goodsteel <Blacksmithing Supplies>
					["coord"] = { 51.5, 28.8, TANARIS },
					["maps"] = { TANARIS },
					["cost"] = {
						{ "i", 14645, 1 },	-- Unfinished Skeleton Key
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 55,
					["groups"] = {
						{
							["itemID"] = 14644,	-- Skeleton Key Mold
							["allianceQuestID"] = 5801,	-- Fire Plume Forged (A)
							["hordeQuestID"] = 5802,	-- Fire Plume Forged (H)
							["cost"] = {
								{ "i", 12359, 2 },	-- Thorium Bar
							},
						},
					},
				},
				{
					["questID"] = 5582,	-- Healthy Dragon Scale
					["sourceQuest"] = 5529,	-- Plagued Hatchlings
					["qg"] = 10678,	-- Plagued Hatchling
					["description"] = "This item can only drop from the Hatchlings after you have completed the Plagued Hatchlings quest.",
					["cost"] = {
						{ "i", 13920, 1 },	-- Healthy Dragon Scale
					},
					["repeatable"] = true,
					["lvl"] = 55,
				},
				{
					["questID"] = 5384,	-- Kirtonos the Herald
					["sourceQuest"] = 5515,	-- Krastinov's Bag of Horrors
					["qg"] = 11216,	-- Eva Sarkhoff
					["coord"] = { 70.2, 73.7, WESTERN_PLAGUELANDS },
					["maps"] = { WESTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 13523, 1 },	-- Blood of Innocents
					},
					["crs"] = {
						10506,	-- Kirtonos the Herald
					},
					["lvl"] = 55,
					["groups"] = {
						i(15806), 	-- Mirah's Song
						i(15805), 	-- Penelope's Rose
						i(13544),	-- Spectral Essence
					},
				},
				{
					["questID"] = 5515,	-- Krastinov's Bag of Horrors
					["sourceQuest"] = 5382,	-- Doctor Theolen Krastinov, the Butcher
					["qg"] = 11216,	-- Eva Sarkhoff
					["coord"] = { 70.2, 73.7, WESTERN_PLAGUELANDS },
					["maps"] = { WESTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 13725, 1 },	-- Krastinov's Bag of Horrors
					},
					["crs"] = {
						10503,	-- Jandice Barov
					},
					["lvl"] = 55,
				},
				{
					["questID"] = 5522,	-- Leonid Barthalomew
					["sourceQuest"] = 4734,	-- Egg Freezing
					["qg"] = 10267,	-- Tinkee Steamboil
					["coord"] = { 65.2, 23.8, BURNING_STEPPES },
					["maps"] = { BURNING_STEPPES },
					["cost"] = {
						{ "i", 13761, 1 },	-- Frozen Eggs
					},
					["lvl"] = 57,
				},
				{
					["questID"] = 5463,	-- Menethil's Gift (1/2)
					["sourceQuest"] = 5462,	-- The Dying, Ras Frostwhisper
					["qg"] = 11036,	-- Leonid Barthalomew the Revered <The Argent Dawn>
					["description"] = "This is the symbol on the floor in Baron Rivendare's room in Stratholme.",
					["coord"] = { 81.7, 57.8, EASTERN_PLAGUELANDS },
					["maps"] = { EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 13585, 1 },	-- Keepsake of Remembrance
					},
					["lvl"] = 57,
				},
				{
					["questID"] = 5464,	-- Menethil's Gift (2/2)
					["sourceQuest"] = 5463,	-- Menethil's Gift (1/2)
					["provider"] = { "o", 176631 },	-- Menethil's Gift
					["maps"] = { STRATHOLME },
					["lvl"] = 57,
					["groups"] = {
						i(13624),	-- Soulbound Keepsake
					},
				},
				{
					["questID"] = 5538,	-- Mold Rhymes With... (A)
					["sourceQuest"] = 5537,	-- Skeletal Fragments (A)
					["qg"] = 11056,	-- Alchemist Arbington
					["coord"] = { 42.66, 83.77, WESTERN_PLAGUELANDS },
					["maps"] = { WESTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 14628, 1 },	-- Imbued Skeletal Fragments
						{ "g", 150000 },	-- 15g
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 55,
				},
				{
					["questID"] = 5514,	-- Mold Rhymes With... (H)
					["sourceQuest"] = 964,	-- Skeletal Fragments (H)
					["qg"] = 11057,	-- Apothecary Dithers
					["coord"] = { 83.3, 69.2, TIRISFAL_GLADES },
					["maps"] = { TIRISFAL_GLADES },
					["cost"] = {
						{ "i", 14628, 1 },	-- Imbued Skeletal Fragments
						{ "g", 150000 },	-- 15g
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 55,
				},
				{
					["questID"] = 5529,	-- Plagued Hatchlings
					["qg"] = 11035,	-- Betina Bigglezink <The Argent Dawn>
					["coord"] = { 81.47, 59.66, EASTERN_PLAGUELANDS },
					["maps"] = { EASTERN_PLAGUELANDS },
					["crs"] = {
						10678,	-- Plagued Hatchling
					},
					["lvl"] = 55,
				},
				{
					["questID"] = 5533,	-- Scholomance (A)
					["sourceQuest"] = 5097,	-- All Along the Watchtowers (A)
					["qg"] = 10838,	-- Commander Ashlam Valorfist
					["coord"] = { 42.7, 84.0, WESTERN_PLAGUELANDS },
					["maps"] = { WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 55,
				},
				{
					["questID"] = 838,	-- Scholomance (H)
					["sourceQuest"] = 5098,	-- All Along the Watchtowers (H)
					["qg"] = 10837,	-- High Executor Derrington
					["coord"] = { 83.1, 68.9, TIRISFAL_GLADES },
					["maps"] = { TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["lvl"] = 55,
				},
				{
					["questID"] = 5537,	-- Skeletal Fragments (A)
					["sourceQuest"] = 5533,	-- Scholomance (A)
					["qg"] = 11056,	-- Alchemist Arbington
					["coord"] = { 42.66, 83.77, WESTERN_PLAGUELANDS },
					["maps"] = { WESTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 14619, 15 },	-- Skeletal Fragments
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 55,
				},
				{
					["questID"] = 964,	-- Skeletal Fragments (H)
					["sourceQuest"] = 838,	-- Scholomance
					["qg"] = 11057,	-- Apothecary Dithers
					["coord"] = { 83.3, 69.2, TIRISFAL_GLADES },
					["maps"] = { TIRISFAL_GLADES },
					["cost"] = {
						{ "i", 14619, 15 },	-- Skeletal Fragments
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 55,
				},
				{
					["questID"] = 5465,	-- Soulbound Keepsake
					["sourceQuest"] = 5464,	-- Menethil's Gift (2/2)
					["qg"] = 11036,	-- Leonid Barthalomew the Revered <The Argent Dawn>
					["coord"] = { 81.7, 57.8, EASTERN_PLAGUELANDS },
					["maps"] = { EASTERN_PLAGUELANDS },
					["lvl"] = 57,
				},
				{
					["questID"] = 8258,	-- The Darkreaver Menace
					["altQuests"] = {
						7668,	-- The Darkreaver Menace (Original)
					},
					["sourceQuest"] = 7667,	-- Material Assistance
					["qg"] = 13417,	-- Sagorne Creststrider <Shaman Trainer>
					["coord"] = { 38.7, 35.9, ORGRIMMAR },
					["maps"] = { ORGRIMMAR },
					["cost"] = {
						{ "i", 18880, 1 },	-- Darkreaver's Head
					},
					["crs"] = {
						14516,	-- Death Knight Darkreaver
					},
					["classes"] = { 7 },	-- Shaman Only!
					["races"] = HORDE_ONLY,
					["u"] = 3,	-- Not available yet.
					["lvl"] = 55,
					["groups"] = {
						{
							["itemID"] = 18746,	-- Divination Scryer
							["questID"] = 8258,	-- The Darkreaver Menace
						},
						un(2, i(18807)), 	-- Helm of Latent Power (1.4 till 1.7 only)
						i(20134), 	-- Skyfury Helm
					},
				},
				{
					["questID"] = 5462,	-- The Dying, Ras Frostwhisper
					["sourceQuest"] = 5461,	-- The Human, Ras Frostwhisper
					["qg"] = 11286,	-- Magistrate Marduke
					["coord"] = { 70.6, 74.1, WESTERN_PLAGUELANDS },
					["maps"] = { WESTERN_PLAGUELANDS },
					["lvl"] = 57,
				},
				{
					["questID"] = 5461,	-- The Human, Ras Frostwhisper
					["sourceQuest"] = 5384,	-- Kirtonos the Herald
					["qg"] = 11286,	-- Magistrate Marduke
					["coord"] = { 70.6, 74.1, WESTERN_PLAGUELANDS },
					["maps"] = { WESTERN_PLAGUELANDS },
					["lvl"] = 57,
					["groups"] = {
						{
							["itemID"] = 13585,	-- Keepsake of Remembrance
							["coord"] = { 17.9, 69.4, ARATHI_HIGHLANDS },
						},
					},
				},
				{
					["questID"] = 5505,	-- The Key to Scholomance (A)
					["sourceQuest"] = 5803,	-- Araj's Scarab
					["qg"] = 10838,	-- Commander Ashlam Valorfist
					["coord"] = { 42.7, 84.0, WESTERN_PLAGUELANDS },
					["maps"] = { WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 55,
					["groups"] = {
						{
							["itemID"] = 13704,	-- Skeleton Key
							["allianceQuestID"] = 5505,	-- The Key to Scholomance (A)
							["hordeQuestID"] = 5511,	-- The Key to Scholomance (H)
						},
					},
				},
				{
					["questID"] = 5511,	-- The Key to Scholomance (H)
					["sourceQuest"] = 5804,	-- Araj's Scarab
					["qg"] = 10837,	-- High Executor Derrington
					["coord"] = { 83.1, 68.9, TIRISFAL_GLADES },
					["maps"] = { TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["lvl"] = 55,
					["groups"] = {
						{
							["itemID"] = 13704,	-- Skeleton Key
							["allianceQuestID"] = 5505,	-- The Key to Scholomance (A)
							["hordeQuestID"] = 5511,	-- The Key to Scholomance (H)
						},
					},
				},
				{
					["questID"] = 5342,	-- The Last Barov
					["sourceQuest"] = 5341,	-- Barov Family Fortune
					["qg"] = 11022,	-- Alexi Barov <House of Barov>
					["coord"] = { 83.06, 71.6, TIRISFAL_GLADES },
					["maps"] = { TIRISFAL_GLADES },
					["cost"] = {
						{ "i", 13469, 1 },	-- Head of Weldon Barov
					},
					["crs"] = {
						11023,	-- Weldon Barov <House of Barov>
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 52,
					["groups"] = {
						i(14023),	-- Barov Peasant Caller
					},
				},
				{
					["questID"] = 5344,	-- The Last Barov
					["sourceQuest"] = 5343,	-- Barov Family Fortune
					["qg"] = 11023,	-- Weldon Barov <House of Barov>
					["coord"] = { 43.5, 83.7, WESTERN_PLAGUELANDS },
					["maps"] = { WESTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 13470, 1 },	-- Head of Alexi Barov
					},
					["crs"] = {
						11022,	-- Alexi Barov <House of Barov>
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 52,
					["groups"] = {
						i(14023),	-- Barov Peasant Caller
					},
				},
				{
					["questID"] = 5466,	-- The Lich, Ras Frostwhisper
					["sourceQuest"] = 5465,	-- Soulbound Keepsake
					["qg"] = 11286,	-- Magistrate Marduke
					["coord"] = { 70.6, 74.1, WESTERN_PLAGUELANDS },
					["maps"] = { WESTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 13626, 1 },	-- Human Head of Ras Frostwhisper
					},
					["crs"] = {
						10508,	-- Ras Frostwhisper
					},
					["lvl"] = 57,
					["groups"] = {
						{
							["itemID"] = 13752,	-- Soulbound Keepsake
							["questID"] = 5466,	-- The Lich, Ras Frostwhisper
						},
						i(14002), 	-- Darrowshire Strongguard
						i(13984), 	-- Darrowspike
						i(13982), 	-- Warblade of Caer Darrow
						i(13986), 	-- Crown of Caer Darrow
					},
				},
			}),
			n(0,   {	-- Zone Drop
				i(17682),	-- Book: Gift of the Wild Rank 1
				i(17683, {	-- Book: Gift of the Wild Rank 2
					["description"] = "This can only drop from Elites."
				}),
				i(16255, {	-- Formula: Enchant 2H Weapon - Major Spirit
					["crs"] = {
						10469,	-- Scholomance Adept
					},
				}),
				i(16254, {	-- Formula: Enchant Weapon - Lifestealing
					["crs"] = {
						10499,	-- Spectral Researcher
					},
				}),
				i(15776, {	-- Pattern: Runic Leather Armor
					["crs"] = {
						11582,	-- Scholomance Dark Summoner
					},
				}),
				i(15773, {	-- Pattern: Wicked Leather Armor
					["crs"] = {
						10499,	-- Spectral Researcher
					},
				}),
				i(12843, {	-- Corruptor's Scourgestone
					["description"] = "Can drop from any Undead boss in Scholomance and Stratholme so long as you are equipped with one of the Argent Dawn trinkets.",
				}),
				i(12841, {	-- Invader's Scourgestone
					["description"] = "Can drop from any Undead mobs in Scholomance and Stratholme so long as you are equipped with one of the Argent Dawn trinkets.",
				}),
				i(20520),	-- Dark Rune
				i(12753),	-- Skin of Shadow
				i(18698), 	-- Tattered Leather Hood
				i(14536),	-- Bonebrace Hauberk
				i(18699), 	-- Icy Tomb Spaulders
				i(18700), 	-- Malefic Bracers
				i(18702),	-- Belt of the Ordained
				i(18697),	-- Coldstone Slippers
				i(16671),	-- Bindings of Elements
				i(16702),	-- Dreadmist Belt
				i(16722),	-- Lightforge Bracers
				i(16685),	-- Magister's Belt
				i(16710),	-- Shadowcraft Bracers
				i(16714),	-- Wildheart Bracers
				i(16716),	-- Wildheart Belt
				i(18701),	-- Innervating Band
			}),
			n(14861, {	-- Blood Steward of Kirtonos
				{
					["itemID"] = 13523,	-- Blood of Innocents
					["questID"] = 5384,	-- Kirtonos the Herald
				},
			}),
			{
				["itemID"] = 13450,	-- The Deed to Southshore
				["allianceQuestID"] = 5343,	-- Barov Family Fortune
				["hordeQuestID"] = 5341,	-- Barov Family Fortune
				["description"] = "Can be found in the very back of the first room hidden behind some bookshelves.",
			},
			n(10506, { 	-- Kirtonos the Herald
				["description"] = "Can only be summoned if someone in your group has the Blood of Innocents.",
				["cost"] = {
					{ "i", 13523, 1 },	-- Blood of Innocents
				},
				["groups"] = {
					i(14024),	-- Frightalon
					i(13983),	-- Gravestone War Axe
					i(13960),	-- Heart of the Fiend
					i(13955),	-- Stoneform Shoulders
					i(13969),	-- Loomguard Armbraces
					i(13957),	-- Gargoyle Slashers
					i(13956),	-- Clutch of Andros
					i(16734),	-- Boots of Valor
					i(13967),	-- Windreaver Greaves
				},
			}),
			n(14695, {	-- Lord Blackwood
				i(23156),	-- Blackwood's Thigh
				i(23132),	-- Lord Blackwood's Blade
				i(23139),	-- Lord Blackwood's Buckler
			}),
			{
				["itemID"] = 13451,	-- The Deed to Tarren Mill
				["allianceQuestID"] = 5343,	-- Barov Family Fortune
				["hordeQuestID"] = 5341,	-- Barov Family Fortune
				["description"] = "Can be found on the table in the back corner just before you enter the dragon whelpling room or travel downstairs to fight Jandice Barov.",
			},
			n(10503, {	-- Jandice Barov
				{
					["itemID"] = 13725,	-- Krastinov's Bag of Horrors
					["questID"] = 5515,	-- Krastinov's Bag of Horrors
				},
				{
					["itemID"] = 13523,	-- Blood of Innocents
					["questID"] = 5384,	-- Kirtonos the Herald
				},
				o(180794, {	-- Journal of Jandice Barov
					["description"] = "Jandice Barov drops this item when killed, which teaches Felcloth Bag. You must be a tailor of skill 285 or higher to learn this recipe.",
					["groups"] = {
						recipe(26086),	-- Felcloth Bag
					},
				}),
				i(14541),	-- Barovian Family Sword
				i(22394),	-- Staff of Metanoia
				i(18689),	-- Phantasmal Cloak
				i(16701),	-- Dreadmist Mantle
				i(14548),	-- Royal Cap Spaulders
				i(14543),	-- Darkshade Gloves
				i(14545),	-- Ghostloom Leggings
				i(18690),	-- Wraithplate Leggings
			}),
			n(11622, {	-- Rattlegore
				{
					["itemID"] = 13873,	-- Viewing Room Key
					["description"] = "You must use this item on the door prior to Vectus and Marduk.",
				},
				i(18782),	-- Top Half of Advanced Armorsmithing: Volume II
				i(14531),	-- Frightskull Shaft
				i(14528),	-- Rattlecage Buckler
				i(14539),	-- Bone Ring Helm
				i(18686),	-- Bone Golem Shoulders
				i(14538),	-- Deadwalker Mantle
				i(14537),	-- Corpselight Greaves
				i(16711),	-- Shadowcraft Boots
			}),
			n(14516, {	-- Death Knight Darkreaver
				["description"] = "Part of the Paladin's Epic Mount quest chain.",
				["u"] = 3,	-- Not Yet Available
				["groups"] = {
					{
						["itemID"] = 18749,	-- Charger's Lost Soul
						["classes"] = { 2 },	-- Paladin Only!
						["groups"] = {
							{
								["itemID"] = 18799,	-- Charger's Redeemed Soul
								["questID"] = 7647,	-- Judgment and Redemption
							},
						},
					},
					{
						["itemID"] = 18880,	-- Charger's Redeemed Soul
						["questID"] = 8258,	-- The Darkreaver Menace
						["classes"] = { 7 },	-- Shaman Only
						["races"] = HORDE_ONLY,
					},
					i(18759),	-- Malicious Axe
					i(18761),	-- Oblivion's Touch
					i(18758),	-- Specter's Blade
					i(18760),	-- Necromantic Band
				},
			}),
			n(10433, {	-- Marduk Blackpool
				i(14576),	-- Ebon Hilt of Marduk
				i(18692),	-- Death Knight Sabatons
			}),
			n(10432, {	-- Vectus
				i(18691),	-- Dark Advisor's Pendant
				i(14577),	-- Skullsmoke Pants
			}),
			n(10508, {	-- Ras Frostwhisper
				{
					["itemID"] = 13626,	-- Human Head of Ras Frostwhisper
					["questID"] = 5466,	-- The Lich, Ras Frostwhisper
				},
				{
					["itemID"] = 12736,	-- Frostwhisper's Embalming Fluid
					["questID"] = 5067,	-- Leggings of Arcana
					["description"] = "Can be found inside the chemistry lab in Scholomance, check the vials.",
				},
				{
					["itemID"] = 13471,	-- The Deed to Brill
					["allianceQuestID"] = 5343,	-- Barov Family Fortune
					["hordeQuestID"] = 5341,	-- Barov Family Fortune
					["description"] = "Can be found along the wall in Ras Frostwhisper's room.",
				},
				i(13521),	-- Recipe: Flask of Supreme Power
				i(14487),	-- Bonechill Hammer
				i(13952),	-- Iceblade Hacker
				i(18696),	-- Intricately Runed Shield
				i(18695),	-- Spellbound Tome
				i(16689),	-- Magister's Mantle
				i(13314),	-- Alanna's Embrace
				i(14503),	-- Death's Clutch
				i(14525),	-- Boneclenched Gauntlets
				i(18693),	-- Shivery Handwraps
				i(14340),	-- Freezing Lich Robes
				i(14502),	-- Frostbite Girdle
				i(14522),	-- Maelstrom Leggings
				i(18694),	-- Shadowy Mail Greaves
			}),
			n(16118, {	-- Kormok
				["description"] = "This boss was summoned using the Brazier of Beckoning.",
				["u"] = 3,	-- Not yet available.
				["groups"] = {
					{
						["itemID"] = 21984,	-- Left Piece of Lord Valthalak's Amulet
						["questID"] = 8966,	-- The Left Piece of Lord Valthalak's Amulet
					},
					{
						["itemID"] = 22046,	-- Right Piece of Lord Valthalak's Amulet
						["questID"] = 8989,	-- The Right Piece of Lord Valthalak's Amulet
					},
					i(22332),	-- Blade of Necromancy
					i(22333),	-- Hammer of Divine Might
					i(22303),	-- Ironweave Pants
					i(22326),	-- Amalgam's Band
					i(22331),	-- Band of the Steadfast Hero
				},
			}),
			n(-1, {	-- Common Boss Drops
				["description"] = "The following items can drop from any of the mini-bosses in the crypt before fighting Darkmaster Gandling. The bosses other than Lady Illucia Barov have an item or two exclusive to their own drop tables.",
				["qgs"] = {
					10505,	-- Instructor Malicia
					11261,	-- Doctor Theolen Krastinov <The Butcher>
					10901,	-- Lorekeeper Polkelt
					10502,	-- Lady Illucia Barov
					10504,	-- Lord Alexi Barov
					10507,	-- The Ravenian
				},
				["groups"] = {
					i(18680),	-- Ancient Bone Bow
					i(18683),	-- Hammer of the Vesper
					i(14611),	-- Bloodmail Hauberk
					i(14615),	-- Bloodmail Gauntlets
					i(14614),	-- Bloodmail Belt
					i(14612),	-- Bloodmail Legguards
					i(14616),	-- Bloodmail Boots
					i(18681),	-- Burial Shawl
					i(14637),	-- Cadaverous Armor
					i(14640),	-- Cadaverous Gloves
					i(14636),	-- Cadaverous Belt
					i(14638),	-- Cadaverous Leggings
					i(14641),	-- Cadaverous Walkers
					i(14624),	-- Deathbone Chestplate
					i(14622),	-- Deathbone Gauntlets
					i(14620),	-- Deathbone Girdle
					i(14623),	-- Deathbone Legguards
					i(14621),	-- Deathbone Sabatons
					i(18682),	-- Ghoul Skin Leggings
					i(16684),	-- Magister's Gloves
					i(14633),	-- Necropile Mantle
					i(14626),	-- Necropile Robe
					i(14629),	-- Necropile Cuffs
					i(14632),	-- Necropile Leggings
					i(14631),	-- Necropile Boots
					i(18684),	-- Dimly Opalescent Ring
					i(23201),	-- Libram of Divinity
					i(23200),	-- Totem of Sustaining
				},
			}),
			n(10505, {	-- Instructor Malicia
				i(16710),	-- Shadowcraft Bracers
			}),
			n(11261, {	-- Doctor Theolen Krastinov <The Butcher>
				{
					["itemID"] = 13523,	-- Blood of Innocents
					["questID"] = 5384,	-- Kirtonos the Herald
				},
				i(16684),	-- Magister's Gloves
				i(14617),	-- Sawbones Shirt
			}),
			n(10901, {	-- Lorekeeper Polkelt
				i(16705),	-- Dreadmist Wraps
			}),
			n(10507, {	-- The Ravenian
				i(16716),	-- Wildheart Belt
			}),
			n(10504, {	-- Lord Alexi Barov
				{
					["itemID"] = 13448,	-- The Deed to Caer Darrow
					["allianceQuestID"] = 5343,	-- Barov Family Fortune
					["hordeQuestID"] = 5341,	-- Barov Family Fortune
					["description"] = "Can be found right next to Alexi Barov.",
				},
				i(16722),	-- Lightforge Bracers
			}),
			n(1853, {	-- Darkmaster Gandling
				["description"] = "You must full clear out the Crypt before this boss will spawn on the bottom floor. It is recommended that you clear the top floor last so that you have an opportunity to properly position your group.",
				["groups"] = {
					i(14514),	-- Pattern: Robe of the Void
					i(13501),	-- Recipe: Major Mana Potion
					i(13937),	-- Headmaster's Charge
					i(13938),	-- Bonecreeper Stylus
					i(13953),	-- Silent Fang
					i(13964),	-- Witchblade
					i(16677),	-- Beastalker's Cap
					i(16667),	-- Coif of Elements
					i(16693),	-- Devout Crown
					i(16698),	-- Dreadmist Mask
					i(16731),	-- Helm of Valor
					i(16727),	-- Lightforge Helm
					i(16686),	-- Magister's Crown
					i(16707),	-- Shadowcraft Cap
					i(16720),	-- Wildheart Cowl
					i(13944),	-- Tombstone Breastplate
					i(13951),	-- Vigorsteel Vambraces
					i(13950),	-- Detention Strap
					i(13398),	-- Boots of the Shrieker
					i(22433),	-- Don Mauricio's Band of Domination
					i(19276),	-- Ace of Portals
				},
			}),
		},
	}),
};