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
			["cost"] = {
				{ "i", 8203, 2 },	-- Tough Scorpid Breastplate
				{ "i", 8204, 2 },	-- Tough Scorpid Gloves
				{ "i", 8165, 10 },	-- Worn Dragonscale
			},
			["lvl"] = 40,
		}),
		q(5144, {	-- Elemental Leatherworking (A)
			["qg"] = 7868,	-- Sarah Tanner
			["altQuests"] = {
				5141,	-- Dragonscale Leatherworking
				5143,	-- Tribal Leatherworking
			},
			["requireSkill"] = LEATHERWORKING,
			["coord"] = { 63.6, 76.0, SEARING_GORGE },
			["maps"] = { SEARING_GORGE },
			["races"] = ALLIANCE_ONLY,
			["cost"] = {
				{ "i", 7081, 2 },	-- Breath of Wind
				{ "i", 7075, 2 },	-- Core of Earth
				{ "i", 7079, 2 },	-- Globe of Water
				{ "i", 7077, 2 },	-- Heart of Fire
			},
			["lvl"] = 40,
		}),
		q(5146, {	-- Elemental Leatherworking (H)
			["qg"] = 7869,	-- Brumn Winterhoof
			["altQuests"] = {
				5145,	-- Dragonscale Leatherworking
				5148,	-- Tribal Leatherworking
			},
			["requireSkill"] = LEATHERWORKING,
			["maps"] = { ARATHI_HIGHLANDS },
			["races"] = HORDE_ONLY,
			["cost"] = {
				{ "i", 7081, 2 },	-- Breath of Wind
				{ "i", 7075, 2 },	-- Core of Earth
				{ "i", 7079, 2 },	-- Globe of Water
				{ "i", 7077, 2 },	-- Heart of Fire
			},
			["lvl"] = 40,
		}),
		q(769, {	-- Kodo Hide Bag
			["qg"] = 3050,	-- Veren Tallstrider
			["requireSkill"] = LEATHERWORKING,
			["coord"] = { 44, 44.6, THUNDER_BLUFF },
			["maps"] = { THUNDER_BLUFF },
			["races"] = HORDE_ONLY,
			["lvl"] = 5,
			["g"] = {
				i(5083),	-- Pattern: Kodo Hide Bag
			},
		}),
		q(2853, {	-- Master of the Wild Leather (A)
			["qg"] = 7852,	-- Pratt McGrubben
			["sourceQuests"] = {
				2851,	-- Wild Leather Boots
				2850,	-- Wild Leather Helmet
				2852,	-- Wild Leather Leggings
				2848,	-- Wild Leather Shoulders
				2849,	-- Wild Leather Vest
			},
			["requireSkill"] = LEATHERWORKING,
			["coord"] = { 30.6, 42.7, FERALAS },
			["maps"] = { FERALAS },
			["races"] = ALLIANCE_ONLY,
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
			["sourceQuests"] = {
				2858,	-- Wild Leather Boots
				2857,	-- Wild Leather Helmet
				2859,	-- Wild Leather Leggings
				2855,	-- Wild Leather Shoulders
				2856,	-- Wild Leather Vest
			},
			["requireSkill"] = LEATHERWORKING,
			["coord"] = { 74.43, 42.91, FERALAS },
			["maps"] = { FERALAS },
			["races"] = HORDE_ONLY,
			["cost"] = {
				{ "i", 9236, 1 },	-- Jangdor's Letter
			},
			["lvl"] = 30,
			["g"] = {
				i(8408),	-- Pattern: Wild Leather Cloak
			},
		}),
		q(1582, {	-- Moonglow Vest
			["qg"] = 6034,	-- Lotherias
			["requireSkill"] = LEATHERWORKING,
			["coord"] = { 64.4, 22.2, DARNASSUS },
			["maps"] = { DARNASSUS },
			["races"] = ALLIANCE_ONLY,
			["cost"] = {
				{ "i", 2309, 5 },	-- Embossed Leather Boots
				{ "i", 2310, 5 },	-- Embossed Leather Cloak
				{ "i", 4239, 1 },	-- Embossed Leather Gloves
			},
			["lvl"] = 8,
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
		}),
		q(2851, {	-- Wild Leather Boots (A)
			["qg"] = 7852,	-- Pratt McGrubben
			["sourceQuest"] = 2847,	-- Wild Leather Armor
			["requireSkill"] = LEATHERWORKING,
			["coord"] = { 30.6, 42.7, FERALAS },
			["maps"] = { FERALAS },
			["races"] = ALLIANCE_ONLY,
			["cost"] = {
				{ "i", 8193, 2 },	-- Nightscape Pants
				{ "i", 8197, 2 },	-- Nightscape Boots
				{ "i", 8153, 2 },	-- Wildvine
			},
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
			["cost"] = {
				{ "i", 8193, 2 },	-- Nightscape Pants
				{ "i", 8197, 2 },	-- Nightscape Boots
				{ "i", 8153, 2 },	-- Wildvine
			},
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
			["cost"] = {
				{ "i", 8191, 2 },	-- Turtle Scale Helm
				{ "i", 8198, 2 },	-- Turtle Scale Bracers
				{ "i", 8153, 2 },	-- Wildvine
			},
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
			["cost"] = {
				{ "i", 8191, 2 },	-- Turtle Scale Helm
				{ "i", 8198, 2 },	-- Turtle Scale Bracers
				{ "i", 8153, 2 },	-- Wildvine
			},
			["lvl"] = 30,
			["g"] = {
				i(8407),	-- Pattern: Wild Leather Leggings
			},
		}),
		q(2848, {	-- Wild Leather Shoulders (A)
			["qg"] = 7852,	-- Pratt McGrubben
			["sourceQuest"] = 2847,	-- Wild Leather Armor
			["requireSkill"] = LEATHERWORKING,
			["coord"] = { 30.6, 42.7, FERALAS },
			["maps"] = { FERALAS },
			["races"] = ALLIANCE_ONLY,
			["cost"] = {
				{ "i", 8173, 6 },	-- Thick Armor Kit
				{ "i", 8153, 1 },	-- Wildvine
			},
			["lvl"] = 30,
			["g"] = {
				i(8403),	-- Pattern: Wild Leather Shoulders
			},
		}),
		q(2855, {	-- Wild Leather Shoulders (H)
			["qg"] = 7854,	-- Jangdor Swiftstrider
			["sourceQuest"] = 2854,	-- Wild Leather Armor
			["requireSkill"] = LEATHERWORKING,
			["coord"] = { 74.43, 42.91, FERALAS },
			["maps"] = { FERALAS },
			["races"] = HORDE_ONLY,
			["cost"] = {
				{ "i", 8173, 6 },	-- Thick Armor Kit
				{ "i", 8153, 1 },	-- Wildvine
			},
			["lvl"] = 30,
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
			["cost"] = {
				{ "i", 8189, 2 },	-- Turtle Scale Breastplate
				{ "i", 8187, 2 },	-- Turtle Scale Gloves
				{ "i", 8153, 1 },	-- Wildvine
			},
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
			["cost"] = {
				{ "i", 8189, 2 },	-- Turtle Scale Breastplate
				{ "i", 8187, 2 },	-- Turtle Scale Gloves
				{ "i", 8153, 1 },	-- Wildvine
			},
			["lvl"] = 30,
			["g"] = {
				i(8404),	-- Pattern: Wild Leather Vest
			},
		}),
	}),
});