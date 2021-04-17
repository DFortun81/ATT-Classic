---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(WETLANDS, {
			n(QUESTS, {
				q(304, {	-- A Grim Task
					["qg"] = 1071,	-- Longbraid the Grim
					["coord"] = { 49.8, 18.3, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3639, 1 },	-- Ear of Balgaras
					},
					["lvl"] = 26,
					["g"] = {
						{
							["itemID"] = 3639,	-- Ear of Balgaras
							["questID"] = 304,	-- A Grim Task
							["cr"] = 1364,	-- Balgaras the Foul
							["coords"] = {
								{ 47.4, 15.0, WETLANDS },
								{ 46.6, 18.6, WETLANDS },
								{ 61.8, 31.0, WETLANDS },
							},
						},
						i(2916),	-- Gold Lion Shield
						i(2917),	-- Tranquil Ring
					},
				}),
				q(471, {	-- Apprentice's Duties
					["qg"] = 2094,	-- James Halloran
					["sourceQuest"] = 484,	-- Young Crocolisk Skins
					["coord"] = { 8.5, 55.7, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3348, 6 },	-- Giant Crocolisk Skin
					},
					["lvl"] = 18,
					["g"] = {
						i(2545),	-- Malleable Chain Leggings
						i(3561),	-- Resilient Poncho
						i(3681),	-- Recipe: Crocolisk Gumbo
					},
				}),
				q(275, {	-- Blisters on The Land
					["qg"] = 1244,	-- Rethiel the Greenwarden
					["sourceQuest"] = 277,	-- Fire Taboo
					["coord"] = { 56.3, 40.4, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["g"] = {
						i(3558),	-- Fen Keeper Robe
						i(1273),	-- Forest Chain
						i(2263),	-- Phytoblade
					},
				}),
				q(279, {	-- Claws from the Deep
					["qg"] = 1242,	-- Karl Boran
					["coord"] = { 8.3, 58.5, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3618, 1 },	-- Gobbler's Head
					},
					["lvl"] = 20,
					["groups"] = {
						{
							["itemID"] = 3618,	-- Gobbler's Head
							["questID"] = 279,	-- Claws from the Deep
							["cr"] = 1259,	-- Gobbler
							["coord"] = { 17.4, 40.4, WETLANDS },
						},
					},
				}),
				q(293, {	-- Cleansing the Eye
					["qg"] = 1217,	-- Glorin Steelbrow
					["sourceQuest"] = 292,	-- The Eye of Paleth
					["coord"] = { 10.6, 60.5, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2944, 1 },	-- Cursed Eye of Paleth
					},
					["lvl"] = 22,
					["g"] = {
						i(2943),	-- Eye of Paleth
					},
				}),
				q(469, {	-- Daily Delivery
					["qg"] = 2093,	-- Einar Stonegrip
					["coord"] = { 49.8, 39.4, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3347, 1 },	-- Bundle of Crocolisk Skins
					},
					["lvl"] = 18,
				}),
				q(474, {	-- Defeat Nek'rosh
					["provider"] = { "o", 1609 },	-- Dragonmaw Catapult
					["sourceQuest"] = 465,	-- Nek'rosh's Gambit
					["coord"] = { 47.5, 46.9, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3625, 1 },	-- Nek'rosh's Head
					},
					["lvl"] = 23,
					["g"] = {
						{
							["itemID"] = 3625,	-- Nek'rosh's Head
							["questID"] = 474,	-- Defeat Nek'rosh
							["cr"] = 2091,	-- Chieftain Nek'rosh
							["coord"] = { 54.2, 54.2, WETLANDS },
						},
						i(3209),	-- Ancient War Sword
						i(6194),	-- Barreling Reaper
					},
				}),
				q(470, {	-- Digging Through the Ooze
					["qg"] = 2111,	-- Sida
					["coord"] = { 11.8, 58.0, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3349, 1 },	-- Sida's Bag
					},
					["lvl"] = 19,
					["g"] = {
						i(3352),	-- Ooze-covered Bag
					},
				}),
				q(472, {	-- Fall of Dun Modr
					["qg"] = 2097,	-- Harlo Barnaby
					["coord"] = { 10.8, 55.9, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
				}),
				q(1132, {	-- Fiora Longears
					["qg"] = 4455,	-- Red Jack Flint
					["coord"] = { 9.9, 57.9, WETLANDS },
					["maps"] = { DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 18,
				}),
				q(277, {	-- Fire Taboo
					["qg"] = 1244,	-- Rethiel the Greenwarden
					["sourceQuest"] = 276,	-- Tramping Paws
					["coord"] = { 56.3, 40.4, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2611, 9 },	-- Crude Flint
					},
					["lvl"] = 20,
					["g"] = {
						i(4606),	-- Spongy Morel
					},
				}),
				q(305, {	-- In Search of The Excavation Team (1/2)
					["qg"] = 2096,	-- Tarrel Rockweaver
					["coord"] = { 11.5, 52.2, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 21,
				}),
				q(306, {	-- In Search of The Excavation Team (2/2)
					["qg"] = 1076,	-- Merrin Rockweaver
					["sourceQuest"] = 305,	-- In Search of The Excavation Team (1/2)
					["coord"] = { 38.8, 52.2, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2639, 1 },	-- Merrin's Letter
					},
					["lvl"] = 21,
				}),
				q(1301, {	-- James Hyal
					["qg"] = 5081,	-- Connor Rivers
					["coord"] = { 40.4, 91.6, STORMWIND_CITY },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 30,
				}),
				q(1302, {	-- James Hyal
					["qg"] = 5082,	-- Vincent Hyal
					["sourceQuest"] = 1301,	-- James Hyal
					["altQuests"] = { 1282 },	-- They Call Him Smiling Jim
					["coord"] = { 10.8, 60.4, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(290, {	-- Lifting the Curse
					["qg"] = 1239,	-- First Mate Fitzsimmons
					["sourceQuest"] = 289,	-- The Cursed Crew
					["coord"] = { 10.9, 59.6, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2629, 1 },	-- Intrepid Strongbox Key
					},
					["lvl"] = 22,
					["groups"] = {
						{
							["itemID"] = 2629,	-- Intrepid Strongbox Key
							["questID"] = 290,	-- Lifting the Curse
							["cr"] = 1160,	-- Captain Halyndor
							["coord"] = { 15.6, 23.4, WETLANDS },
						},
					},
				}),
				q(321, {	-- Lightforge Iron
					["qg"] = 1217,	-- Glorin Steelbrow
					["coord"] = { 10.6, 60.5, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["g"] = {
						i(2702),	-- Lightforge Ingot
					},
				}),
				q(526, {	-- Lightforge Ingots
					["qg"] = 1217,	-- Glorin Steelbrow
					["sourceQuest"] = 321,	-- Lightforge Iron
					["altQuests"] = { 324 },	-- The Lost Ingots
					["coord"] = { 10.6, 60.6, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2702, 5 },	-- Lightforge Ingot
					},
					["lvl"] = 20,
				}),
				q(465, {	-- Nek'rosh's Gambit
					["qg"] = 2104,	-- Captain Stoutfist
					["sourceQuest"] = 464,	-- War Banners
					["coord"] = { 9.8, 57.4, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3339, 1 },	-- Dwarven Tinder
					},
					["lvl"] = 23,
				}),
				q(294, {	-- Ormer's Revenge (1/3)
					["qg"] = 1078,	-- Ormer Ironbraid
					["coord"] = { 38, 51.2, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
				}),
				q(295, {	-- Ormer's Revenge (2/3)
					["qg"] = 1078,	-- Ormer Ironbraid
					["sourceQuest"] = 294,	-- Ormer's Revenge (1/3)
					["coord"] = { 38, 51.2, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
				}),
				q(296, {	-- Ormer's Revenge (3/3)
					["qg"] = 1078,	-- Ormer Ironbraid
					["sourceQuest"] = 295,	-- Ormer's Revenge (2/3)
					["coord"] = { 38, 51.2, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3638, 1 },	-- Sarltooth's Talon
					},
					["lvl"] = 22,
					["g"] = {
						{
							["itemID"] = 3638,	-- Sarltooth's Talon
							["questID"] = 296,	-- Ormer's Revenge (3/3)
							["cr"] = 1353,	-- Sarltooth
							["coord"] = { 33.0, 51.4, WETLANDS },
						},
						i(3493),	-- Raptor's End
						i(3566),	-- Raptorbane Armor
						i(5246),	-- Excavation Rod
						i(3682),	-- Recipe: Curiously Tasty Omelet
					},
				}),
				q(634, {	-- Plea To The Alliance
					["qg"] = 1075,	-- Rhag Garmason
					["sourceQuest"] = 633,	-- The Thandol Span (3/3)
					["coord"] = { 49.9, 18.2, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(281, {	-- Reclaiming Goods
					["qg"] = 1242,	-- Karl Boran
					["sourceQuest"] = 279,	-- Claws from the Deep
					["coord"] = { 8.4, 58.6, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(473, {	-- Report to Captain Stoutfist
					["qg"] = 2086,	-- Valstag Ironjaw
					["coord"] = { 10.1, 56.9, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 23,
				}),
				q(286, {	-- Return the Statuette
					["provider"] = { "o", 259 },	-- Half-buried Barrel
					["sourceQuest"] = 285,	-- Search More Hovels
					["coord"] = { 14.0, 34.8, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2625, 1 },	-- Menethil Statuette
					},
					["lvl"] = 20,
					["g"] = {
						i(2950),	-- Icicle Rod
						i(2949),	-- Mariner Boots
					},
				}),
				q(285, {	-- Search More Hovels
					["provider"] = { "o", 142151 },	-- Sealed Barrel
					["sourceQuest"] = 284,	-- The Search Continues
					["coord"] = { 13.6, 38.2, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(943, {	-- The Absent Minded Prospector (5/5)
					["qg"] = 2911,	-- Archaeologist Flagongut
					["sourceQuest"] = 942,	-- The Absent Minded Prospector (4/5) (Darnassus)
					["coord"] = { 10.8, 60.4, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 5234, 1 },	-- Flagongut's Fossil
						{ "i", 5233, 1 },	-- Stone of Relu
					},
					["lvl"] = 15,
					["g"] = {
						{
							["itemID"] = 5234,	-- Flagongut's Fossil
							["questID"] = 943,	-- The Absent Minded Prospector (5/5)
							["coord"] = { 38.8, 52.2, WETLANDS },
						},
						i(5627),	-- Relic Blade
						i(5626),	-- Skullchipper
					},
				}),
				q(289, {	-- The Cursed Crew
					["qg"] = 1239,	-- First Mate Fitzsimmons
					["sourceQuest"] = 288,	-- The Third Fleet
					["coord"] = { 10.9, 59.6, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3619, 1 },	-- Snellig's Snuffbox
					},
					["lvl"] = 22,
					["groups"] = {
						{
							["itemID"] = 3619,	-- Snellig's Snuffbox
							["questID"] = 289,	-- The Cursed Crew
							["cr"] = 1159,	-- First Mate Snellig
							["coord"] = { 14.0, 30.6, WETLANDS },
						},
					},
				}),
				q(303, {	-- The Dark Iron War
					["qg"] = 1074,	-- Motley Garmason
					["coord"] = { 49.7, 18.3, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
				}),
				q(292, {	-- The Eye of Paleth
					["provider"] = { "o", 112948 },	-- Intrepid's Locked Strongbox
					["sourceQuest"] = 290,	-- Lifting the Curse
					["coord"] = { 14.5, 24.0, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2944, 1 },	-- Cursed Eye of Paleth
					},
					["lvl"] = 22,
					["g"] = {
						i(2944),	-- Cursed Eye of Paleth
					},
				}),
				q(463, {	-- The Greenwarden
					["qg"] = 1239,	-- First Mate Fitzsimmons
					["coord"] = { 10.9, 59.6, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(324, {	-- The Lost Ingots
					["provider"] = { "o", 2734 },	-- Waterlogged Chest
					["altQuests"] = { 526 },	-- Lightforge Ingots
					["sourceQuest"] = 321,	-- Lightforge Iron
					["coord"] = { 12.1, 64.1, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2702, 5 },	-- Lightforge Ingot
					},
					["lvl"] = 20,
				}),
				q(1249, {	-- The Missing Diplomat (11/17)
					["qg"] = 4963,	-- Mikhail <Bartender>
					["sourceQuest"] = 1248,	-- The Missing Diplomat (10/17)
					["coord"] = { 10.6, 60.7, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1250, {	-- The Missing Diplomat (12/17)
					["qg"] = 4962,	-- Tapoke "Slim" Jahn
					["sourceQuest"] = 1249,		-- The Missing Diplomat (11/17)
					["coord"] = { 10.6, 60.3, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1264, {	-- The Missing Diplomat (13/17)
					["qg"] = 4963,	-- Mikhail <Bartender>
					["sourceQuest"] = 1250,	-- The Missing Diplomat (12/17)
					["coord"] = { 10.6, 60.7, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(284, {	-- The Search Continues
					["provider"] = { "o", 261 },	-- Damaged Crate
					["sourceQuest"] = 281,	-- Reclaiming Goods
					["coord"] = { 13.5, 41.4, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(631, {	-- The Thandol Span (1/3)
					["qg"] = 1075,	-- Rhag Garmason
					["coord"] = { 49.9, 18.2, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(632, {	-- The Thandol Span (2/3)
					["provider"] = { "o", 2652 },	-- Ebenezer Rustlocke's Corpse
					["sourceQuest"] = 631,	-- The Thandol Span (1/3)
					["coord"] = { 51.3, 8.0, WETLANDS },
					["cost"] = {
						{ "i", 4429, 1 },	-- 	Deepfury's Orders
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(633, {	-- The Thandol Span (3/3)
					["qg"] = 1075,	-- Rhag Garmason
					["sourceQuest"] = 632,	-- The Thandol Span (2/3)
					["coord"] = { 49.9, 18.2, WETLANDS },
					["maps"] = { ARATHI_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
					["g"] = {
						i(4504),	-- Dwarven Guard Cloak
						i(4505),	-- Swampland Trousers
					},
				}),
				q(288, {	-- The Third Fleet
					["qg"] = 1239,	-- First Mate Fitzsimmons
					["coord"] = { 10.9, 59.6, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2594, 1 },	-- Flagon of Dwarven Honeymead
					},
					["lvl"] = 22,
				}),
				q(276, {	-- Tramping Paws
					["qg"] = 1244,	-- Rethiel the Greenwarden
					["sourceQuest"] = 463,	-- The Greenwarden
					["coord"] = { 56.3, 40.4, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(299, {	-- Uncovering the Past
					["qg"] = 1077,	-- Prospector Whelgar
					["coord"] = { 38.8, 52.2, WETLANDS },
					["description"] = "The quest items spawn randomly in the dig site below.",
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 2658, 1 },	-- Ados Fragment
						{ "i", 2660, 1 },	-- Golm Fragment
						{ "i", 2659, 1 },	-- Modr Fragment
						{ "i", 2661, 1 },	-- Neru Fragment
					},
					["lvl"] = 25,
					["g"] = {
						i(2913),	-- Silk Mantle of Gamn
					},
				}),
				q(464, {	-- War Banners
					["qg"] = 2104,	-- Captain Stoutfist
					["sourceQuest"] = 473,	-- Report to Captain Stoutfist
					["coord"] = { 9.8, 57.4, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3337, 8 },	-- Dragonmaw War Banner
					},
					["lvl"] = 23,
				}),
				q(484, {	-- Young Crocolisk Skins
					["qg"] = 2094,	-- James Halloran
					["coord"] = { 8.5, 55.7, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3397, 4 },	-- Young Crocolisk Skin
					},
					["lvl"] = 18,
				}),
			}),
		}),
	}),
};