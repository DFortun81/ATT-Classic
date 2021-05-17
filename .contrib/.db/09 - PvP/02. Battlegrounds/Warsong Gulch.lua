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
	n(-304, {	-- Battlegrounds
		m(1460, {	-- Warsong Gulch
			["maps"] = { ASHENVALE, THE_BARRENS },
			["g"] = {
				n(FACTIONS, {
					faction(890, {	-- Silverwing Sentinels
						["icon"] = "Interface\\Icons\\ability_racial_shadowmeld",
						["races"] = ALLIANCE_ONLY,
					}),
					faction(889, {	-- Warsong Outriders
						["icon"] = "Interface\\Icons\\Ability_Warrior_WarCry",
						["races"] = HORDE_ONLY,
					}),
				}),
				n(QUESTS, {
					q(8368, {	-- Battle of Warsong Gulch
						["qg"] = 15350,	-- Horde Warbringer
						["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_1,
						["races"] = HORDE_ONLY,
						["cost"] = {
							{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
						},
						["lvl"] = { 10, 19 },
					}),
					q(8426, {	-- Battle of Warsong Gulch
						["qg"] = 15350,	-- Horde Warbringer
						["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_1,
						["races"] = HORDE_ONLY,
						["cost"] = {
							{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
						},
						["lvl"] = { 20, 29 },
					}),
					q(8427, {	-- Battle of Warsong Gulch
						["qg"] = 15350,	-- Horde Warbringer
						["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_1,
						["races"] = HORDE_ONLY,
						["cost"] = {
							{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
						},
						["lvl"] = { 30, 39 },
					}),
					q(8428, {	-- Battle of Warsong Gulch
						["qg"] = 15350,	-- Horde Warbringer
						["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_1,
						["races"] = HORDE_ONLY,
						["cost"] = {
							{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
						},
						["lvl"] = { 40, 49 },
					}),
					q(8429, {	-- Battle of Warsong Gulch
						["qg"] = 15350,	-- Horde Warbringer
						["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_1,
						["races"] = HORDE_ONLY,
						["cost"] = {
							{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
						},
						["lvl"] = { 50, 59 },
					}),
					q(8430, {	-- Battle of Warsong Gulch
						["qg"] = 15350,	-- Horde Warbringer
						["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_1,
						["races"] = HORDE_ONLY,
						["cost"] = {
							{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
						},
						["lvl"] = { 60, 69 },
					}),
					q(8389, {	-- Battle of Warsong Gulch
						["qg"] = 15350,	-- Horde Warbringer
						["sourceQuest"] = 8368,	-- Battle of Warsong Gulch
						["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_2,
						["repeatable"] = true,
						["races"] = HORDE_ONLY,
						["cost"] = {
							{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
						},
						["lvl"] = { 10, 19 },
					}),
					q(8431, {	-- Battle of Warsong Gulch
						["qg"] = 15350,	-- Horde Warbringer
						["sourceQuest"] = 8426,	-- Battle of Warsong Gulch
						["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_2,
						["repeatable"] = true,
						["races"] = HORDE_ONLY,
						["cost"] = {
							{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
						},
						["lvl"] = { 20, 29 },
					}),
					q(8432, {	-- Battle of Warsong Gulch
						["qg"] = 15350,	-- Horde Warbringer
						["sourceQuest"] = 8427,	-- Battle of Warsong Gulch
						["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_2,
						["repeatable"] = true,
						["races"] = HORDE_ONLY,
						["cost"] = {
							{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
						},
						["lvl"] = { 30, 39 },
					}),
					q(8433, {	-- Battle of Warsong Gulch
						["qg"] = 15350,	-- Horde Warbringer
						["sourceQuest"] = 8428,	-- Battle of Warsong Gulch
						["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_2,
						["repeatable"] = true,
						["races"] = HORDE_ONLY,
						["cost"] = {
							{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
						},
						["lvl"] = { 40, 49 },
					}),
					q(8434, {	-- Battle of Warsong Gulch
						["qg"] = 15350,	-- Horde Warbringer
						["sourceQuest"] = 8429,	-- Battle of Warsong Gulch
						["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_2,
						["repeatable"] = true,
						["races"] = HORDE_ONLY,
						["cost"] = {
							{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
						},
						["lvl"] = { 50, 59 },
					}),
					q(8435, {	-- Battle of Warsong Gulch
						["qg"] = 15350,	-- Horde Warbringer
						["sourceQuest"] = 8430,	-- Battle of Warsong Gulch
						["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_2,
						["repeatable"] = true,
						["races"] = HORDE_ONLY,
						["cost"] = {
							{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
						},
						["lvl"] = { 60, 69 },
					}),
					q(8372, {	-- Fight for Warsong Gulch
						["qg"] = 15351,	-- Alliance Brigadier General
						["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_1,
						["races"] = ALLIANCE_ONLY,
						["cost"] = {
							{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
						},
						["lvl"] = { 10, 19 },
					}),
					q(8399, {	-- Fight for Warsong Gulch
						["qg"] = 15351,	-- Alliance Brigadier General
						["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_1,
						["races"] = ALLIANCE_ONLY,
						["cost"] = {
							{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
						},
						["lvl"] = { 20, 29 },
					}),
					q(8400, {	-- Fight for Warsong Gulch
						["qg"] = 15351,	-- Alliance Brigadier General
						["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_1,
						["races"] = ALLIANCE_ONLY,
						["cost"] = {
							{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
						},
						["lvl"] = { 30, 39 },
					}),
					q(8401, {	-- Fight for Warsong Gulch
						["qg"] = 15351,	-- Alliance Brigadier General
						["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_1,
						["races"] = ALLIANCE_ONLY,
						["cost"] = {
							{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
						},
						["lvl"] = { 40, 49 },
					}),
					q(8402, {	-- Fight for Warsong Gulch
						["qg"] = 15351,	-- Alliance Brigadier General
						["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_1,
						["races"] = ALLIANCE_ONLY,
						["cost"] = {
							{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
						},
						["lvl"] = { 50, 59 },
					}),
					q(8403, {	-- Fight for Warsong Gulch
						["qg"] = 15351,	-- Alliance Brigadier General
						["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_1,
						["races"] = ALLIANCE_ONLY,
						["cost"] = {
							{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
						},
						["lvl"] = { 60, 69 },
					}),
					q(8386, {	-- Fight for Warsong Gulch
						["qg"] = 15351,	-- Alliance Brigadier General
						["sourceQuest"] = 8372,	-- Fight for Warsong Gulch
						["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_2,
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
						},
						["lvl"] = { 10, 19 },
					}),
					q(8404, {	-- Fight for Warsong Gulch
						["qg"] = 15351,	-- Alliance Brigadier General
						["sourceQuest"] = 8399,	-- Fight for Warsong Gulch
						["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_2,
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
						},
						["lvl"] = { 20, 29 },
					}),
					q(8405, {	-- Fight for Warsong Gulch
						["qg"] = 15351,	-- Alliance Brigadier General
						["sourceQuest"] = 8400,	-- Fight for Warsong Gulch
						["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_2,
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
						},
						["lvl"] = { 30, 39 },
					}),
					q(8406, {	-- Fight for Warsong Gulch
						["qg"] = 15351,	-- Alliance Brigadier General
						["sourceQuest"] = 8401,	-- Fight for Warsong Gulch
						["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_2,
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
						},
						["lvl"] = { 40, 49 },
					}),
					q(8407, {	-- Fight for Warsong Gulch
						["qg"] = 15351,	-- Alliance Brigadier General
						["sourceQuest"] = 8402,	-- Fight for Warsong Gulch
						["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_2,
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
						},
						["lvl"] = { 50, 59 },
					}),
					q(8408, {	-- Fight for Warsong Gulch
						["qg"] = 15351,	-- Alliance Brigadier General
						["sourceQuest"] = 8403,	-- Fight for Warsong Gulch
						["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_2,
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
						},
						["lvl"] = { 60, 69 },
					}),
					q(7868, {	-- Outrider Advanced Care Package
						["qg"] = 14754,	-- Kelm Hargunth <Warsong Supply Officer>
						["minReputation"] = { 889, FRIENDLY },	-- Warsong Outriders, Friendly.
						["coord"] = { 46.6, 8.4, THE_BARRENS },
						["races"] = HORDE_ONLY,
						["lvl"] = 45,
						["g"] = {
							i(19153),	-- Outrider Advanced Care Package
						},
					}),
					q(7866, {	-- Outrider Basic Care Package
						["qg"] = 14754,	-- Kelm Hargunth <Warsong Supply Officer>
						["minReputation"] = { 889, FRIENDLY },	-- Warsong Outriders, Friendly.
						["coord"] = { 46.6, 8.4, THE_BARRENS },
						["races"] = HORDE_ONLY,
						["lvl"] = { 25, 34 },
						["g"] = {
							i(19154),	-- Outrider Basic Care Package
						},
					}),
					q(7867, {	-- Outrider Standard Care Package
						["qg"] = 14754,	-- Kelm Hargunth <Warsong Supply Officer>
						["minReputation"] = { 889, FRIENDLY },	-- Warsong Outriders, Friendly.
						["coord"] = { 46.6, 8.4, THE_BARRENS },
						["races"] = HORDE_ONLY,
						["lvl"] = { 35, 44 },
						["g"] = {
							i(19155),	-- Outrider Standard Care Package
						},
					}),
					q(7865, {	-- Sentinel Advanced Care Package
						["qg"] = 14753,	-- Illiyana Moonblaze
						["minReputation"] = { 890, FRIENDLY },	-- Silverwing Sentinels, Friendly.
						["races"] = ALLIANCE_ONLY,
						["lvl"] = 45,
						["g"] = {
							i(19152),	-- Sentinel Advanced Care Package
						},
					}),
					q(7863, {	-- Sentinel Basic Care Package
						["qg"] = 14753,	-- Illiyana Moonblaze
						["minReputation"] = { 890, FRIENDLY },	-- Silverwing Sentinels, Friendly.
						["races"] = ALLIANCE_ONLY,
						["lvl"] = { 25, 34 },
						["g"] = {
							i(19150),	-- Sentinel Basic Care Package
						},
					}),
					q(7864, {	-- Sentinel Standard Care Package
						["qg"] = 14753,	-- Illiyana Moonblaze
						["minReputation"] = { 890, FRIENDLY },	-- Silverwing Sentinels, Friendly.
						["races"] = ALLIANCE_ONLY,
						["lvl"] = { 35, 44 },
						["g"] = {
							i(19151),	-- Sentinel Standard Care Package
						},
					}),
				}),
				n(VENDORS, {
					n(14754, {	-- Kelm Hargunth <Warsong Supply Officer>
						["coord"] = { 46.6, 8.4, THE_BARRENS },
						["groups"] = {
							i(19505),	-- Warsong Battle Tabard
							i(19518),	-- Advisor's Ring
							i(19519),	-- Advisor's Ring
							i(19520),	-- Advisor's Ring
							i(19521),	-- Advisor's Ring
							i(20426),	-- Advisor's Ring
							i(19566),	-- Advisor's Gnarled Staff
							i(19567),	-- Advisor's Gnarled Staff
							i(19568),	-- Advisor's Gnarled Staff
							i(19569),	-- Advisor's Gnarled Staff
							i(20425),	-- Advisor's Gnarled Staff
							i(19526),	-- Battle Healer's Cloak
							i(19527),	-- Battle Healer's Cloak
							i(19528),	-- Battle Healer's Cloak
							i(19529),	-- Battle Healer's Cloak
							i(20427),	-- Battle Healer's Cloak
							i(19578),	-- Berserker Bracers
							i(19580),	-- Berserker Bracers
							i(19581),	-- Berserker Bracers
							i(19595),	-- Dryad's Wrist Bindings
							i(19596),	-- Dryad's Wrist Bindings
							i(19597),	-- Dryad's Wrist Bindings
							i(19587),	-- Forest Stalker's Bracers
							i(19589),	-- Forest Stalker's Bracers
							i(19590),	-- Forest Stalker's Bracers
							i(19510),	-- Legionnaire's Band
							i(19511),	-- Legionnaire's Band
							i(19512),	-- Legionnaire's Band
							i(19513),	-- Legionnaire's Band
							i(20429),	-- Legionnaire's Band
							i(19550),	-- Legionnaire's Sword
							i(19551),	-- Legionnaire's Sword
							i(19552),	-- Legionnaire's Sword
							i(19553),	-- Legionnaire's Sword
							i(20430),	-- Legionnaire's Sword
							i(19558),	-- Outrider's Bow
							i(19559),	-- Outrider's Bow
							i(19560),	-- Outrider's Bow
							i(19561),	-- Outrider's Bow
							i(20437),	-- Outrider's Bow
							i(19542),	-- Scout's Blade
							i(19543),	-- Scout's Blade
							i(19544),	-- Scout's Blade
							i(19545),	-- Scout's Blade
							i(20441),	-- Scout's Blade
							i(19534),	-- Scout's Medallion
							i(19535),	-- Scout's Medallion
							i(19536),	-- Scout's Medallion
							i(19537),	-- Scout's Medallion
							i(20442),	-- Scout's Medallion
							i(19582),	-- Windtalker's Wristguards
							i(19583),	-- Windtalker's Wristguards
							i(19584),	-- Windtalker's Wristguards
							
							-- Not Available Until Phase 6
							un(PHASE_SIX, i(21567)),	-- Rune of Duty
							un(PHASE_SIX, i(21568)),	-- Rune of Duty
							un(PHASE_SIX, i(21565)),	-- Rune of Perfection
							un(PHASE_SIX, i(21566)),	-- Rune of Perfection
							un(PHASE_SIX, i(22673)),	-- Outrider's Chain Leggings
							un(TBC_PHASE_ONE, i(30498)),	-- Outrider's Lamellar Legguards
							un(PHASE_SIX, i(22740)),	-- Outrider's Leather Pants
							un(PHASE_SIX, i(22741)),	-- Outrider's Lizardhide Pants
							un(PHASE_SIX, i(22676)),	-- Outrider's Mail Leggings
							un(PHASE_SIX, i(22651)),	-- Outrider's Plate Legguards
							un(PHASE_SIX, i(22747)),	-- Outrider's Silk Leggings
						},
					}),
					n(14753, {	-- Illiyana Moonblaze <Silverwing Supply Officer>
						["coord"] = { 61.6, 83.8, ASHENVALE },
						["groups"] = {
							i(19506),	-- Silverwing Battle Tabard
							i(19578),	-- Berserker Bracers
							i(19580),	-- Berserker Bracers
							i(19581),	-- Berserker Bracers
							i(19530),	-- Caretaker's Cape
							i(19531),	-- Caretaker's Cape
							i(19532),	-- Caretaker's Cape
							i(19533),	-- Caretaker's Cape
							i(20428),	-- Caretaker's Cape
							i(19595),	-- Dryad's Wrist Bindings
							i(19596),	-- Dryad's Wrist Bindings
							i(19597),	-- Dryad's Wrist Bindings
							i(19587),	-- Forest Stalker's Bracers
							i(19589),	-- Forest Stalker's Bracers
							i(19590),	-- Forest Stalker's Bracers
							i(19522),	-- Lorekeeper's Ring
							i(19523),	-- Lorekeeper's Ring
							i(19524),	-- Lorekeeper's Ring
							i(19525),	-- Lorekeeper's Ring
							i(20431),	-- Lorekeeper's Ring
							i(19570),	-- Lorekeeper's Staff
							i(19571),	-- Lorekeeper's Staff
							i(19572),	-- Lorekeeper's Staff
							i(19573),	-- Lorekeeper's Staff
							i(20434),	-- Lorekeeper's Staff
							i(19562),	-- Outrunner's Bow
							i(19563),	-- Outrunner's Bow
							i(19564),	-- Outrunner's Bow
							i(19565),	-- Outrunner's Bow
							i(20438),	-- Outrunner's Bow
							i(19514),	-- Protector's Band
							i(19516),	-- Protector's Band
							i(19515),	-- Protector's Band
							i(19517),	-- Protector's Band
							i(20439),	-- Protector's Band
							i(19554),	-- Protector's Sword
							i(19555),	-- Protector's Sword
							i(19556),	-- Protector's Sword
							i(19557),	-- Protector's Sword
							i(20440),	-- Protector's Sword
							i(20443),	-- Sentinel's Blade
							i(19546),	-- Sentinel's Blade
							i(19547),	-- Sentinel's Blade
							i(19548),	-- Sentinel's Blade
							i(19549),	-- Sentinel's Blade
							i(19538),	-- Sentinel's Medallion
							i(19539),	-- Sentinel's Medallion
							i(19540),	-- Sentinel's Medallion
							i(19541),	-- Sentinel's Medallion
							i(20444),	-- Sentinel's Medallion
							i(19582),	-- Windtalker's Wristguards
							i(19583),	-- Windtalker's Wristguards
							i(19584),	-- Windtalker's Wristguards
							
							-- Not Available Until Phase 6
							un(PHASE_SIX, i(21567)),	-- Rune of Duty
							un(PHASE_SIX, i(21568)),	-- Rune of Duty
							un(PHASE_SIX, i(21565)),	-- Rune of Perfection
							un(PHASE_SIX, i(21566)),	-- Rune of Perfection
							un(PHASE_SIX, i(22748)),	-- Sentinel's Chain Leggings
							un(TBC_PHASE_ONE, i(30497)),	-- Sentinel's Mail Leggings
							un(PHASE_SIX, i(22753)),	-- Sentinel's Lamellar Legguards
							un(PHASE_SIX, i(22749)),	-- Sentinel's Leather Pants
							un(PHASE_SIX, i(22750)),	-- Sentinel's Lizardhide Pants
							un(PHASE_SIX, i(22672)),	-- Sentinel's Plate Legguards
							un(PHASE_SIX, i(22752)),	-- Sentinel's Silk Leggings
						},
					}),
				}),
			},
		}),
	}),
};