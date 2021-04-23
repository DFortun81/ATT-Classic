---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(WESTERN_PLAGUELANDS, {
			n(ZONEDROPS, {
				i(17114, {	-- Araj's Phylactery Shard
					["allianceQuestID"] = 211,	-- Alas, Andorhal
					["hordeQuestID"] = 105,	-- Alas, Andorhal
					["cr"] = 1852,	-- Araj the Summoner
					["coord"] = { 45.6, 69.2, WESTERN_PLAGUELANDS },
				}),
				i(14610, {  -- Araj's Scarab
					["allianceQuestID"] = 5803,	-- Araj's Scarab (A)
					["hordeQuestID"] = 5804,	-- Araj's Scarab (H)
					["cr"] = 1852,	-- Araj the Summoner
					["coord"] = { 45.6, 69.2, WESTERN_PLAGUELANDS },
				}),
				i(12938, {	-- Blood of Heroes
					["description"] = "This item can be found sporatically on the ground in the Plaguelands.",
					["cr"] = 10996,	-- Fallen Hero
					["coords"] = {
						-- Hearthglen
						{ 54.9, 27.1, WESTERN_PLAGUELANDS },
						{ 46.8, 34.5, WESTERN_PLAGUELANDS },
						{ 49.8, 33.3, WESTERN_PLAGUELANDS },
						{ 56.7, 34.7, WESTERN_PLAGUELANDS },
						
						-- Spooky Cave
						{ 66.5, 42.2, WESTERN_PLAGUELANDS },
						{ 68.0, 44.7, WESTERN_PLAGUELANDS },
						{ 64.0, 48.7, WESTERN_PLAGUELANDS },
						{ 68.7, 49.2, WESTERN_PLAGUELANDS },
						{ 67.0, 53.8, WESTERN_PLAGUELANDS },
						
						-- Gahrron's Withering
						{ 64.1, 57.9, WESTERN_PLAGUELANDS },
						{ 63.2, 59.2, WESTERN_PLAGUELANDS },
						{ 62.0, 58.5, WESTERN_PLAGUELANDS },
						
						-- Felstone Field
						{ 36.5, 53.6, WESTERN_PLAGUELANDS },
						{ 35.9, 57.5, WESTERN_PLAGUELANDS },
						{ 38.2, 56.3, WESTERN_PLAGUELANDS },
						{ 40.8, 57.5, WESTERN_PLAGUELANDS },
						{ 42.2, 54.8, WESTERN_PLAGUELANDS },
						
						-- Dalson's Tears
						{ 44.6, 53.5, WESTERN_PLAGUELANDS },
						{ 45.9, 51.1, WESTERN_PLAGUELANDS },
						{ 47.9, 53.1, WESTERN_PLAGUELANDS },
						{ 52.3, 55.0, WESTERN_PLAGUELANDS },
						{ 47.0, 69.9, WESTERN_PLAGUELANDS },
						
						-- The Writhing Haunt
						{ 53.5, 63.5, WESTERN_PLAGUELANDS },
						{ 52.3, 66.3, WESTERN_PLAGUELANDS },
						{ 53.3, 66.2, WESTERN_PLAGUELANDS },
						{ 55.3, 59.6, WESTERN_PLAGUELANDS },
						{ 57.8, 66.6, WESTERN_PLAGUELANDS },
						
						-- Ruins of Andorhal
						{ 41.5, 62.1, WESTERN_PLAGUELANDS },
						{ 42.8, 64.2, WESTERN_PLAGUELANDS },
						{ 44.2, 65.0, WESTERN_PLAGUELANDS },
						{ 39.7, 69.6, WESTERN_PLAGUELANDS },
						{ 40.6, 73.1, WESTERN_PLAGUELANDS },
						{ 43.3, 68.3, WESTERN_PLAGUELANDS },
						{ 43.7, 70.5, WESTERN_PLAGUELANDS },
						{ 44.5, 71.7, WESTERN_PLAGUELANDS },
						{ 45.9, 71.4, WESTERN_PLAGUELANDS },
						{ 47.6, 70.0, WESTERN_PLAGUELANDS },
						{ 47.0, 67.1, WESTERN_PLAGUELANDS },
						{ 49.4, 68.1, WESTERN_PLAGUELANDS },
						
						-- Caer Darrow
						{ 63.6, 75.5, WESTERN_PLAGUELANDS },
						{ 64.9, 74.5, WESTERN_PLAGUELANDS },
						{ 65.8, 76.8, WESTERN_PLAGUELANDS },
						{ 68.9, 73.8, WESTERN_PLAGUELANDS },
						{ 69.5, 78.6, WESTERN_PLAGUELANDS },
						{ 69.5, 78.6, WESTERN_PLAGUELANDS },
						{ 68.3, 81.6, WESTERN_PLAGUELANDS },
						{ 68.7, 79.1, WESTERN_PLAGUELANDS },
						{ 67.8, 84.6, WESTERN_PLAGUELANDS },
					},
				}),
				un(PHASE_SIX, i(22526)),	-- Bone Fragments
				i(12841, {	-- Invader's Scourgestone
					["description"] = "Can drop from any Undead mobs in the Plaguelands and associated dungeons so long as you are equipped with one of the Argent Dawn trinkets.",
				}),
				i(12840, {	-- Minion's Scourgestone
					["description"] = "Can drop from weak Undead mobs in the Plaguelands and associated dungeons so long as you are equipped with one of the Argent Dawn trinkets.",
				}),
				i(13195, {  -- Dalson's Tears Cauldron Key
					["allianceQuestID"] = 5219,	-- Target: Dalson's Tears
					["hordeQuestID"] = 5231,	-- Target: Dalson's Tears
					["cr"] = 11077,	-- Cauldron Lord Malvinious
					["coord"] = { 46.2, 52.6, WESTERN_PLAGUELANDS },
				}),
				i(13357, {	-- Ectoplasmic Resonator
					["description"] = "These only drop from ghostly mobs in Western Plaguelands while you have Vitreous Focuser in your inventory.",
					["cost"] = {
						{ "i", 13370, 1 },	-- Vitreous Focuser
					},
				}),
				i(13194, {  -- Felstone Field Cauldron Key
					["allianceQuestID"] = 5216,	-- Target: Felstone Field
					["hordeQuestID"] = 5229,	-- Target: Felstone Field
					["cr"] = 11075,	-- Cauldron Lord Bilemaw
					["coord"] = { 37.0, 57.6, WESTERN_PLAGUELANDS },
				}),
				i(16252, {	-- Formula: Enchant Weapon - Crusader
					["cr"] = 4494,	-- Scarlet Spellbinder
				}),
				i(13196, {  -- Gahrron's Withering Cauldron Key
					["allianceQuestID"] = 5225,	-- Target: Gahrron's Withering
					["hordeQuestID"] = 5235,	-- Target: Gahrron's Withering
					["cr"] = 11078,	-- Cauldron Lord Soulwrath
					["coord"] = { 62.6, 59.0, WESTERN_PLAGUELANDS },
				}),
				i(20768, {	-- Oozing Bag
					["crs"] = {
						1808,	-- Devouring Ooze
						12387,	-- Large Vile Slime
						1806,	-- Vile Slime
					},
					["groups"] = {
						i(20769),	-- Disgusting Oozeling
					},
				}),
				i(13357, {	-- Osseous Agitator
					["description"] = "These only drop from skeletal mobs in Western Plaguelands while you have Vitreous Focuser in your inventory.",
					["cost"] = {
						{ "i", 13370, 1 },	-- Vitreous Focuser
					},
				}),
				i(15771, {	-- Pattern: Living Breastplate
					["cr"] = 1813,	-- Decaying Horror
				}),
				i(12707, {	-- Plans: Runic Plate Boots
					["cr"] = 1836,	-- Scarlet Cavalier
				}),
				i(9296, {	-- Recipe: Gift of Arthas
					["crs"] = {
						1783,	-- Skeletal Flayer
						1791,	-- Slavering Ghoul
					},
				}),
				i(13496, {	-- Recipe: Greater Nature Protection Potion
					["crs"] = {
						1813,	-- Decaying Horror
						1812,	-- Rotting Behemoth
					},
				}),
				i(12811, {	-- Righteous Orb
					["description"] = "Can drop from any Scarlet Crusade member in Stratholme in addition to the Scarlet Oracle and the Crimson Elite in the Plaguelands.",
					["cr"] = 12128,	-- Crimson Elite
				}),
				i(14619, {  -- Skeletal Fragments
					["allianceQuestID"] = 5537,	-- Skeletal Fragments
					["hordeQuestID"] = 964,	-- Skeletal Fragments
					["crs"] = {
						1789,	-- Skeletal Acolyte
						1787,	-- Skeletal Executioner
						1783,	-- Skeletal Flayer
						1784,	-- Skeletal Sorcerer
						1785,	-- Skeletal Terror
						1788,	-- Skeletal Warlord
					},
				}),
				i(13356, {	-- Somatic Intensifier
					["description"] = "These only drop from zombies in Western Plaguelands while you have Vitreous Focuser in your inventory.",
					["cost"] = {
						{ "i", 13370, 1 },	-- Vitreous Focuser
					},
				}),
				i(13197, {  -- Writhing Haunt Cauldron Key
					["allianceQuestID"] = 5222,	-- Target: Writhing Haunt
					["hordeQuestID"] = 5233,	-- Target: Writhing Haunt
					["cr"] = 11076,	-- Cauldron Lord Razarch
					["coord"] = { 52.8, 66.0, WESTERN_PLAGUELANDS },
				}),
			}),
		}),
	}),
};