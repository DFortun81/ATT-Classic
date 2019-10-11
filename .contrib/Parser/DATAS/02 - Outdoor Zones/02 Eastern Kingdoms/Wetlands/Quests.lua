---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {	-- Eastern Kingdoms
		m(WETLANDS, {	-- Wetlands
			n(-17, {	-- Quests
				q(304, {	-- A Grim Task
					["lvl"] = 26,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1071,	-- Longbraid the Grim
					["g"] = {
						i(2916),	-- Gold Lion Shield
						i(2917),	-- Tranquil Ring
					},
				}),
				q(471, {	-- Apprentice's Duties
					["lvl"] = 18,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2094,	-- James Halloran
					["sourceQuest"] = 484,	-- Young Crocolisk Skins
					["g"] = {
						i(2545),	-- Malleable Chain Leggings
						i(3561),	-- Resilient Poncho
						i(3681),	-- Recipe: Crocolisk Gumbo
					},
					["coord"] = { 8.5, 55.7, WETLANDS },
				}),
				q(275, {	-- Blisters on The Land
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1244,	-- Rethiel the Greenwarden
					["sourceQuest"] = 277,	-- Fire Taboo
					["g"] = {
						i(3558),	-- Fen Keeper Robe
						i(1273),	-- Forest Chain
						i(2263),	-- Phytoblade
					},
					["coord"] = { 56.3, 40.4, WETLANDS },
				}),
				q(279, {	-- Claws from the Deep
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1242,	-- Karl Boran
					["coord"] = { 8.3, 58.5, WETLANDS },
				}),
				q(293, {	-- Cleansing the Eye
					["lvl"] = 22,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1217,	-- Glorin Steelbrow
					["sourceQuest"] = 292,	-- The Eye of Paleth
					["g"] = {
						i(2943),	-- Eye of Paleth
					},
					["coord"] = { 10.6, 60.5, WETLANDS },
					["description"] = "Glorin Steelbrow is located inside the Deepwater Tavern on the first floor.",
				}),
				q(469, {	-- Daily Delivery
					["lvl"] = 18,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2093,	-- Einar Stonegrip
					["coord"] = { 49.8, 39.4, WETLANDS },
				}),
				q(474, {	-- Defeat Nek'rosh
					["lvl"] = 23,
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 465,	-- Nek'rosh's Gambit
					["provider"] = { "o", 1609 },	-- Dragonmaw Catapult
					["g"] = {
						i(3209),	-- Ancient War Sword
						i(6194),	-- Barreling Reaper
					},
				}),
				q(470, {	-- Digging Through the Ooze
					["lvl"] = 19,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2111,	-- Sida
					["g"] = {
						i(3352),	-- Ooze-covered Bag
					},
					["coord"] = { 11.8, 58.0, WETLANDS },
				}),
				q(472, {	-- Fall of Dun Modr
					["lvl"] = 25,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2097,	-- Harlo Barnaby
					["coord"] = { 10.8, 55.9, WETLANDS },
				}),
				q(1132, {	-- Fiora Longears
					["lvl"] = 18,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 4455,	-- Red Jack Flint
					["coord"] = { 9.9, 57.9, WETLANDS },
					["description"] = "Red Jack Flint is located inside Menethil Keep on the first floor.",
				}),
				q(277, {	-- Fire Taboo
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1244,	-- Rethiel the Greenwarden
					["sourceQuest"] = 276,	-- Tramping Paws
					["g"] = {
						i(4606),	-- Spongy Morel
					},
					["coord"] = { 56.3, 40.4, WETLANDS },
				}),
				q(305, {	-- In Search of The Excavation Team (1/2)
					["lvl"] = 21,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2096,	-- Tarrel Rockweaver
					["coord"] = { 11.5, 52.2, WETLANDS },
				}),
				q(306, {	-- In Search of The Excavation Team (2/2)
					["lvl"] = 21,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1076,	-- Merrin Rockweaver
					["sourceQuest"] = 305,	-- In Search of The Excavation Team (1/2)
				}),
				q(1302, {	-- James Hyal
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 5082,	-- Vincent Hyal
					["sourceQuest"] = 1301,	-- James Hyal
					["altQuests"] = { 1282 },	-- They Call Him Smiling Jim
					["coord"] = { 10.8, 60.4, WETLANDS },
					["description"] = "Vincent Hyal is located inside the Deepwater Tavern on the first floor.",
				}),
				q(290, {	-- Lifting the Curse
					["lvl"] = 22,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1239,	-- First Mate Fitzsimmons
					["sourceQuest"] = 289,	-- The Cursed Crew
					["coord"] = { 10.9, 59.6, WETLANDS },
				}),
				q(647, {	-- MacKreel's Moonshine
					["lvl"] = 28,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2696,	-- Foggy MacKreel
				}),
				q(465, {	-- Nek'rosh's Gambit
					["lvl"] = 23,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2104,	-- Captain Stoutfist
					["sourceQuest"] = 464,	-- War Banners
				}),
				q(294, {	-- Ormer's Revenge (1/3)
					["lvl"] = 22,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1078,	-- Ormer Ironbraid
				}),
				q(295, {	-- Ormer's Revenge (2/3)
					["lvl"] = 22,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1078,	-- Ormer Ironbraid
					["sourceQuest"] = 294,	-- Ormer's Revenge (1/3)
				}),
				q(296, {	-- Ormer's Revenge (3/3)
					["lvl"] = 22,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1078,	-- Ormer Ironbraid
					["sourceQuest"] = 295,	-- Ormer's Revenge (2/3)
					["g"] = {
						i(3493),	-- Raptor's End
						i(3566),	-- Raptorbane Armor
						i(5246),	-- Excavation Rod
						i(3682),	-- Recipe: Curiously Tasty Omelet
					},
				}),
				q(634, {	-- Plea To The Alliance
					["lvl"] = 28,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1075,	-- Rhag Garmason
					["sourceQuest"] = 633,	-- The Thandol Span (3/3)
				}),
				q(281, {	-- Reclaiming Goods
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1242,	-- Karl Boran
					["sourceQuest"] = 279,	-- Claws from the Deep
					["g"] = {
						i(929),	-- Healing Potion
					},
				}),
				q(473, {	-- Report to Captain Stoutfist
					["lvl"] = 23,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2086,	-- Valstag Ironjaw
					["isBreadcrumb"] = true,
					["coord"] = { 10.1, 56.9, WETLANDS },
					["description"] = "Valstag Ironjaw is located in the entryway to Menethil Keep.",
				}),
				q(286, {	-- Return the Statuette
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 285,	-- Search More Hovels
					["provider"] = { "o", 259 },	-- Half-buried Barrel
					["g"] = {
						i(2950),	-- Icicle Rod
						i(2949),	-- Mariner Boots
					},
				}),
				q(285, {	-- Search More Hovels
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 284,	-- The Search Continues
					["provider"] = { "o", 142151 },	-- Sealed Barrel
				}),
				q(637, {	-- Sully Balloo's Letter
					["lvl"] = 25,
					["races"] = ALLIANCE_ONLY,
					["provider"] = { "i", 4432 },	-- Sully Balloo's Letter
				}),
				q(943, {	-- The Absent Minded Prospector
					["lvl"] = 15,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2911,	-- Archaeologist Flagongut
					["g"] = {
						i(5627),	-- Relic Blade
						i(5626),	-- Skullchipper
					},
					["sourceQuest"] = 942, -- The Absent Minded Prospector(Darnassus)
					["coord"] = { 10.8, 60.4, WETLANDS },
					["description"] = "Archaeologist Flagongut is located in the Deepwater Tavern on the 2nd floor.",
				}),
				q(289, {	-- The Cursed Crew
					["lvl"] = 22,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1239,	-- First Mate Fitzsimmons
					["sourceQuest"] = 288,	-- The Third Fleet
					["coord"] = { 10.9, 59.6, WETLANDS },
				}),
				q(303, {	-- The Dark Iron War
					["lvl"] = 25,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1074,	-- Motley Garmason
				}),
				q(292, {	-- The Eye of Paleth
					["lvl"] = 22,
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 290,	-- Lifting the Curse
					["provider"] = { "o", 112948 },	-- Intrepid's Locked Strongbox
				}),
				q(463, {	-- The Greenwarden
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1239,	-- First Mate Fitzsimmons
					["coord"] = { 10.9, 59.6, WETLANDS },
				}),
				q(284, {	-- The Search Continues
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["provider"] = { "o", 261 },	-- Damaged Crate
					["sourceQuest"] = 281,	-- Reclaiming Goods
					["g"] = {
						i(422),	-- Dwarven Mild
					},
				}),
				q(631, {	-- The Thandol Span (1/3)
					["lvl"] = 28,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1075,	-- Rhag Garmason
				}),
				q(632, {	-- The Thandol Span (2/3)
					["lvl"] = 28,
					["races"] = ALLIANCE_ONLY,
					["provider"] = { "o", 2652 },	-- Ebenezer Rustlocke's Corpse
					["sourceQuest"] = 631,	-- The Thandol Span (1/3)
				}),
				q(633, {	-- The Thandol Span (3/3)
					["lvl"] = 28,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1075,	-- Rhag Garmason
					["sourceQuest"] = 632,	-- The Thandol Span (2/3)
					["g"] = {
						i(4504),	-- Dwarven Guard Cloak
						i(4505),	-- Swampland Trousers
					},
				}),
				q(288, {	-- The Third Fleet
					["lvl"] = 22,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1239,	-- First Mate Fitzsimmons
					["coord"] = { 10.9, 59.6, WETLANDS },
				}),
				q(276, {	-- Tramping Paws
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1244,	-- Rethiel the Greenwarden
					["sourceQuest"] = 463,	-- The Greenwarden
					["coord"] = { 56.3, 40.4, WETLANDS },
				}),
				q(299, {	-- Uncovering the Past
					["lvl"] = 25,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1077,	-- Prospector Whelgar
					["g"] = {
						i(2913),	-- Silk Mantle of Gamn
					},
				}),
				q(464, {	-- War Banners
					["lvl"] = 23,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2104,	-- Captain Stoutfist
				}),
				q(484, {	-- Young Crocolisk Skins
					["lvl"] = 18,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2094,	-- James Halloran
					["coord"] = { 8.5, 55.7, WETLANDS },
				}),
			}),
		}),
	}),
};