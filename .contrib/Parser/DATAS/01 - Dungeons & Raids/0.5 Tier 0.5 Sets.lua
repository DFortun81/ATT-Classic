-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

_.Instances = bubbleDown({ ["u"] = PHASE_FIVE },
{
	n(-420, {	-- Tier 0.5 Sets
		["description"] = "The Dungeon Set 2 class sets, commonly referred to as Tier 0.5, are obtained by completing a long quest chain to upgrade the first set available as drops in end game dungeons into stronger versions of themselves. In current WoW, these sets are covetted by Collectors as the quest chain was completely removed from the game with Cataclysm. In WoW Classic, you should finish this quest chain on all of your characters before then!",
		["groups"] = {
			cl(DRUID, bubbleDown({ ["classes"] = { DRUID } }, {
				q(8905,	{	-- An Earnest Proposition [ALLIANCE]
					["qg"] = 16013,	-- Deliana
					["coord"] = { 43.5, 52.6, IRONFORGE },
					["maps"] = { IRONFORGE, WINTERSPRING },
					["cost"] = {
						{ "i", 21928, 15 },	-- Winterspring Blood Sample
						{ "i", 16714, 1 },	-- Wildheart Bracers
						{ "g", 200000 },	-- 20g
					},
					["classes"] = { DRUID },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 58,
					["groups"] = {
						i(22108),	-- Feralheart Bracers
					},
				}),
				q(8913,	{	-- An Earnest Proposition [HORDE]
					["qg"] = 16012,	-- Mokvar
					["coord"] = { 35.0, 38.3, ORGRIMMAR },
					["maps"] = { ORGRIMMAR, SILITHUS },
					["cost"] = {
						{ "i", 22381, 15 },	-- Silithus Venom Sample
						{ "i", 16714, 1 },	-- Wildheart Bracers
						{ "g", 200000 },	-- 20g
					},
					["classes"] = { DRUID },
					["races"] = HORDE_ONLY,
					["lvl"] = 58,
					["groups"] = {
						i(22108),	-- Feralheart Bracers
					},
				}),
				q(8927, {	-- Just Compensation [HORDE]
					["qg"] = 16012,	-- Mokvar
					["sourceQuest"] = 8978,	-- Return to Mokvar
					["coord"] = { 35.0, 38.3, ORGRIMMAR },
					["maps"] = { ORGRIMMAR },
					["cost"] = {
						{ "i", 16716, 1 },	-- Wildheart Belt
						{ "i", 16717, 1 },	-- Wildheart Gloves
					},
					["classes"] = { DRUID },
					["races"] = HORDE_ONLY,
					["lvl"] = 58,
					["g"] = {
						i(22106),	-- Feralheart Belt
						i(22110),	-- Feralheart Gloves
					},
				}),
			})),
			cl(HUNTER, bubbleDown({ ["classes"] = { HUNTER } }, {
				q(8906,	{	-- An Earnest Proposition [ALLIANCE]
					["qg"] = 16013,	-- Deliana
					["coord"] = { 43.5, 52.6, IRONFORGE },
					["maps"] = { IRONFORGE, WINTERSPRING },
					["cost"] = {
						{ "i", 21928, 15 },	-- Winterspring Blood Sample
						{ "i", 16681, 1 },	-- Beaststalker's Bindings
						{ "g", 200000 },	-- 20g
					},
					["classes"] = { HUNTER },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 58,
					["groups"] = {
						i(22011),	-- Beastmaster's Bindings
					},					
				}),
				q(8914, {	-- An Earnest Proposition [HORDE]
					["qg"] = 16012,	-- Mokvar
					["coord"] = { 35.0, 38.3, ORGRIMMAR },
					["maps"] = { ORGRIMMAR, SILITHUS },
					["cost"] = {
						{ "i", 22381, 15 },	-- Silithus Venom Sample
						{ "i", 16681, 1 },	-- Beaststalker's Bindings
						{ "g", 200000 },	-- 20g
					},
					["classes"] = { HUNTER },
					["races"] = HORDE_ONLY,
					["lvl"] = 58,
					["groups"] = {
						i(22011),	-- Beastmaster's Bindings
					},
				}),
				q(8938, {	-- Just Compensation [HORDE]
					["qg"] = 16012,	-- Mokvar
					["sourceQuest"] = 8978,	-- Return to Mokvar
					["coord"] = { 35.0, 38.3, ORGRIMMAR },
					["maps"] = { ORGRIMMAR },
					["cost"] = {
						{ "i", 16680, 1 },	-- Beaststalker's Belt
						{ "i", 16676, 1 },	-- Beaststalker's Gloves
					},
					["classes"] = { HUNTER },
					["races"] = HORDE_ONLY,
					["lvl"] = 58,
					["g"] = {
						i(22010),	-- Beastmaster's Belt
						i(22015),	-- Beastmaster's Gloves
					},
				}),
			})),
			cl(MAGE, bubbleDown({ ["classes"] = { MAGE } }, {
				q(8907, {	-- An Earnest Proposition [ALLIANCE]
					["qg"] = 16013,	-- Deliana
					["coord"] = { 43.5, 52.6, IRONFORGE },
					["maps"] = { IRONFORGE, WINTERSPRING },
					["cost"] = {
						{ "i", 21928, 15 },	-- Winterspring Blood Sample
						{ "i", 16683, 1 },	-- Magister's Bindings
						{ "g", 200000 },	-- 20g
					},
					["classes"] = { MAGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 58,
					["groups"] = {
						i(22063),	-- Sorcerer's Bindings
					},
				}),
				q(8915,	{	-- An Earnest Proposition [HORDE]
					["qg"] = 16012,	-- Mokvar
					["coord"] = { 35.0, 38.3, ORGRIMMAR },
					["maps"] = { ORGRIMMAR, SILITHUS },
					["cost"] = {
						{ "i", 22381, 15 },	-- Silithus Venom Sample
						{ "i", 16683, 1 },	-- Magister's Bindings
						{ "g", 200000 },	-- 20g
					},
					["classes"] = { MAGE },
					["races"] = HORDE_ONLY,
					["lvl"] = 58,
					["groups"] = {
						i(22063),	-- Sorcerer's Bindings
					},
				}),
			})),
			cl(PALADIN, bubbleDown({ ["classes"] = { PALADIN } }, {
				q(8908, {	-- An Earnest Proposition [ALLIANCE]
					["qg"] = 16013,	-- Deliana
					["coord"] = { 43.5, 52.6, IRONFORGE },
					["maps"] = { IRONFORGE, WINTERSPRING },
					["cost"] = {
						{ "i", 21928, 15 },	-- Winterspring Blood Sample
						{ "i", 16722, 1 },	-- Lightforge Bracers
						{ "g", 200000 },	-- 20g
					},
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 58,
					["groups"] = {
						i(22088),	-- Soulforge Bracers
					},
				}),
			})),
			cl(PRIEST, bubbleDown({ ["classes"] = { PRIEST } }, {
				q(8909, {	-- An Earnest Proposition [ALLIANCE]
					["qg"] = 16013,	-- Deliana
					["coord"] = { 43.5, 52.6, IRONFORGE },
					["maps"] = { IRONFORGE, WINTERSPRING },
					["cost"] = {
						{ "i", 21928, 15 },	-- Winterspring Blood Sample
						{ "i", 16697, 1 },	-- Devout Bracers
						{ "g", 200000 },	-- 20g
					},
					["classes"] = { PRIEST },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 58,
					["groups"] = {
						i(22079),	-- Virtuous Bracers
					},
				}),
				q(8916, {	-- An Earnest Proposition [HORDE]
					["qg"] = 16012,	-- Mokvar
					["coord"] = { 35.0, 38.3, ORGRIMMAR },
					["maps"] = { ORGRIMMAR, SILITHUS },
					["cost"] = {
						{ "i", 22381, 15 },	-- Silithus Venom Sample
						{ "i", 16697, 1 },	-- Devout Bracers
						{ "g", 200000 },	-- 20g
					},
					["classes"] = { PRIEST },
					["races"] = HORDE_ONLY,
					["lvl"] = 58,
					["groups"] = {
						i(22079),	-- Virtuous Bracers
					},
				}),
			})),
			cl(ROGUE, bubbleDown({ ["classes"] = { ROGUE } }, {
				q(8910, {	-- An Earnest Proposition [ALLIANCE]
					["qg"] = 16013,	-- Deliana
					["coord"] = { 43.5, 52.6, IRONFORGE },
					["maps"] = { IRONFORGE, WINTERSPRING },
					["cost"] = {
						{ "i", 21928, 15 },	-- Winterspring Blood Sample
						{ "i", 16710, 1 },	-- Shadowcraft Bracers
						{ "g", 200000 },	-- 20g
					},
					["classes"] = { ROGUE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 58,
					["groups"] = {
						i(22004),	-- Darkmantle Bracers
					},
				}),
				q(8917,	{	-- An Earnest Proposition [HORDE]
					["qg"] = 16012,	-- Mokvar
					["coord"] = { 35.0, 38.3, ORGRIMMAR },
					["maps"] = { ORGRIMMAR, SILITHUS },
					["cost"] = {
						{ "i", 22381, 15 },	-- Silithus Venom Sample
						{ "i", 16710, 1 },	-- Shadowcraft Bracers
						{ "g", 200000 },	-- 20g
					},
					["classes"] = { ROGUE },
					["races"] = HORDE_ONLY,
					["lvl"] = 58,
					["groups"] = {
						i(22004),	-- Darkmantle Bracers
					},
				}),
			})),
			cl(SHAMAN, bubbleDown({ ["classes"] = { SHAMAN } }, {
				q(8918,	{	-- An Earnest Proposition [HORDE]
					["qg"] = 16012,	-- Mokvar
					["coord"] = { 35.0, 38.3, ORGRIMMAR },
					["maps"] = { ORGRIMMAR, SILITHUS },
					["cost"] = {
						{ "i", 22381, 15 },	-- Silithus Venom Sample
						{ "i", 16722, 1 },	-- Lightforge Bracers
						{ "g", 200000 },	-- 20g
					},
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["lvl"] = 58,
					["groups"] = {
						i(22095),	-- Bindings of The Five Thunders
					},
				}),
			})),
			cl(WARLOCK, bubbleDown({ ["classes"] = { WARLOCK } }, {
				q(8911, {	-- An Earnest Proposition [ALLIANCE]
					["qg"] = 16013,	-- Deliana
					["coord"] = { 43.5, 52.6, IRONFORGE },
					["maps"] = { IRONFORGE, WINTERSPRING },
					["cost"] = {
						{ "i", 21928, 15 },	-- Winterspring Blood Sample
						{ "i", 16703, 1 },	-- Dreadmist Bracers
						{ "g", 200000 },	-- 20g
					},
					["classes"] = { WARLOCK },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 58,
					["groups"] = {
						i(22071),	-- Deathmist Bracers
					},
				}),
				q(8919,	{	-- An Earnest Proposition [HORDE]
					["qg"] = 16012,	-- Mokvar
					["coord"] = { 35.0, 38.3, ORGRIMMAR },
					["maps"] = { ORGRIMMAR, SILITHUS },
					["cost"] = {
						{ "i", 22381, 15 },	-- Silithus Venom Sample
						{ "i", 16703, 1 },	-- Dreadmist Bracers
						{ "g", 200000 },	-- 20g
					},
					["classes"] = { WARLOCK },
					["races"] = HORDE_ONLY,
					["lvl"] = 58,
					["groups"] = {
						i(22071),	-- Deathmist Bracers
					},
				}),
			})),
			cl(WARRIOR, bubbleDown({ ["classes"] = { WARRIOR } }, {
				q(8912, {	-- An Earnest Proposition [ALLIANCE]
					["qg"] = 16013,	-- Deliana
					["coord"] = { 43.5, 52.6, IRONFORGE },
					["maps"] = { IRONFORGE, WINTERSPRING },
					["cost"] = {
						{ "i", 21928, 15 },	-- Winterspring Blood Sample
						{ "i", 16735, 1 },	-- Bracers of Valor
						{ "g", 200000 },	-- 20g
					},
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 58,
					["groups"] = {
						i(21996),	-- Bracers of Heroism
					},
				}),
				q(8920,	{	-- An Earnest Proposition [HORDE]
					["qg"] = 16012,	-- Mokvar
					["coord"] = { 35.0, 38.3, ORGRIMMAR },
					["maps"] = { ORGRIMMAR, SILITHUS },
					["cost"] = {
						{ "i", 22381, 15 },	-- Silithus Venom Sample
						{ "i", 16735, 1 },	-- Bracers of Valor
						{ "g", 200000 },	-- 20g
					},
					["classes"] = { WARRIOR },
					["races"] = HORDE_ONLY,
					["lvl"] = 58,
					["groups"] = {
						i(21996),	-- Bracers of Heroism
					},
				}),
			})),
			n(QUESTS, {
				q(8925, {	-- A Portable Power Source
					["qg"] = 16014,	-- Mux Manascrambler
					["sourceQuest"] = 8924,	-- Hunting for Ectoplasm
					["coord"] = { 52.4, 27.2, TANARIS },
					["maps"] = { TANARIS, BURNING_STEPPES },
					["cost"] = {
						{ "i", 21938, 1 },	-- Magma Core
					},
					["lvl"] = 58,
					["groups"] = {
						{
							["itemID"] = 21938,	-- Magma Core
							["questID"] = 8925,	-- A Portable Power Source
							["cr"] = 16043,	-- Magma Lord Bokk
							["coord"] = { 36.0, 56.4, BURNING_STEPPES },
						},
					},
				}),
				q(8928, {	-- A Shifty Merchant
					["qg"] = 16014,	-- Mux Manascrambler
					["sourceQuest"] = 8925,	-- A Portable Power Source
					["coord"] = { 52.4, 27.2, TANARIS },
					["maps"] = { TANARIS, WINTERSPRING },
					["cost"] = {
						{ "i", 21939, 1 },	-- Fel Elemental Rod
					},
					["lvl"] = 58,
				}),
				q(8922, {	-- A Supernatural Device [ALLIANCE]
					["qg"] = 16013,	-- Deliana
					["sourceQuests"] = {
						8905,	-- An Earnest Proposition [DRUID]
						8906,	-- An Earnest Proposition [HUNTER]
						8907,	-- An Earnest Proposition [MAGE]
						8908,	-- An Earnest Proposition [PALADIN]
						8909,	-- An Earnest Proposition [PRIEST]
						8910,	-- An Earnest Proposition [ROGUE]
						8911,	-- An Earnest Proposition [WARLOCK]
						8912,	-- An Earnest Proposition [WARRIOR]
					},
					["coord"] = { 43.5, 52.6, IRONFORGE },
					["maps"] = { IRONFORGE, TANARIS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 21985, 1 },	-- Sealed Blood Container
					},
					["lvl"] = 58,
				}),
				q(8923, {	-- A Supernatural Device [HORDE]
					["qg"] = 16012,	-- Mokvar
					["sourceQuests"] = {
						8913,	-- An Earnest Proposition [DRUID]
						8914,	-- An Earnest Proposition [HUNTER]
						8915,	-- An Earnest Proposition [MAGE]
						8918,	-- An Earnest Proposition [SHAMAN]
						8916,	-- An Earnest Proposition [PRIEST]
						8917,	-- An Earnest Proposition [ROGUE]
						8919,	-- An Earnest Proposition [WARLOCK]
						8920,	-- An Earnest Proposition [WARRIOR]
					},
					["coord"] = { 35.0, 38.3, ORGRIMMAR },
					["maps"] = { ORGRIMMAR, TANARIS },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 22382, 1 },	-- Sealed Venom Container
					},
					["lvl"] = 58,
				}),
				q(8924, {	-- Hunting for Ectoplasm
					["qg"] = 16014,	-- Mux Manascrambler
					["sourceQuest"] = 8921,	-- The Ectoplasmic Distiller
					["coord"] = { 52.4, 27.2, TANARIS },
					["maps"] = { TANARIS, EASTERN_PLAGUELANDS, SILITHUS, WINTERSPRING },
					["cost"] = {
						{ "i", 21946, 1 },	-- Ectoplasmic Distiller
						{ "i", 21936, 12 },	-- Frozen Ectoplasm
						{ "i", 21937, 12 },	-- Scorched Ectoplasm
						{ "i", 21935, 12 },	-- Stable Ectoplasm
					},
					["lvl"] = 58,
				}),
				q(8977, {	-- Return to Deliana
					["qg"] = 16014,	-- Mux Manascrambler
					["sourceQuest"] = 8928,	-- A Shifty Merchant
					["coord"] = { 52.4, 27.2, TANARIS },
					["maps"] = { TANARIS, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 22115, 1 },	-- Extra-Dimensional Ghost Revealer
					},
					["lvl"] = 58,
				}),
				q(8978, {	-- Return to Mokvar
					["qg"] = 16014,	-- Mux Manascrambler
					["sourceQuest"] = 8928,	-- A Shifty Merchant
					["coord"] = { 52.4, 27.2, TANARIS },
					["maps"] = { TANARIS, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 22115, 1 },	-- Extra-Dimensional Ghost Revealer
					},
					["lvl"] = 58,
				}),
				q(8921, {	-- The Ectoplasmic Distiller
					["qg"] = 16014,	-- Mux Manascrambler
					["sourceQuests"] = {
						8922,	-- A Supernatural Device [ALLIANCE]
						8923,	-- A Supernatural Device [HORDE]
					},
					["coord"] = { 52.4, 27.2, TANARIS },
					["maps"] = { TANARIS, BURNING_STEPPES },
					["cost"] = {
						{ "i", 16006, 1 },	-- Delicate Arcanite Converter
						{ "i", 16203, 4 },	-- Greater Eternal Essence
						{ "i", 13423, 10 },	-- Stonescale Oil
						{ "i", 22338, 25 },	-- Volcanic Ash
						{ "g", 400000 },	-- 40g
					},
					["lvl"] = 58,
					["groups"] = {
						i(22320),	-- Mux's Quality Goods
					},
				}),
				
				
				
				q(8942, {	-- Just Compensation
					["qg"] = 16012,	-- Mokvar
					["sourceQuest"] = 8978,	-- Return to Mokvar
					["coord"] = { 35.0, 38.3, ORGRIMMAR },
					["maps"] = { ORGRIMMAR },
					["cost"] = {
						{ "i", , 1 },	-- 
						{ "i", , 1 },	-- 
					},
					["classes"] = {  },
					["races"] = HORDE_ONLY,
					["lvl"] = 58,
					["g"] = {
						i(22098),	-- Cord of The Five Thunders
						i(22099),	-- Gauntlets of The Five Thunders
					},
				}),
				q(8943, {	-- Just Compensation
					["qg"] = 16012,	-- Mokvar
					["sourceQuest"] = 8978,	-- Return to Mokvar
					["coord"] = { 35.0, 38.3, ORGRIMMAR },
					["maps"] = { ORGRIMMAR },
					["cost"] = {
						{ "i", , 1 },	-- 
						{ "i", , 1 },	-- 
					},
					["classes"] = {  },
					["races"] = HORDE_ONLY,
					["lvl"] = 58,
					["g"] = {
						i(22070),	-- Deathmist Belt
						i(22077),	-- Deathmist Wraps
					},
				}),
				q(8939, {	-- Just Compensation
					["qg"] = 16012,	-- Mokvar
					["sourceQuest"] = 8978,	-- Return to Mokvar
					["coord"] = { 35.0, 38.3, ORGRIMMAR },
					["maps"] = { ORGRIMMAR },
					["cost"] = {
						{ "i", , 1 },	-- 
						{ "i", , 1 },	-- 
					},
					["classes"] = {  },
					["races"] = HORDE_ONLY,
					["lvl"] = 58,
					["g"] = {
						i(22062),	-- Sorcerer's Belt
						i(22066),	-- Sorcerer's Gloves
					},
				}),
				q(8941, {	-- Just Compensation
					["qg"] = 16012,	-- Mokvar
					["sourceQuest"] = 8978,	-- Return to Mokvar
					["coord"] = { 35.0, 38.3, ORGRIMMAR },
					["maps"] = { ORGRIMMAR },
					["cost"] = {
						{ "i", , 1 },	-- 
						{ "i", , 1 },	-- 
					},
					["classes"] = {  },
					["races"] = HORDE_ONLY,
					["lvl"] = 58,
					["g"] = {
						i(22006),	-- Darkmantle Gloves
						i(22002),	-- Darkmantle Belt
					},
				}),
				q(8940, {	-- Just Compensation
					["qg"] = 16012,	-- Mokvar
					["sourceQuest"] = 8978,	-- Return to Mokvar
					["coord"] = { 35.0, 38.3, ORGRIMMAR },
					["maps"] = { ORGRIMMAR },
					["cost"] = {
						{ "i", , 1 },	-- 
						{ "i", , 1 },	-- 
					},
					["classes"] = {  },
					["races"] = HORDE_ONLY,
					["lvl"] = 58,
					["g"] = {
						i(22078),	-- Virtuous Belt
						i(22081),	-- Virtuous Gloves
					},
				}),
				q(8944, {	-- Just Compensation
					["qg"] = 16012,	-- Mokvar
					["sourceQuest"] = 8978,	-- Return to Mokvar
					["coord"] = { 35.0, 38.3, ORGRIMMAR },
					["maps"] = { ORGRIMMAR },
					["cost"] = {
						{ "i", , 1 },	-- 
						{ "i", , 1 },	-- 
					},
					["classes"] = { WARRIOR },
					["races"] = HORDE_ONLY,
					["lvl"] = 58,
					["g"] = {
						i(21994),	-- Belt of Heroism
						i(21998),	-- Gauntlets of Heroism
					},
				}),
			}),
		},
	}),
});