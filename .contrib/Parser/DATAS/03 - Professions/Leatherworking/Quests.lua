profession(LEATHERWORKING, {
	n(QUESTS, {
		q(5141, {	-- Dragonscale Leatherworking (A)
			["qg"] = 7866,	-- Peter Galen
			["altQuests"] = {
				5144,	-- Elemental Leatherworking
				5143,	-- Tribal Leatherworking
			},
			["requireSkill"] = LEATHERWORKING,
			["coord"] = { 37.4, 65.4, AZSHARA },
			["maps"] = { AZSHARA },
			["races"] = ALLIANCE_ONLY,
			["cost"] = {
				{ "i", 8203, 2 },	-- Tough Scorpid Breastplate
				{ "i", 8204, 2 },	-- Tough Scorpid Gloves
				{ "i", 8165, 10 },	-- Worn Dragonscale
			},
			["lvl"] = 40,
		}),
		q(5145, {	-- Dragonscale Leatherworking (H)
			["qg"] = 7867,	-- Thorkaf Dragoneye
			["altQuests"] = {
				5146,	-- Elemental Leatherworking
				5148,	-- Tribal Leatherworking
			},
			["requireSkill"] = LEATHERWORKING,
			["coord"] = { 62.6, 57.4, BADLANDS },
			["maps"] = { BADLANDS },
			["races"] = HORDE_ONLY,
			["lvl"] = 40,
		}),
		q(5144, {	-- Elemental Leatherworking (A)
			["lvl"] = 40,
			["requireSkill"] = LEATHERWORKING,
			["maps"] = { SEARING_GORGE },
			["races"] = ALLIANCE_ONLY,
			["altQuests"] = {
				5141,	-- Dragonscale Leatherworking
				5143,	-- Tribal Leatherworking
			},
			["qg"] = 7868,	-- Sarah Tanner
			["coord"] = { 63.6, 76.0, SEARING_GORGE },
		}),
		q(5146, {	-- Elemental Leatherworking (H)
			["lvl"] = 40,
			["requireSkill"] = LEATHERWORKING,
			["maps"] = { ARATHI_HIGHLANDS },
			["races"] = HORDE_ONLY,
			["altQuests"] = {
				5145,	-- Dragonscale Leatherworking
				5148,	-- Tribal Leatherworking
			},
			["qg"] = 7869,	-- Brumn Winterhoof
		}),
		q(2853, {	-- Master of the Wild Leather (A)
			["qg"] = 7852,	-- Pratt McGrubben
			["requireSkill"] = LEATHERWORKING,
			["coord"] = { 30.6, 42.7, FERALAS },
			["maps"] = { FERALAS },
			["races"] = ALLIANCE_ONLY,
			["sourceQuests"] = {
				2851,	-- Wild Leather Boots
				2850,	-- Wild Leather Helmet
				2852,	-- Wild Leather Leggings
				2848,	-- Wild Leather Shoulders
				2849,	-- Wild Leather Vest
			},
			["cost"] = {
				{ "i", 9235, 1 },	-- Pratt's Letter
			},
			["lvl"] = 30,
			["g"] = {
				i(8408),	-- Pattern: Wild Leather Cloak
			},
		}),
		q(2860, {	-- Master of the Wild Leather (H)
			["qg"] = 7854,	-- Jangdor Swiftstrider
			["requireSkill"] = LEATHERWORKING,
			["coord"] = { 74.43, 42.91, FERALAS },
			["maps"] = { FERALAS },
			["races"] = HORDE_ONLY,
			["sourceQuests"] = {
				2858,	-- Wild Leather Boots
				2857,	-- Wild Leather Helmet
				2859,	-- Wild Leather Leggings
				2855,	-- Wild Leather Shoulders
				2856,	-- Wild Leather Vest
			},
			["cost"] = {
				{ "i", 9236, 1 },	-- Jangdor's Letter
			},
			["lvl"] = 30,
			["g"] = {
				i(8408),	-- Pattern: Wild Leather Cloak
			},
		}),
		q(1582, {	-- Moonglow Vest
			["lvl"] = 8,
			["requireSkill"] = LEATHERWORKING,
			["maps"] = { DARNASSUS },
			["races"] = ALLIANCE_ONLY,
			["qg"] = 6034,	-- Lotherias
			["coord"] = { 64.4, 22.2, DARNASSUS },
			["description"] = "Quest giver is on the 2nd floor of the building.",
			["g"] = {
				i(6710),	-- Pattern: Moonglow Vest
			},
		}),
		q(5143, {	-- Tribal Leatherworking (A)
			["qg"] = 7870,	-- Caryssia Moonhunter
			["altQuests"] = {
				5141,	-- Dragonscale Leatherworking
				5144,	-- Elemental Leatherworking
			},
			["requireSkill"] = LEATHERWORKING,
			["coord"] = { 89.4, 46.5, FERALAS },
			["maps"] = { FERALAS },
			["races"] = ALLIANCE_ONLY,
			["cost"] = {
				{ "i", 8214, 1 },	-- Wild Leather Helmet
				{ "i", 8211, 1 },	-- Wild Leather Vest
			},
			["lvl"] = 40,
		}),
		q(5148, {	-- Tribal Leatherworking (H)
			["qg"] = 7871,	-- Se'Jib
			["altQuests"] = {
				5145,	-- Dragonscale Leatherworking
				5146,	-- Elemental Leatherworking
			},
			["requireSkill"] = LEATHERWORKING,
			["coord"] = { 36.6, 34.2, STRANGLETHORN_VALE },
			["maps"] = { STRANGLETHORN_VALE },
			["races"] = HORDE_ONLY,
			["cost"] = {
				{ "i", 8214, 1 },	-- Wild Leather Helmet
				{ "i", 8211, 1 },	-- Wild Leather Vest
			},
			["lvl"] = 40,
		}),
		q(2847, {	-- Wild Leather Armor (A)
			["qg"] = 7852,	-- Pratt McGrubben
			["requireSkill"] = LEATHERWORKING,
			["coord"] = { 30.6, 42.7, FERALAS },
			["maps"] = { FERALAS },
			["races"] = ALLIANCE_ONLY,
			["cost"] = {
				{ "i", 4304, 10 },	-- Thick Leather
			},
			["lvl"] = 30,
		}),
		q(2854, {	-- Wild Leather Armor (H)
			["qg"] = 7854,	-- Jangdor Swiftstrider
			["requireSkill"] = LEATHERWORKING,
			["coord"] = { 74.43, 42.91, FERALAS },
			["maps"] = { FERALAS },
			["races"] = HORDE_ONLY,
			["cost"] = {
				{ "i", 4304, 10 },	-- Thick Leather
			},
			["lvl"] = 30,
			["cost"] = {
				{ "i", 4304, 10 },	-- Thick Leather
			},
		}),
		q(2851, {	-- Wild Leather Boots (A)
			["qg"] = 7852,	-- Pratt McGrubben
			["sourceQuest"] = 2847,	-- Wild Leather Armor
			["requireSkill"] = LEATHERWORKING,
			["coord"] = { 30.6, 42.7, FERALAS },
			["maps"] = { FERALAS },
			["races"] = ALLIANCE_ONLY,
			["lvl"] = 30,
			["g"] = {
				i(8406),	-- Pattern: Wild Leather Boots
			},
		}),
		q(2858, {	-- Wild Leather Boots (H)
			["qg"] = 7854,	-- Jangdor Swiftstrider
			["sourceQuest"] = 2854,	-- Wild Leather Armor
			["requireSkill"] = LEATHERWORKING,
			["coord"] = { 74.43, 42.91, FERALAS },
			["maps"] = { FERALAS },
			["races"] = HORDE_ONLY,
			["lvl"] = 30,
			["g"] = {
				i(8406),	-- Pattern: Wild Leather Boots
			},
		}),
		q(2850, {	-- Wild Leather Helmet (A)
			["qg"] = 7852,	-- Pratt McGrubben
			["sourceQuest"] = 2847,	-- Wild Leather Armor
			["requireSkill"] = LEATHERWORKING,
			["coord"] = { 30.6, 42.7, FERALAS },
			["maps"] = { FERALAS },
			["races"] = ALLIANCE_ONLY,
			["lvl"] = 30,
			["g"] = {
				i(8405),	-- Pattern: Wild Leather Helmet
			},
		}),
		q(2857, {	-- Wild Leather Helmet (H)
			["qg"] = 7854,	-- Jangdor Swiftstrider
			["sourceQuest"] = 2854,	-- Wild Leather Armor
			["requireSkill"] = LEATHERWORKING,
			["coord"] = { 74.43, 42.91, FERALAS },
			["maps"] = { FERALAS },
			["races"] = HORDE_ONLY,
			["cost"] = {
				{ "i", 8175, 2 },	-- Nightscape Tunic
				{ "i", 8176, 2 },	-- Nightscape Headband
				{ "i", 8153, 1 },	-- Wildvine
			},
			["lvl"] = 30,
			["g"] = {
				i(8405),	-- Pattern: Wild Leather Helmet
			},
		}),
		q(2852, {	-- Wild Leather Leggings (A)
			["qg"] = 7852,	-- Pratt McGrubben
			["sourceQuest"] = 2847,	-- Wild Leather Armor
			["requireSkill"] = LEATHERWORKING,
			["coord"] = { 30.6, 42.7, FERALAS },
			["maps"] = { FERALAS },
			["races"] = ALLIANCE_ONLY,
			["lvl"] = 30,
			["g"] = {
				i(8407),	-- Pattern: Wild Leather Leggings
			},
		}),
		q(2859, {	-- Wild Leather Leggings (H)
			["qg"] = 7854,	-- Jangdor Swiftstrider
			["sourceQuest"] = 2854,	-- Wild Leather Armor
			["requireSkill"] = LEATHERWORKING,
			["coord"] = { 74.43, 42.91, FERALAS },
			["maps"] = { FERALAS },
			["races"] = HORDE_ONLY,
			["lvl"] = 30,
			["g"] = {
				i(8407),	-- Pattern: Wild Leather Leggings
			},
		}),
		q(2848, {	-- Wild Leather Shoulders (A)
			["lvl"] = 30,
			["requireSkill"] = LEATHERWORKING,
			["maps"] = { FERALAS },
			["races"] = ALLIANCE_ONLY,
			["qg"] = 7852,	-- Pratt McGrubben
			["sourceQuest"] = 2847,	-- Wild Leather Armor
			["g"] = {
				i(8403),	-- Pattern: Wild Leather Shoulders
			},
			["coord"] = { 30.6, 42.7, FERALAS },
		}),
		q(2855, {	-- Wild Leather Shoulders (H)
			["lvl"] = 30,
			["requireSkill"] = LEATHERWORKING,
			["maps"] = { FERALAS },
			["races"] = HORDE_ONLY,
			["qg"] = 7854,	-- Jangdor Swiftstrider
			["coord"] = { 74.43, 42.91, FERALAS },
			["sourceQuest"] = 2854,	-- Wild Leather Armor
			["cost"] = {
				{ "i", 8173, 6 },	-- Thick Armor Kit
				{ "i", 8153, 1 },	-- Wildvine
			},
			["g"] = {
				i(8403),	-- Pattern: Wild Leather Shoulders
			},
		}),
		q(2849, {	-- Wild Leather Vest (A)
			["qg"] = 7852,	-- Pratt McGrubben
			["sourceQuest"] = 2847,	-- Wild Leather Armor
			["requireSkill"] = LEATHERWORKING,
			["coord"] = { 30.6, 42.7, FERALAS },
			["maps"] = { FERALAS },
			["races"] = ALLIANCE_ONLY,
			["lvl"] = 30,
			["g"] = {
				i(8404),	-- Pattern: Wild Leather Vest
			},
		}),
		q(2856, {	-- Wild Leather Vest (H)
			["qg"] = 7854,	-- Jangdor Swiftstrider
			["sourceQuest"] = 2854,	-- Wild Leather Armor
			["requireSkill"] = LEATHERWORKING,
			["coord"] = { 74.43, 42.91, FERALAS },
			["maps"] = { FERALAS },
			["races"] = HORDE_ONLY,
			["lvl"] = 30,
			["cost"] = {
				{ "i", 8189, 2 },	-- Turtle Scale Breastplate
				{ "i", 8187, 2 },	-- Turtle Scale Gloves
				{ "i", 8153, 1 },	-- Wildvine
			},
			["g"] = {
				i(8404),	-- Pattern: Wild Leather Vest
			},
		}),
	}),
});