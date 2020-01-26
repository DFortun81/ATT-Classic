local ALLIANCE_FIGHT_FOR_WSG_TIER_1 = {
	8372,	-- Fight for Warsong Gulch
	8399,	-- Fight for Warsong Gulch
	8400,	-- Fight for Warsong Gulch
	8401,	-- Fight for Warsong Gulch
	8402,	-- Fight for Warsong Gulch
	8403,	-- Fight for Warsong Gulch
};
local ALLIANCE_FIGHT_FOR_WSG_TIER_2 = {	-- Repeatables
	8386,	-- Fight for Warsong Gulch
	8404,	-- Fight for Warsong Gulch
	8405,	-- Fight for Warsong Gulch
	8406,	-- Fight for Warsong Gulch
	8407,	-- Fight for Warsong Gulch
	8408,	-- Fight for Warsong Gulch
};
local HORDE_BATTLE_FOR_WSG_TIER_1 = {
	8368,	-- Battle of Warsong Gulch
	8426,	-- Battle of Warsong Gulch
	8427,	-- Battle of Warsong Gulch
	8428,	-- Battle of Warsong Gulch
	8429,	-- Battle of Warsong Gulch
	8430,	-- Battle of Warsong Gulch
};
local HORDE_BATTLE_FOR_WSG_TIER_2 = {	-- Repeatables
	8389,	-- Battle of Warsong Gulch
	8431,	-- Battle of Warsong Gulch
	8432,	-- Battle of Warsong Gulch
	8433,	-- Battle of Warsong Gulch
	8434,	-- Battle of Warsong Gulch
	8435,	-- Battle of Warsong Gulch
};
_.PvP = 
{
	n(-304, { -- Battlegrounds
		m(1460, { -- Warsong Gulch
			["maps"] = { ASHENVALE, THE_BARRENS },
			["g"] = {
				faction(890, {	-- Silverwing Sentinels
					["creatureID"] = 14753,	-- Illiyana Moonblaze <Silverwing Supply Officer>
					["icon"] = "Interface\\Icons\\ability_racial_shadowmeld",
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						n(-17, {	-- Quests
							q(8372, { -- Fight for Warsong Gulch
								["qg"] = 15351, -- Alliance Brigadier General
								["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_1,
								["races"] = ALLIANCE_ONLY,
								["cost"] = {
									{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
								},
								["lvl"] = 10,
							}),
							q(8399, { -- Fight for Warsong Gulch
								["qg"] = 15351, -- Alliance Brigadier General
								["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_1,
								["races"] = ALLIANCE_ONLY,
								["cost"] = {
									{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
								},
								["lvl"] = 20,
							}),
							q(8400, { -- Fight for Warsong Gulch
								["qg"] = 15351, -- Alliance Brigadier General
								["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_1,
								["races"] = ALLIANCE_ONLY,
								["cost"] = {
									{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
								},
								["lvl"] = 30,
							}),
							q(8401, { -- Fight for Warsong Gulch
								["qg"] = 15351, -- Alliance Brigadier General
								["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_1,
								["races"] = ALLIANCE_ONLY,
								["cost"] = {
									{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
								},
								["lvl"] = 40,
							}),
							q(8402, { -- Fight for Warsong Gulch
								["qg"] = 15351, -- Alliance Brigadier General
								["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_1,
								["races"] = ALLIANCE_ONLY,
								["cost"] = {
									{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
								},
								["lvl"] = 50,
							}),
							q(8403, { -- Fight for Warsong Gulch
								["qg"] = 15351, -- Alliance Brigadier General
								["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_1,
								["races"] = ALLIANCE_ONLY,
								["cost"] = {
									{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
								},
								["lvl"] = 60,
							}),
							q(8386, { -- Fight for Warsong Gulch
								["qg"] = 15351, -- Alliance Brigadier General
								["sourceQuest"] = 8372, -- Fight for Warsong Gulch
								["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_2,
								["races"] = ALLIANCE_ONLY,
								["repeatable"] = true,
								["cost"] = {
									{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
								},
								["lvl"] = 10,
							}),
							q(8404, { -- Fight for Warsong Gulch
								["qg"] = 15351, -- Alliance Brigadier General
								["sourceQuest"] = 8399, -- Fight for Warsong Gulch
								["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_2,
								["races"] = ALLIANCE_ONLY,
								["repeatable"] = true,
								["cost"] = {
									{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
								},
								["lvl"] = 20,
							}),
							q(8405, { -- Fight for Warsong Gulch
								["qg"] = 15351, -- Alliance Brigadier General
								["sourceQuest"] = 8400, -- Fight for Warsong Gulch
								["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_2,
								["races"] = ALLIANCE_ONLY,
								["repeatable"] = true,
								["cost"] = {
									{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
								},
								["lvl"] = 30,
							}),
							q(8406, { -- Fight for Warsong Gulch
								["qg"] = 15351, -- Alliance Brigadier General
								["sourceQuest"] = 8401, -- Fight for Warsong Gulch
								["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_2,
								["races"] = ALLIANCE_ONLY,
								["repeatable"] = true,
								["cost"] = {
									{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
								},
								["lvl"] = 40,
							}),
							q(8407, { -- Fight for Warsong Gulch
								["qg"] = 15351, -- Alliance Brigadier General
								["sourceQuest"] = 8402, -- Fight for Warsong Gulch
								["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_2,
								["races"] = ALLIANCE_ONLY,
								["repeatable"] = true,
								["cost"] = {
									{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
								},
								["lvl"] = 50,
							}),
							q(8408, { -- Fight for Warsong Gulch
								["qg"] = 15351, -- Alliance Brigadier General
								["sourceQuest"] = 8403, -- Fight for Warsong Gulch
								["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_2,
								["races"] = ALLIANCE_ONLY,
								["repeatable"] = true,
								["cost"] = {
									{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
								},
								["lvl"] = 60,
							}),
						}),
					},
				}),
				faction(889, {	-- Warsong Outriders
					["creatureID"] = 14754,	-- Kelm Hargunth <Warsong Supply Officer>
					["icon"] = "Interface\\Icons\\Ability_Warrior_WarCry",
					["races"] = HORDE_ONLY,
					["g"] = {
						n(-17, {	-- Quests
							q(8368, { -- Battle of Warsong Gulch
								["qg"] = 15350, -- Horde Warbringer
								["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_1,
								["races"] = HORDE_ONLY,
								["cost"] = {
									{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
								},
								["lvl"] = 10,
							}),
							q(8426, { -- Battle of Warsong Gulch
								["qg"] = 15350, -- Horde Warbringer
								["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_1,
								["races"] = HORDE_ONLY,
								["cost"] = {
									{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
								},
								["lvl"] = 20,
							}),
							q(8427, { -- Battle of Warsong Gulch
								["qg"] = 15350, -- Horde Warbringer
								["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_1,
								["races"] = HORDE_ONLY,
								["cost"] = {
									{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
								},
								["lvl"] = 30,
							}),
							q(8428, { -- Battle of Warsong Gulch
								["qg"] = 15350, -- Horde Warbringer
								["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_1,
								["races"] = HORDE_ONLY,
								["cost"] = {
									{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
								},
								["lvl"] = 40,
							}),
							q(8429, { -- Battle of Warsong Gulch
								["qg"] = 15350, -- Horde Warbringer
								["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_1,
								["races"] = HORDE_ONLY,
								["cost"] = {
									{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
								},
								["lvl"] = 50,
							}),
							q(8430, { -- Battle of Warsong Gulch
								["qg"] = 15350, -- Horde Warbringer
								["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_1,
								["races"] = HORDE_ONLY,
								["cost"] = {
									{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
								},
								["lvl"] = 60,
							}),
							q(8389, { -- Battle of Warsong Gulch
								["qg"] = 15350, -- Horde Warbringer
								["sourceQuest"] = 8368, -- Battle of Warsong Gulch
								["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_2,
								["repeatable"] = true,
								["races"] = HORDE_ONLY,
								["cost"] = {
									{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
								},
								["lvl"] = 10,
							}),
							q(8431, { -- Battle of Warsong Gulch
								["qg"] = 15350, -- Horde Warbringer
								["sourceQuest"] = 8426, -- Battle of Warsong Gulch
								["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_2,
								["repeatable"] = true,
								["races"] = HORDE_ONLY,
								["cost"] = {
									{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
								},
								["lvl"] = 20,
							}),
							q(8432, { -- Battle of Warsong Gulch
								["qg"] = 15350, -- Horde Warbringer
								["sourceQuest"] = 8427, -- Battle of Warsong Gulch
								["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_2,
								["repeatable"] = true,
								["races"] = HORDE_ONLY,
								["cost"] = {
									{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
								},
								["lvl"] = 30,
							}),
							q(8433, { -- Battle of Warsong Gulch
								["qg"] = 15350, -- Horde Warbringer
								["sourceQuest"] = 8428, -- Battle of Warsong Gulch
								["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_2,
								["repeatable"] = true,
								["races"] = HORDE_ONLY,
								["cost"] = {
									{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
								},
								["lvl"] = 40,
							}),
							q(8434, { -- Battle of Warsong Gulch
								["qg"] = 15350, -- Horde Warbringer
								["sourceQuest"] = 8429, -- Battle of Warsong Gulch
								["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_2,
								["repeatable"] = true,
								["races"] = HORDE_ONLY,
								["cost"] = {
									{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
								},
								["lvl"] = 50,
							}),
							q(8435, { -- Battle of Warsong Gulch
								["qg"] = 15350, -- Horde Warbringer
								["sourceQuest"] = 8430, -- Battle of Warsong Gulch
								["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_2,
								["repeatable"] = true,
								["races"] = HORDE_ONLY,
								["cost"] = {
									{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
								},
								["lvl"] = 60,
							}),
						}),
					},
				}),
			},
		}),
	}),
};