---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(1415, {	-- Eastern Kingdoms
		m(1453, {	-- Stormwind City
			{
				["questID"] = 332,	-- Wine Shop Advert
				["sourceQuest"] = 61,	-- Shipment to Stormwind
			},
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
		}),
	}),
};