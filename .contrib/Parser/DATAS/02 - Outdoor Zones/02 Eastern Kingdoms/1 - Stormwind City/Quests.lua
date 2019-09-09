---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {	-- Eastern Kingdoms
		m(STORMWIND_CITY, {	-- Stormwind City
			n(-17, {	-- Quests
				{
					["questID"] = 333,	-- Harlan Needs a Resupply
				},
				{
					["questID"] = 334,	-- Package for Thurman
					["qg"] = 1428,	-- Rema Schneider
					["sourceQuest"] = 333,	-- Harlan Needs a Resupply
				},
				{
					["questID"] = 353,	-- Stormpike's Delivery
					["qg"] = 1416,	-- Grimand Elmore
					["sourceQuest"] = 1097,	-- Elmore's Task
				},
				{
					["questID"] = 332,	-- Wine Shop Advert
					["sourceQuest"] = 61,	-- Shipment to Stormwind
				},
				q(1448, {	-- In Search of The Temple
					["lvl"] = 38,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 5384,	-- Brohann Caskbelly <Explorers' League>
					["coord"] = { 70.0, 55.0, SWAMP_OF_SORROWS },
					["maps"] = { SWAMP_OF_SORROWS },
				}),
				q(6403, {	-- The Great Masquerade
					["lvl"] = 50,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 12580,	-- Reginald Windsor
				}),
				q(6501, {	-- The Dragon's Eye
					["lvl"] = 50,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1748,	-- Highlord Bolvar Fordragon
				}),
				q(1449, {	-- To The Hinterlands
					["lvl"] = 38,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 5384,	-- Brohann Caskbelly <Explorers' League>
				}),
				q(1475, {	-- Into The Temple of Atal'Hakkar
					["lvl"] = 38,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 5384,	-- Brohann Caskbelly <Explorers' League>
					["g"] = {
						i(1490),	-- Guardian Talisman
					},
				}),
			}),
		}),
	}),
};