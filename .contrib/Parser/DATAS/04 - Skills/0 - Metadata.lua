_.Skills =
{
	{
		["recipeID"] = 824,	-- Horse Riding
		["races"] = ALLIANCE_ONLY,
		["minReputation"] = { 72, EXALTED },	-- Stormwind, Exalted.
		["description"] = "Available to Humans without faction requirements.",
		["lvl"] = 40,
		["cost"] = 200000,
	},
	{
		["recipeID"] = 18995,	-- Kodo Riding
		["races"] = HORDE_ONLY,
		["minReputation"] = { 81, EXALTED },	-- Thunder Bluff, Exalted.
		["description"] = "Available to Taurens without faction requirements.",
		["lvl"] = 40,
		["cost"] = 200000,
	},
	{
		["recipeID"] = 10908,	-- Mechanostrider Piloting
		["races"] = ALLIANCE_ONLY,
		["minReputation"] = { 54, EXALTED },	-- Gnomeregan Exiles, Exalted.
		["description"] = "Available to Gnomes without faction requirements.",
		["lvl"] = 40,
		["cost"] = 200000,
	},
	{
		["recipeID"] = 826,	-- Ram Riding
		["races"] = ALLIANCE_ONLY,
		["minReputation"] = { 47, EXALTED },	-- Ironforge, Exalted.
		["description"] = "Available to Dwarves without faction requirements.",
		["lvl"] = 40,
		["cost"] = 200000,
	},
	{
		["recipeID"] = 10861,	-- Raptor Riding
		["races"] = HORDE_ONLY,
		["minReputation"] = { 530, EXALTED },	-- Darkspear Trolls, Exalted.
		["description"] = "Available to Trolls without faction requirements.",
		["lvl"] = 40,
		["cost"] = 200000,
	},
	{
		["recipeID"] = 23214,	-- Summon Charger
		["u"] = 3,	-- Added in later phase
		["classes"] = { 2 },	-- Paladin Only!
		["races"] = { 1, 3 },	-- Human / Dwarf Only!
		["lvl"] = 60,
	},
	{
		["recipeID"] = 23161,	-- Summon Dreadsteed
		["u"] = 3,	-- Added in later phase
		["classes"] = { 9 },	-- Warlock Only!
		["sourceQuest"] = 7631,	-- Dreadsteed of Xoroth
		["lvl"] = 60,
	},
	{
		["recipeID"] = 5784,	-- Summon Felsteed
		["classes"] = { 9 },	-- Warlock Only!
		["sourceQuest"] = 4490,	-- Summon Felsteed
		["lvl"] = 40,
	},
	{
		["recipeID"] = 13819,	-- Summon Warhorse
		["classes"] = { 2 },	-- Paladin Only!
		["races"] = { 1, 3 },	-- Human / Dwarf Only!
		["sourceQuest"] = 1661,	-- The Tome of Nobility
		["lvl"] = 40,
	},
	{
		["recipeID"] = 828,	-- Tiger Riding
		["races"] = ALLIANCE_ONLY,
		["minReputation"] = { 69, EXALTED },	-- Darnassus, Exalted.
		["description"] = "Available to Night Elves without faction requirements.",
		["lvl"] = 40,
		["cost"] = 200000,
	},
	{
		["recipeID"] = 10906,	-- Undead Horsemanship
		["races"] = HORDE_ONLY,
		["minReputation"] = { 68, EXALTED },	-- Undercity, Exalted.
		["description"] = "Available to Undead without faction requirements.",
		["lvl"] = 40,
		["cost"] = 200000,
	},
	{
		["recipeID"] = 825,	-- Wolf Riding
		["races"] = HORDE_ONLY,
		["minReputation"] = { 76, EXALTED },	-- Orgrimmar, Exalted.
		["description"] = "Available to Orcs without faction requirements.",
		["lvl"] = 40,
		["cost"] = 200000,
	},
--[[ -- BEAST TRAINING remarked out because I can't figure out how to link this to the Beast Training Craft Frame, 
		and I also don't know why ATT keeps marking the wrong rank of the spells as learned.
	{
		["recipeID"] = 5149, -- Beast Training -- Skill ID 261(doesn't work, returns Summon Skeleton) -- Spell ID is 5149
		["classes"] = {3},	-- Hunter
		["g"] = {
			{
				["name"] = "Arcane Resistance", -- Rank 1
				["recipeID"] = 24493,
			},
			{
				["name"] = "Arcane Resistance", -- Rank 2
				["recipeID"] = 24497,
			},
			{
				["name"] = "Arcane Resistance", -- Rank 3
				["recipeID"] = 24500,
			},
			{
				["name"] = "Arcane Resistance", -- Rank 4
				["recipeID"] = 24501,
			},
			{
				["name"] = "Bite", -- Rank 1
				["recipeID"] = 17253,
				["crs"] = {
					1509,	-- Ragged Scavenger (Wolf, 2-3, Tirisfal Glades)
					1505,	-- Night Web Spider (Spider, 3-4, Tirisfal Glades)
					2958,	-- Prairie Wolf (Wolf, 5-6, Mulgore)
					1688,	-- Night Web Matriarch (Spider, 5, Tirisfal Glades)
					1994,	-- Githyiss the Vile (Spider, 5, Teldrassil)
					30,		-- Forest Spider (Spider, 5-6, Elwynn Forest)
					1138,	-- Snow Tracker Wolf (Wolf, 6-7, Dun Morogh)
					2959,	-- Prairie Stalker (Wolf, 7-8, Mulgore)
					1922,	-- Gray Forest Wolf (Wolf, 7-8, Elwynn Forest)
					1999,	-- Webwood Venomfang (Spider, 7-8, Teldrassil)
					1131,	-- Winter Wolf (Wolf, 7-8, Dun Morogh)
					3110,	-- Dreadmaw Crocolisk (Crocolisk, 9-11, Durotar)
				},
			},
			{
				["name"] = "Bite", -- Rank 2
				["recipeID"] = 17255,
				["crs"] = {
					1133,	-- Starving Winter Wolf (Wolf, 8-9, Dun Morogh)
					2000,	-- Webwood Silkspinner (Spider, 8-9, Teldrassil)
					118,	-- Prowler (Wolf, 9-10, Elwynn Forest)
					1555,	-- Vicious Night Web Spider (Spider, 9-10, Tirisfal Glades)
					2960,	-- Prairie Wolf Alpha (Wolf, 9-10, Mulgore)
					1195,	-- Forest Lurker (Spider, 10-11, Loch Modan)
					834,	-- Coyote (Wolf, 10-11, Westfall)
					2001,	-- Giant Webwood Spider (Spider, 10-11, Teldrassil)
					1765,	-- Worg (Wolf, 10-11, Silverpine Forest)
					1132,	-- Timber (Wolf, 10, Dun Morogh)
					833,	-- Coyote Packleader (Wolf, 11-12, Westfall)
					7319,	-- Lady Sathrah (Spider, 12, Teldrassil)
					1693,	-- Loch Crocolisk (Crocolisk, 14-15, Loch Modan)
					442,	-- Tarantula (Spider, 15-16, Redridge Mountains)
					3461,	-- Oasis Snapjaw (Turtle, 15-16, The Barrens)
				},
			},
			{
				["name"] = "Bite", -- Rank 3
				["recipeID"] = 17256,
				["crs"] = {
					1923,	-- Bloodsnout Worg (Wolf, 16-17, Silverpine Forest)
					4005,	-- Deepmoss Creeper (Spider, 16-17, Stonetalon Mountains)
					1185,	-- Wood Lurker (Spider, 17-18, Loch Modan)
					8393,	-- Deviate Crocolisk (Crocolisk, 18-19, The Wailing Caverns)
					14266,	-- Shanda the Spinner (Spider, 19, Loch Modan)
					505,	-- Greater Tarantula (Spider, 19-20, Redridge Mountains)
					3823,	-- Ghostpaw Runner (Wolf, 19-20, Ashenvale)
					4006,	-- Deepmoss Webspinner (Spider, 19-20, Stonetalon Mountains)
					3653,	-- Kresh (Turtle, 20, The Wailing Caverns)
					2350,	-- Forest Moss Creeper (Spider, 20-21, Hillsbrad Foothills)
					569,	-- Green Recluse (Spider, 21-22, Duskwood)
					11921,	-- Besseleth (Spider, 21, Stonetalon Mountains)
					2476,	-- Large Loch Crocolisk (Crocolisk, 22, Loch Modan)
					616,	-- Chatter (Spider, 23, Redridge Mountains)
					521,	-- Lupos (Wolf, 23, Duskwood)
					4824,	-- Aku'mai Fisher (Turtle, 23-24, Blackfathom Deeps)
					14279,	-- Creepthess (Spider, 24, Hillsbrad Foothills)
				},
			},
			{
				["name"] = "Bite", -- Rank 4
				["recipeID"] = 17257,
				["crs"] = {
					628,	-- Black Ravager (Wolf, 24-25, Duskwood)
					1112,	-- Leech Widow (Spider, 24, Wetlands)
					2349,	-- Giant Moss Creeper (Spider, 24-25, Hillsbrad Foothills)
					4887,	-- Ghamoo-ra (Turtle, 25, Blackfathom Deeps)
					2089,	-- Giant Wetlands Crocolisk (Crocolisk, 25-26, Wetlands)
					1258,	-- Black Ravager Mastiff (Wolf, 25-26, Duskwood)
					4825,	-- Aku'mai Snapjaw (Turtle, 26-27, Blackfathom Deeps)
					2348,	-- Elder Moss Creeper (Spider, 26-27, Hillsbrad Foothills)
					574,	-- Naraxis (Spider, 27, Duskwood)
					3825,	-- Ghostpaw Alpha (Wolf, 27-28, Ashenvale)
					3821,	-- Wildthorn Lurker (Spider, 28-29, Ashenvale)
					2408,	-- Snapjaw (Turtle, 30-31, Hillsbrad Foothills)
				},
			},
			{
				["name"] = "Bite", -- Rank 5
				["recipeID"] = 17258,
				["crs"] = {
					2563,	-- Plains Creeper (Spider, 32-33, Arathi Highlands)
					4143,	-- Sparkleshell Snapper (Turtle, 34-35, Thousand Needles)
					4413,	-- Darkfang Spider (Spider, 35-36, Dustwallow Marsh)
					2727,	-- Crag Coyote (Wolf, 35-36, Badlands)
					4341,	-- Drywallow Crocolisk (Crocolisk, 35-36, Dustwallow Marsh)
					2565,	-- Giant Plains Creeper (Spider, 35-36, Arathi Highlands)
					4396,	-- Mudrock Tortoise (Turtle, 36-37, Dustwallow Marsh)
					4411,	-- Darkfang Lurker (Spider, 36-37, Dustwallow Marsh)
					4344,	-- Mottled Drywallow Crocolisk (Crocolisk, 38-39, Dustwallow Marsh)
					4412,	-- Darkfang Creeper (Spider, 38-39, Dustwallow Marsh)
				},
			},
			{
				["name"] = "Bite", -- Rank 6
				["recipeID"] = 17259,
				["crs"] = {
					2753,	-- Barnabus (Wolf, 38, Badlands)
					14233,	-- Ripscale (Crocolisk, 39, Dustwallow Marsh)
					4345,	-- Drywallow Daggermaw (Crocolisk, 40-41, Dustwallow Marsh)
					5286,	-- Longtooth Runner (Wolf, 40-41, Feralas)
					769,	-- Deathstrike Tarantula (Spider, 40-41, Swamp of Sorrows)
					1087,	-- Sawtooth Snapper (Crocolisk, 41-42, Swamp of Sorrows)
					4400,	-- Mudrock Snapjaw (Turtle, 41-42, Dustwallow Marsh)
					8211,	-- Old Cliff Jumper (Wolf, 42, The Hinterlands)
					5356,	-- Snarler (Wolf, 42, Feralas)
					4841,	-- Deadmire (Crocolisk, 45, Dustwallow Marsh)
					8762,	-- Timberweb Recluse (Spider, 47-48, Azshara)
					8959,	-- Felpaw Wolf (Wolf, 47-48, Felwood)
					14339,	-- Death Howl (Wolf, 49, Felwood)
				},
			},
			{
				["name"] = "Bite", -- Rank 7
				["recipeID"] = 17260,
				["crs"] = {
					8277,	-- Rekk'tilac (Spider, 48, Searing Gorge)
					2505,	-- Saltwater Snapjaw (Turtle, 49-50, The Hinterlands)
					2681,	-- Vilebranch Raiding Wolf (Wolf, 50-51, The Hinterlands)
					8933,	-- Cave Creeper (Spider, 50-52, Blackrock Depths)
					8961,	-- Felpaw Ravager (Wolf, 51-52, Felwood)
					6585,	-- Uhk'loc (Gorilla, 52, Un'Goro Crater)
					1817,	-- Diseased Wolf (Wolf, 53-54, Western Plaguelands)
					1824,	-- Plague Lurker (Spider, 54-55, Western Plaguelands)
				},
			},
			{
				["name"] = "Bite", -- Rank 8
				["recipeID"] = 17261,
				["crs"] = {
					9696,	-- Bloodaxe Worg (Wolf, 56-57, Blackrock Spire)				},
				},
			},
			{
				["name"] = "Charge", -- Rank 1
				["recipeID"] = 7371,
				["crs"] = {
					1984,	-- Young Thistle Boar (Boar, 1-2, Teldrassil)
					3098,	-- Mottled Boar (Boar, 1-2, Durotar)
					1985,	-- Thistle Boar (Boar, 2-3, Teldrassil)
					2966,	-- Battleboar (Boar, 3-4, Mulgore)
					708,	-- Small Crag Boar (Boar, 3, Dun Morogh)
					2954,	-- Bristleback Battleboar (Boar, 4-5, Mulgore)
					1125,	-- Crag Boar (Boar, 5-6, Dun Morogh)
					3099,	-- Dire Mottled Boar (Boar, 6-7, Durotar)
					1126,	-- Large Crag Boar (Boar, 6-7, Dun Morogh)
					113,	-- Stonetusk Boar (Boar, 7-8, Elwynn Forest)
					390,	-- Porcine Entourage (Boar, 7, Elwynn Forest)
					1127,	-- Elder Crag Boar (Boar, 7-8, Dun Morogh)
					524,	-- Rockhide Boar (Boar, 7-8, Elwynn Forest)
					3100,	-- Elder Mottled Boar (Boar, 8-9, Durotar)
					330,	-- Princess (Boar, 9, Elwynn Forest)
					1689,	-- Scarred Crag Boar (Boar, 9-10, Dun Morogh)
					1190,	-- Mountain Boar (Boar, 10-11, Loch Modan)
					3225,	-- Corrupted Mottled Boar (Boar, 10-11, Durotar)
					119,	-- Longsnout (Boar, 10-11, Elwynn Forest)
				},
			},
			{
				["name"] = "Charge", -- Rank 2
				["recipeID"] = 26177,
				["crs"] = {
					454,	-- Young Goretusk (Boar, 12-13, Westfall)
					157,	-- Goretusk (Boar, 14-15, Westfall)
					1191,	-- Mangy Mountain Boar (Boar, 14-15, Loch Modan)
					1192,	-- Elder Mountain Boar (Boar, 16-17, Loch Modan)
					547,	-- Great Goretusk (Boar, 16-17, Redridge Mountains)
				},
			},
			{
				["name"] = "Charge", -- Rank 3
				["recipeID"] = 26178,
				["crs"] = {
					345,	-- Bellygrub (Boar, 24, Redridge Mountains)
					4511,	-- Agam'ar (Boar, 24-25, Razorfen Kraul)
					4514,	-- Raging Agam'ar (Boar, 25-26, Razorfen Kraul)
					4512,	-- Rotting Agam'ar (Boar, 28, Razorfen Kraul)
				},
			},
--			{
--				["name"] = "Charge", -- Rank 4
--				["recipeID"] = 26179,
--			},		-- No known source for this spell
			{
				["name"] = "Charge", -- Rank 5
				["recipeID"] = 26201,
				["crs"] = {
					5992,	-- Ashmane Boar (Boar, 48-49, Blasted Lands)
					8303,	-- Grunter (Boar, 50, Blasted Lands)
				},
			},
			{
				["name"] = "Charge", -- Rank 6
				["recipeID"] = 27685,
				["crs"] = {
					16117,	-- Plagued Swine (Boar, 60, Eastern Plaguelands)
				},
			},
			{
				["name"] = "Claw", -- Rank 1
				["recipeID"] = 16827,
				["crs"] = {
					3124,	-- Scorpid Worker (Scorpid, 3, Durotar)
					3281,	-- Sarkoth (Scorpid, 4, Durotar)
					3106,	-- Pygmy Surf Crawler (Crab, 5-6, Durotar)
					1995,	-- Strigid Owl (Owl, 5-6, Teldrassil)
					1196,	-- Ice Claw Bear (Bear, 7-8, Dun Morogh)
				},
			},
			{
				["name"] = "Claw", -- Rank 2
				["recipeID"] = 16828,
				["crs"] = {
					822,	-- Young Forest Bear (Bear, 8-9, Elwynn Forest)
					1997,	-- Strigid Hunter (Owl, 8-9, Teldrassil)
					3108,	-- Encrusted Surf Crawler (Crab, 9-10, Durotar)
					3127,	-- Venomtail Scorpid (Scorpid, 9-10, Durotar)
					2163,	-- Thistle Bear (Bear, 11-12, Darkshore)
					1961,	-- Mangeclaw (Bear, 11, Dun Morogh)
					5823,	-- Death Flayer (Scorpid, 11, Durotar)
					1778,	-- Ferocious Grizzled Bear (Bear, 11-12, Silverpine Forest)
					1130,	-- Bjarn (Bear, 12, Dun Morogh)
					2232,	-- Tide Crawler (Crab, 12-14, Darkshore)
				},
			},
			{
				["name"] = "Claw", -- Rank 3
				["recipeID"] = 16829,
				["crs"] = {
					1189,	-- Black Bear Patriarch (Bear, 16-17, Loch Modan)
					1216,	-- Shore Crawler (Crab, 17-18, Westfall)
					6788,	-- Den Mother (Bear, 18-19, Darkshore)
					3812,	-- Clattering Crawler (Crab, 19-20, Ashenvale)
					3619,	-- Ghost Saber (Cat, 19-20, Darkshore)
					1225,	-- Ol' Sooty (Bear, 20, Loch Modan)
					2351,	-- Gray Bear (Bear, 21-22, Hillsbrad Foothills)
					3809,	-- Ashenvale Bear (Bear, 21-22, Ashenvale)
					4821,	-- Skittering Crustacean (Crab, 22-23, Blackfathom Deeps)
					4822,	-- Snapping Crustacean (Crab, 23-24, Blackfathom Deeps)
				},
			},
			{
				["name"] = "Claw", -- Rank 4
				["recipeID"] = 16830,
				["crs"] = {
					3810,	-- Elder Ashenvale Bear (Bear, 25-26, Ashenvale)
					4823,	-- Barbed Crustacean (Crab, 25-26, Blackfathom Deeps)
					4696,	-- Scorpashi Snapper (Scorpid, 30-31, Desolace)
					4140,	-- Scorpid Reaver (Scorpid, 31-32, Thousand Needles)
				},
			},
			{
				["name"] = "Claw", -- Rank 5
				["recipeID"] = 16831,
				["crs"] = {
					4697,	-- Scorpashi Lasher (Scorpid, 34-35, Desolace)
					5937,	-- Vile Sting (Scorpid, 35, Thousand Needles)
					4343,	-- Drywallow Snapper (Crocolisk, 37-38, Dustwallow Marsh)
					7022,	-- Venomlash Scorpid (Scorpid, 39-40, Uldaman)
				},
			},
			{
				["name"] = "Claw", -- Rank 6
				["recipeID"] = 16832,
				["crs"] = {
					5422,	-- Scorpid Hunter (Scorpid, 40-41, Tanaris)
					922,	-- Silt Crawler (Crab, 40-41, Swamp of Sorrows)
					5268,	-- Ironfur Bear (Bear, 41-42, Feralas)
					731,	-- King Bangalash (Cat, 43, Stranglethorn Vale)
					5352,	-- Old Grizzlegut (Bear, 43, Feralas)
					1088,	-- Monstrous Crawler (Crab, 43-44, Swamp of Sorrows)
				},
			},
			{
				["name"] = "Claw", -- Rank 7
				["recipeID"] = 3010,
				["crs"] = {
					5274,	-- Ironfur Patriarch (Bear, 48-49, Feralas)
					8958,	-- Angerclaw Mauler (Bear, 49-50, Felwood)
					14344,	-- Mongress (Bear, 50, Felwood)
					7099,	-- Ironbeak Hunter (Owl, 50-51, Felwood)
					14343,	-- Olm the Wise (Owl, 52, Felwood)
					8301,	-- Clack the Reaver (Scorpid, 53, Blasted Lands)
					7444,	-- Shardtooth Bear (Bear, 53-54, Winterspring)
					7455,	-- Winterspring Owl (Owl, 54-56, Winterspring)
					9695,	-- Deathlash Scorpid (Scorpid, 54-55, Burning Steppes)
					1816,	-- Diseased Grizzly (Bear, 55-56, Western Plaguelands)
				},
			},
			{
				["name"] = "Claw", -- Rank 8
				["recipeID"] = 3009,
				["crs"] = {
					7456,	-- Winterspring Screecher (Owl, 57-59, Winterspring)
					7445,	-- Elder Shardtooth (Bear, 57-58, Winterspring)
				},
			},
			{
				["name"] = "Cower", -- Rank 1
				["recipeID"] = 1742,
				["crs"] = {
					1199,	-- Juvenile Snow Leopard (Cat, 5-6, Dun Morogh)
					2042,	-- Nightsaber (Cat, 5-6, Teldrassil)
					1553,	-- Greater Duskbat (Bat, 6-7, Tirisfal Glades)
					3035,	-- Flatland Cougar (Cat, 7-8, Mulgore)
					3121,	-- Durotar Tiger (Cat, 7-8, Durotar)
					2957,	-- Elder Plainstrider (Tallstrider, 8-9, Mulgore)
					3068,	-- Mazzranache (Tallstrider, 9, Mulgore)
					2070,	-- Moonstalker Runt (Cat, 10-11, Darkshore)
					2321,	-- Foreststrider Fledgling (Tallstrider, 11-13, Darkshore)
					3246,	-- Fleeting Plainstrider (Tallstrider, 12-13, The Barrens)
				},
			},
			{
				["name"] = "Cower", -- Rank 2
				["recipeID"] = 1753,
				["crs"] = {
					3241,	-- Savannah Patriarch (Cat, 15-16, The Barrens)
					3245,	-- Ornery Plainstrider (Tallstrider, 16-17, The Barrens)
					2323,	-- Giant Foreststrider (Tallstrider, 17-19, Darkshore)
					2237,	-- Moonstalker Sire (Cat, 17-18, Darkshore)
					2384,	-- Starving Mountain Lion (Cat, 23-24, Hillsbrad Foothills)
					4067,	-- Twilight Runner (Cat, 23-24, Stonetalon Mountains)
				},
			},
			{
				["name"] = "Cower", -- Rank 3
				["recipeID"] = 1754,
				["crs"] = {
					4126,	-- Crag Stalker (Cat, 25-26, Thousand Needles)
					2385,	-- Feral Mountain Lion (Cat, 27-28, Hillsbrad Foothills)
					681,	-- Young Stranglethorn Tiger (Cat, 30-31, Stranglethorn Vale)
					4538,	-- Kraul Bat (Bat, 30-31, Razorfen Kraul)
					683,	-- Young Panther (Cat, 30-31, Stranglethorn Vale)
					4539,	-- Greater Kraul Bat (Bat, 32, Razorfen Kraul)
					736,	-- Panther (Cat, 32-33, Stranglethorn Vale)
				},
			},
			{
				["name"] = "Cower", -- Rank 4
				["recipeID"] = 1755,
				["crs"] = {
					2731,	-- Ridge Stalker (Cat, 36-37, Badlands)
					4861,	-- Shrike Bat (Bat, 38-39, Uldaman)
					2732,	-- Ridge Huntress (Cat, 38-39, Badlands)
				},
			},
			{
				["name"] = "Cower", -- Rank 5
				["recipeID"] = 1756,
				["crs"] = {
					2522,	-- Jaguero Stalker (Cat, 50, Stranglethorn Vale)
					8600,	-- Plaguebat (Bat, 53-55, Eastern Plaguelands)
					8601,	-- Noxious Plaguebat (Bat, 54-56, Eastern Plaguelands)
				},
			},
			{
				["name"] = "Cower", -- Rank 6
				["recipeID"] = 16697,
				["crs"] = {
					7430,	-- Frostsaber Cub (Cat, 55-56, Winterspring)
					8602,	-- Monstrous Plaguebat (Bat, 56-58, Eastern Plaguelands)
				},
			},
			{
				["name"] = "Dash", -- Rank 1
				["recipeID"] = 23099,
				["crs"] = {
					976,	-- Kurzen War Tiger (Cat, 32-33, Stranglethorn Vale)
					682,	-- Stranglethorn Tiger (Cat, 32-33, Stranglethorn Vale)
					4304,	-- Scarlet Tracking Hound (Hyena, 33-34, Scarlet Monastery)
					4688,	-- Bonepaw Hyena (Hyena, 33-35, Desolace)
					2727,	-- Crag Coyote (Wolf, 35-36, Badlands)
					4950,	-- Spot (Wolf, 35, Dustwallow Marsh)
					767,	-- Swamp Jaguar (Cat, 36-37, Swamp of Sorrows)
					4662,	-- Magram Bonepaw (Hyena, 37-38, Desolace)
					2850,	-- Broken Tooth (Cat, 37, Badlands)
					2728,	-- Feral Crag Coyote (Wolf, 37-38, Badlands)
					729,	-- Sin'Dall (Cat, 37, Stranglethorn Vale)
					2729,	-- Elder Crag Coyote (Wolf, 39-40, Badlands)
				},
			},
			{
				["name"] = "Dash", -- Rank 2
				["recipeID"] = 23109,
				["crs"] = {
					5286,	-- Longtooth Runner (Wolf, 40-41, Feralas)
					2734,	-- Ridge Stalker Patriarch (Cat, 40-41, Badlands)
					728,	-- Bhag'thera (Cat, 40, Stranglethorn Vale)
					5425,	-- Starving Blisterpaw (Hyena, 41-42, Tanaris)
					2730,	-- Rabid Crag Coyote (Wolf, 42-43, Badlands)
					8211,	-- Old Cliff Jumper (Wolf, 42, The Hinterlands)
					1713,	-- Elder Shadowmaw Panther (Cat, 42-43, Stranglethorn Vale)
					731,	-- King Bangalash (Cat, 43, Stranglethorn Vale)
					5426,	-- Blisterpaw Hyena (Hyena, 44-45, Tanaris)
					5427,	-- Rabid Blisterpaw (Hyena, 47-48, Tanaris)
					2926,	-- Silvermane Stalker (Wolf, 47-48, The Hinterlands)
				},
			},
			{
				["name"] = "Dash", -- Rank 3
				["recipeID"] = 23110,
				["crs"] = {
					2681,	-- Vilebranch Raiding Wolf (Wolf, 50-51, The Hinterlands)
					8303,	-- Grunter (Boar, 50, Blasted Lands)
					8300,	-- Ravage (Hyena, 51, Blasted Lands)
					9416,	-- Scarshield Worg (Wolf, 53-54, Blackrock Spire)
					7055,	-- Blackrock Worg (Wolf, 54-55, Burning Steppes)
					9696,	-- Bloodaxe Worg (Wolf, 56-57, Blackrock Spire)
					10200,	-- Rak'Shiri (Cat, 57, Winterspring)
					7433,	-- Frostsaber Huntress (Cat, 58-59, Winterspring)
					7432,	-- Frostsaber Stalker (Cat, 59-60, Winterspring)
					11365,	-- Zulian Panther (Cat, 60, Zul'Gurub)
				},
			},
			{
				["name"] = "Dive", -- Rank 1
				["recipeID"] = 23145,
				["crs"] = {
					4538,	-- Kraul Bat (Bat, 30-31, Razorfen Kraul)
					2578,	-- Young Mesa Buzzard (Carrion Bird, 31-32, Arathi Highlands)
					4539,	-- Greater Kraul Bat (Bat, 32, Razorfen Kraul)
					2579,	-- Mesa Buzzard (Carrion Bird, 34-35, Arathi Highlands)
					6013,	-- Wayward Buzzard (Carrion Bird, 35-37, Badlands)
					4693,	-- Dread Flyer (Carrion Bird, 36-37, Desolace)
					4861,	-- Shrike Bat (Bat, 38-39, Uldaman)
				},
			},
			{
				["name"] = "Dive", -- Rank 2
				["recipeID"] = 23147,
				["crs"] = {
					5307,	-- Vale Screecher (Wind Serpent, 41-43, Feralas)
					5428,	-- Roc (Carrion Bird, 42-43, Tanaris)
					5429,	-- Fire Roc (Carrion Bird, 43-45, Tanaris)
					5308,	-- Rogue Vale Screecher (Wind Serpent, 44-46, Feralas)
					8207,	-- Greater Firebird (Carrion Bird, 46, Tanaris)
					5430,	-- Searing Roc (Carrion Bird, 47-49, Tanaris)
					7097,	-- Ironbeak Owl (Owl, 48-49, Felwood)
					5349,	-- Arash-ethis (Wind Serpent, 49, Feralas)
				},
			},
			{
				["name"] = "Dive", -- Rank 3
				["recipeID"] = 23148,
				["crs"] = {
					8927,	-- Dark Screecher (Bat, 50-52, Blackrock Depths)
					1809,	-- Carrion Vulture (Carrion Bird, 50-52, Western Plaguelands)
					7099,	-- Ironbeak Hunter (Owl, 50-51, Felwood)
					5708,	-- Spawn of Hakkar (Wind Serpent, 51, The Temple of Atal'Hakkar)
					8299,	-- Spiteflayer (Carrion Bird, 52, Blasted Lands)
					7098,	-- Ironbeak Screecher (Owl, 52-53, Felwood)
					14343,	-- Olm the Wise (Owl, 52, Felwood)
					8600,	-- Plaguebat (Bat, 53-55, Eastern Plaguelands)
					7455,	-- Winterspring Owl (Owl, 54-56, Winterspring)
					2931,	-- Zaricotl (Carrion Bird, 55, Badlands)
					7456,	-- Winterspring Screecher (Owl, 57-59, Winterspring)
				},
			},
			{
				["name"] = "Fire Resistance", -- Rank 1
				["recipeID"] = 23992,
			},
			{
				["name"] = "Fire Resistance", -- Rank 2
				["recipeID"] = 24439,
			},
			{
				["name"] = "Fire Resistance", -- Rank 3
				["recipeID"] = 24444,
			},
			{
				["name"] = "Fire Resistance", -- Rank 4
				["recipeID"] = 24445,
			},
			{
				["name"] = "Frost Resistance", -- Rank 1
				["recipeID"] = 24446,
			},
			{
				["name"] = "Frost Resistance", -- Rank 2
				["recipeID"] = 24447,
			},
			{
				["name"] = "Frost Resistance", -- Rank 3
				["recipeID"] = 24448,
			},
			{
				["name"] = "Frost Resistance", -- Rank 4
				["recipeID"] = 24449,
			},
			{
				["name"] = "Furious Howl", -- Rank 1
				["recipeID"] = 24604,
				["crs"] = {
					2960,	-- Prairie Wolf Alpha (Wolf, 9-10, Mulgore)
					1765,	-- Worg (Wolf, 10-11, Silverpine Forest)
					833,	-- Coyote Packleader (Wolf, 11-12, Westfall)
					10644,	-- Mist Howler (Wolf, 22, Ashenvale)
				},
			},
			{
				["name"] = "Furious Howl", -- Rank 2
				["recipeID"] = 24605,
				["crs"] = {
					1258,	-- Black Ravager Mastiff (Wolf, 25-26, Duskwood)
					3825,	-- Ghostpaw Alpha (Wolf, 27-28, Ashenvale)
					2729,	-- Elder Crag Coyote (Wolf, 39-40, Badlands)
					5287,	-- Longtooth Howler (Wolf, 43-44, Feralas)
					2925,	-- Silvermane Howler (Wolf, 45-46, The Hinterlands)
				},
			},
			{
				["name"] = "Furious Howl", -- Rank 3
				["recipeID"] = 24603,
				["crs"] = {
					5286,	-- Longtooth Runner (Wolf, 40-41, Feralas)
					5356,	-- Snarler (Wolf, 42, Feralas)
					2924,	-- Silvermane Wolf (Wolf, 43-44, The Hinterlands)
					8959,	-- Felpaw Wolf (Wolf, 47-48, Felwood)
					14339,	-- Death Howl (Wolf, 49, Felwood)
				},
			},
			{
				["name"] = "Furious Howl", -- Rank 4
				["recipeID"] = 24597,
				["crs"] = {
					9696,	-- Bloodaxe Worg (Wolf, 56-57, Blackrock Spire)
				},
			},
			{
				["name"] = "Great Stamina", -- Rank 1
				["recipeID"] = 4187,
			},
			{
				["name"] = "Great Stamina", -- Rank 2
				["recipeID"] = 4188,
			},
			{
				["name"] = "Great Stamina", -- Rank 3
				["recipeID"] = 4189,
			},
			{
				["name"] = "Great Stamina", -- Rank 4
				["recipeID"] = 4190,
			},
			{
				["name"] = "Great Stamina", -- Rank 5
				["recipeID"] = 4191,
			},
			{
				["name"] = "Great Stamina", -- Rank 6
				["recipeID"] = 4192,
			},
			{
				["name"] = "Great Stamina", -- Rank 7
				["recipeID"] = 4193,
			},
			{
				["name"] = "Great Stamina", -- Rank 8
				["recipeID"] = 4194,
			},
			{
				["name"] = "Great Stamina", -- Rank 9
				["recipeID"] = 5041,
			},
			{
				["name"] = "Great Stamina", -- Rank 10
				["recipeID"] = 5042,
			},
			{
				["name"] = "Growl", -- Rank 1
				["recipeID"] = 2649,
			},
			{
				["name"] = "Growl", -- Rank 2
				["recipeID"] = 14916,
			},
			{
				["name"] = "Growl", -- Rank 3
				["recipeID"] = 14917,
			},
			{
				["name"] = "Growl", -- Rank 4
				["recipeID"] = 14918,
			},
			{
				["name"] = "Growl", -- Rank 5
				["recipeID"] = 14919,
			},
			{
				["name"] = "Growl", -- Rank 6
				["recipeID"] = 14920,
			},
			{
				["name"] = "Growl", -- Rank 7
				["recipeID"] = 14921,
			},
--			{
--				["name"] = "Lightning Breath", -- Rank 1
--				["recipeID"] = 24844,				
--			},			-- No Known Source
			{
				["name"] = "Lightning Breath", -- Rank 2
				["recipeID"] = 25008,
				["crs"] = {
					3630,	-- Deviate Coiler (Wind Serpent, 15-16, The Wailing Caverns)
					3631,	-- Deviate Stinglash (Wind Serpent, 16-17, The Wailing Caverns)
					3247,	-- Thunderhawk Hatchling (Wind Serpent, 18-20, The Barrens)
					3424,	-- Thunderhawk Cloudscraper (Wind Serpent, 20-22, The Barrens)
					5056,	-- Deviate Dreadfang (Wind Serpent, 20-21, The Wailing Caverns)
					5756,	-- Deviate Venomwing (Wind Serpent, 20-21, The Wailing Caverns)
					3249,	-- Greater Thunderhawk (Wind Serpent, 23-24, The Barrens)
				},
			},
			{
				["name"] = "Lightning Breath", -- Rank 3
				["recipeID"] = 25009,
				["crs"] = {
					4117,	-- Cloud Serpent (Wind Serpent, 25-26, Thousand Needles)
					3472,	-- Washte Pawne (Wind Serpent, 25, The Barrens)
					4118,	-- Venomous Cloud Serpent (Wind Serpent, 26-28, Thousand Needles)
					4119,	-- Elder Cloud Serpent (Wind Serpent, 27-29, Thousand Needles)
				},
			},
			{
				["name"] = "Lightning Breath", -- Rank 4
				["recipeID"] = 25010,
				["crs"] = {
					5307,	-- Vale Screecher (Wind Serpent, 41-43, Feralas)
					5308,	-- Rogue Vale Screecher (Wind Serpent, 44-46, Feralas)
				},
			},
			{
				["name"] = "Lightning Breath", -- Rank 5
				["recipeID"] = 25011,
				["crs"] = {
					8336,	-- Hakkari Sapper (Wind Serpent, 49-50, The Temple of Atal'Hakkar)
					5291,	-- Hakkari Frostwing (Wind Serpent, 49-50, The Temple of Atal'Hakkar)
					5349,	-- Arash-ethis (Wind Serpent, 49, Feralas)
					5708,	-- Spawn of Hakkar (Wind Serpent, 51, The Temple of Atal'Hakkar)
				},
			},
--			{
--				["name"] = "Lightning Breath", -- Rank 6
--				["recipeID"] = 25012,
--				["crs"] = {
--					11357,	-- Son of Hakkar (Wind Serpent, 60, Zul'Gurub)
--				},
--			},		-- Zul'Gurub phase
			{
				["name"] = "Natural Armor", -- Rank 1
				["recipeID"] = 24545,
			},
			{
				["name"] = "Natural Armor", -- Rank 2
				["recipeID"] = 24549,
			},
			{
				["name"] = "Natural Armor", -- Rank 3
				["recipeID"] = 24550,
			},
			{
				["name"] = "Natural Armor", -- Rank 4
				["recipeID"] = 24551,
			},
			{
				["name"] = "Natural Armor", -- Rank 5
				["recipeID"] = 24552,
			},
			{
				["name"] = "Natural Armor", -- Rank 6
				["recipeID"] = 24553,
			},
			{
				["name"] = "Natural Armor", -- Rank 7
				["recipeID"] = 24554,
			},
			{
				["name"] = "Natural Armor", -- Rank 8
				["recipeID"] = 24555,
			},
			{
				["name"] = "Natural Armor", -- Rank 9
				["recipeID"] = 24629,
			},
			{
				["name"] = "Natural Armor", -- Rank 10
				["recipeID"] = 24630,
			},
			{
				["name"] = "Nature Resistance", -- Rank 1
				["recipeID"] = 24492,
			},
			{
				["name"] = "Nature Resistance", -- Rank 2
				["recipeID"] = 24502,
			},
			{
				["name"] = "Nature Resistance", -- Rank 3
				["recipeID"] = 24503,
			},
			{
				["name"] = "Nature Resistance", -- Rank 4
				["recipeID"] = 24504,
			},
			{
				["name"] = "Prowl", -- Rank 1
				["recipeID"] = 24450,
				["crs"] = {
					2406,	-- Mountain Lion (Cat, 32-33, Alterac Mountains)
					2731,	-- Ridge Stalker (Cat, 36-37, Badlands)
					684,	-- Shadowmaw Panther (Cat, 37-38, Stranglethorn Vale)
					768,	-- Shadow Panther (Cat, 39-40, Swamp of Sorrows)
				},
			},
			{
				["name"] = "Prowl", -- Rank 2
				["recipeID"] = 24452,
				["crs"] = {
					2734,	-- Ridge Stalker Patriarch (Cat, 40-41, Badlands)
					1713,	-- Elder Shadowmaw Panther (Cat, 42-43, Stranglethorn Vale)
				},
			},
			{
				["name"] = "Prowl", -- Rank 3
				["recipeID"] = 24453,
				["crs"] = {
					2522,	-- Jaguero Stalker (Cat, 50, Stranglethorn Vale)
					7432,	-- Frostsaber Stalker (Cat, 59-60, Winterspring)
				},
			},
			{
				["name"] = "Scorpid Poison", -- Rank 1
				["recipeID"] = 24640,
				["crs"] = {
					3127,	-- Venomtail Scorpid (Scorpid, 9-10, Durotar)
					3226,	-- Corrupted Scorpid (Scorpid, 10-11, Durotar)
					5823,	-- Death Flayer (Scorpid, 11, Durotar)
					3250,	-- Silithid Creeper (Scorpid, 20-21, The Barrens)
					3252,	-- Silithid Swarmer (Scorpid, 21-22, The Barrens)
				},
			},
			{
				["name"] = "Scorpid Poison", -- Rank 2
				["recipeID"] = 24583,
				["crs"] = {
					4696,	-- Scorpashi Snapper (Scorpid, 30-31, Desolace)
					4140,	-- Scorpid Reaver (Scorpid, 31-32, Thousand Needles)
					4139,	-- Scorpid Terror (Scorpid, 33-34, Thousand Needles)
					7078,	-- Cleft Scorpid (Scorpid, 35-36, Uldaman)
					5937,	-- Vile Sting (Scorpid, 35, Thousand Needles)
					4699,	-- Scorpashi Venomlash (Scorpid, 38-39, Desolace)
				},
			},
			{
				["name"] = "Scorpid Poison", -- Rank 3
				["recipeID"] = 24586,
				["crs"] = {
					5422,	-- Scorpid Hunter (Scorpid, 40-41, Tanaris)
					7405,	-- Deadly Cleft Scorpid (Scorpid, 42-43, Uldaman)
					5423,	-- Scorpid Tail Lasher (Scorpid, 43-44, Tanaris)
					7803,	-- Scorpid Duneburrower (Scorpid, 46-47, Tanaris)
					5424,	-- Scorpid Dunestalker (Scorpid, 46-47, Tanaris)
					8926,	-- Deep Stinger (Scorpid, 50-52, Blackrock Depths)
					9691,	-- Venomtip Scorpid (Scorpid, 52-53, Burning Steppes)
					9695,	-- Deathlash Scorpid (Scorpid, 54-55, Burning Steppes)
					11735,	-- Stonelash Scorpid (Scorpid, 54-55, Silithus)
				},
			},
			{
				["name"] = "Scorpid Poison", -- Rank 4
				["recipeID"] = 24587,
				["crs"] = {
					14476,	-- Krellack (Scorpid, 56, Silithus)
					11736,	-- Stonelash Pincer (Scorpid, 56-57, Silithus)
					9698,	-- Firetail Scorpid (Scorpid, 56-57, Burning Steppes)
					11737,	-- Stonelash Flayer (Scorpid, 58-59, Silithus)
				},
			},
			{
				["name"] = "Screech", -- Rank 1
				["recipeID"] = 24423,
				["crs"] = {
					154,	-- Greater Fleshripper (Carrion Bird, 16-17, Westfall)
				},
			},
			{
				["name"] = "Screech", -- Rank 2
				["recipeID"] = 24577,
				["crs"] = {
					4158,	-- Salt Flats Vulture (Carrion Bird, 32-34, Thousand Needles)
					4861,	-- Shrike Bat (Bat, 38-39, Uldaman)
					4694,	-- Dread Ripper (Carrion Bird, 39-40, Desolace)
				},
			},
			{
				["name"] = "Screech", -- Rank 3
				["recipeID"] = 24578,
				["crs"] = {
					7097,	-- Ironbeak Owl (Owl, 48-49, Felwood)
					1809,	-- Carrion Vulture (Carrion Bird, 50-52, Western Plaguelands)
					8927,	-- Dark Screecher (Bat, 50-52, Blackrock Depths)
				},
			},
			{
				["name"] = "Screech", -- Rank 4
				["recipeID"] = 24579,
				["crs"] = {
					8602,	-- Monstrous Plaguebat (Bat, 56-58, Eastern Plaguelands)
					7456,	-- Winterspring Screecher (Owl, 57-59, Winterspring)
				},
			},
			{
				["name"] = "Shadow Resistance", -- Rank 1
				["recipeID"] = 24488,
			},
			{
				["name"] = "Shadow Resistance", -- Rank 2
				["recipeID"] = 24505,
			},
			{
				["name"] = "Shadow Resistance", -- Rank 3
				["recipeID"] = 24506,
			},
			{
				["name"] = "Shadow Resistance", -- Rank 4
				["recipeID"] = 24507,
			},
			{
				["name"] = "Shell Shield", -- Rank 1
				["recipeID"] = 26064,
				["crs"] = {
					3653,	-- Kresh (Turtle, 20, The Wailing Caverns)
					4824,	-- Aku'mai Fisher (Turtle, 23-24, Blackfathom Deeps)
					4887,	-- Ghamoo-ra (Turtle, 25, Blackfathom Deeps)
					4825,	-- Aku'mai Snapjaw (Turtle, 26-27, Blackfathom Deeps)
					2408,	-- Snapjaw (Turtle, 30-31, Hillsbrad Foothills)
				},
			},
			{
				["name"] = "Thunderstomp", -- Rank 1
				["recipeID"] = 26090,
				["crs"] = {
					1108,	-- Mistvale Gorilla (Gorilla, 32-33, Stranglethorn Vale)
					1114,	-- Jungle Thunderer (Gorilla, 37-38, Stranglethorn Vale)
				},
			},
			{
				["name"] = "Thunderstomp", -- Rank 2
				["recipeID"] = 26187,
				["crs"] = {
					1557,	-- Elder Mistvale Gorilla (Gorilla, 40-41, Stranglethorn Vale)
					5262,	-- Groddoc Thunderer (Gorilla, 49-50, Feralas)
				},
			},
			{
				["name"] = "Thunderstomp", -- Rank 3
				["recipeID"] = 26188,
				["crs"] = {
					6516,	-- Un'Goro Thunderer (Gorilla, 52-53, Un'Goro Crater)
					9622,	-- U'cha (Gorilla, 55, Un'Goro Crater)
				},
			},			
		},
	},	]]
};