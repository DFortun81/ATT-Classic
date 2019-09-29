---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {	-- Eastern Kingdoms
		m(STORMWIND_CITY, {	-- Stormwind City
			n(-17, {	-- Quests
				q(6184, {	-- Flint Shadowmore
					["lvl"] = 56,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 332,	-- Master Mathias Shaw <Leader of SI:7>
					["sourceQuest"] = 6183,	-- Honor the Dead
				}),
				q(333, {	-- Harlan Needs a Resupply
					["races"] = ALLIANCE_ONLY,
				}),
				q(6183, {	-- Honor the Dead
					["lvl"] = 56,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 332,	-- Master Mathias Shaw <Leader of SI:7>
					["sourceQuest"] = 6182,	-- The First and the Last
				}),
				{
					["questID"] = 399,	-- Humble Beginnings
					["qg"] = 1646,	-- Baros Alexston <City Architect>
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["coords"] = {
							{ 36.0, 54.0, Westfall },
					},
				},
				q(1448, {	-- In Search of The Temple
					["lvl"] = 38,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 5384,	-- Brohann Caskbelly <Explorers' League>
					["coord"] = { 70.0, 55.0, SWAMP_OF_SORROWS },
					["maps"] = { SWAMP_OF_SORROWS },
				}),
				q(4766, {	-- Mayara Brightwing
					["lvl"] = 57,
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["qg"] = 2285,	-- Count Remington Ridgewell
				}),
				{
					["questID"] = 1861,	-- Mirror Lake
					["qg"] = 5497,	-- Jennea Cannon <Mage Trainer>
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["classes"] = {8},	-- Mage
					["altQuests"] = {
						1880,	-- Mage-tastic Gizmonitor
					},
					["groups"] = {
						i(7508),	-- Ley Orb
						i(9513),	-- Ley Staff
					},
				},
				q(6187, {	-- Order Must Be Restored
					["lvl"] = 56,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1748,	-- Highlord Bolvar Fordragon
					["sourceQuest"] = 6186,	-- The Blightcaller Cometh
					["g"] = {
						i(16996),	-- Gorewood Bow
						i(16997),	-- Stormrager
						i(16998),	-- Sacred Protector
					},
				}),
				q(334, {	-- Package for Thurman
					["qg"] = 1428,	-- Rema Schneider
					["sourceQuest"] = 333,	-- Harlan Needs a Resupply
					["races"] = ALLIANCE_ONLY,
				}),
				{
					["questID"] = 343,	-- Speaking of Fortitude
					["qg"] = 1444,	-- Brother Kristoff
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
				},
				q(353, {	-- Stormpike's Delivery
					["qg"] = 1416,	-- Grimand Elmore
					["sourceQuest"] = 1097,	-- Elmore's Task
					["races"] = ALLIANCE_ONLY,
				}),
				q(6182, {	-- The First and the Last
					["lvl"] = 56,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1748,	-- Highlord Bolvar Fordragon
				}),
				q(6722, {	-- The Hunter's Path
					["qg"] = 5515,	-- Einris Brightspear <Hunter Trainer>
					["coord"] = { 61.58, 15.19, STORMWIND_CITY },
					["races"] = { 4 },	-- Night Elf Only
					["classes"] = { 3 },	-- Hunter Only!
					["isBreadcrumb"] = true,
					["altQuests"] = {
						6071,	-- The Hunter's Path
						6072,	-- The Hunter's Path
						6073,	-- The Hunter's Path
						6721,	-- The Hunter's Path
						-- 6722,	-- The Hunter's Path
					},
					["lvl"] = 10,
				}),
				q(543, {	-- The Perenolde Tiara
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2285,	-- Count Remington Ridgewell
				}),
				q(1449, {	-- To The Hinterlands
					["lvl"] = 38,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 5384,	-- Brohann Caskbelly <Explorers' League>
				}),
				q(332, {	-- Wine Shop Advert
					["sourceQuest"] = 61,	-- Shipment to Stormwind
					["races"] = ALLIANCE_ONLY,
				}),
			}),
		}),
	}),
};