---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(WESTERN_PLAGUELANDS, {
			n(0, {	-- Zone Drops
				i(17114, {	-- Araj's Phylactery Shard
					["allianceQuestID"] = 211,	-- Alas, Andorhal
					["hordeQuestID"] = 105,	-- Alas, Andorhal
					["cr"] = 1852,	-- Araj the Summoner
					["coord"] = { 45.6, 69.2, WESTERN_PLAGUELANDS },
				}),
				i(12843, {	-- Corruptor's Scourgestone
					["description"] = "Can drop from any Undead rare mob or boss in the Plaguelands and associated dungeons so long as you are equipped with one of the Argent Dawn trinkets.",
				}),
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
				i(12719, {	-- Plans: Runic Plate Leggings
					["cr"] = 1885,	-- Scarlet Smith
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