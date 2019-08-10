---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(1415, {	-- Eastern Kingdoms
		m(1429, {	-- Elwynn Forest
			-- NORTHSHIRE ABBEY
			q(7),	-- Kobold Camp Cleanup
			q(3100),	-- Simple Letter
			q(33),	-- Wolves Across the Border
			q(15),	-- Investigate Echo Ridge
			q(21),	-- Skirmish in Echo Ridge
			q(18, {	-- Brotherhood of Thieves
				i(2224),	-- Militia Dagger
				i(5580),	-- Militia Hammer
				i(1161),	-- Militia Shortsword
				i(5579),	-- Militia Warhammer
				i(1159),	-- Militia Quarterstaff
			}),
			{
				["questID"] = 3903,	-- Milly Osworth
				["sourceQuest"] = 18,	-- Brotherhood of Thieves
			},
			{
				["questID"] = 6,	-- Bounty on Garrick Padfoot
				["sourceQuest"] = 18,	-- Brotherhood of Thieves
			},
			{
				["questID"] = 3904,	-- Milly's Harvest
				["sourceQuest"] = 3903,	-- Milly Osworth
			},
			{
				["questID"] = 3905,	-- Grape Manifest
				["sourceQuest"] = 3904,	-- Milly's Harvest
			},
			{
				["questID"] = 54,	-- Report to Goldshire
			},
			{
				["questID"] = 2158,	-- Rest and Relaxation
			},
			-- GOLDSHIRE
			{
				["questID"] = 47,	-- Gold Dust Exchange
				["sourceQuest"] = 54,	-- Report to Goldshire
			},
			{
				["questID"] = 60,	-- Kobold Candles
				["sourceQuest"] = 54,	-- Report to Goldshire
			},
			{
				["questID"] = 62,	-- The Fargodeep Mine
				["sourceQuest"] = 54,	-- Report to Goldshire
			},
			{
				["questID"] = 76,	-- The Jasperlode Mine
				["sourceQuest"] = 62,	-- The Fargodeep Mine
			},
			{
				["questID"] = 239,	-- Westbrook Garrison Needs Help!
				["sourceQuest"] = 76,	-- The Jasperlode Mine
				["qg"] = 240,	-- Marshal Dughan
			},
			{
				["questID"] = 11,	-- Riperpaw Gnoll Bounty
				["sourceQuest"] = 239,	-- Westbrook Garrison Needs Help!
				["qg"] = 963,	-- Deputy Rainer
			},
			{
				["questID"] = 176,	-- Wanted: "Hogger"
				["sourceQuest"] = 239,	-- Westbrook Garrison Needs Help!
				-- ["objectID"] = ,	-- Wanted Poster
				["groups"] = {
					i(6084),	-- Stormwind Guard's Leggings
				},
			},
			{
				["questID"] = 61,	-- Shipment to Stormwind
				["sourceQuest"] = 47,	-- Gold Dust Exchange
			},
			{
				["questID"] = 40,	-- A Fishy Peril
				["lvl"] = 7,
			},
			{
				["questID"] = 35,	-- Further Concerns
				["sourceQuest"] = 40,	-- A Fishy Peril
				["lvl"] = 7,
			},
			{
				["questID"] = 52,	-- Protect the Frontier
			},
			{
				["questID"] = 37,	-- Find the Lost Guards
				["sourceQuest"] = 35,	-- Further Concerns
				["lvl"] = 7,
			},
			{
				["questID"] = 45,	-- Discover Rolf's Fate
				["sourceQuest"] = 37,	-- Find the Lost Guards
				["lvl"] = 7,
			},
			{
				["questID"] = 71,	-- Report to Thomas
				["sourceQuest"] = 45,	-- Discover Rolf's Fate
				["lvl"] = 7,
			},
			{
				["questID"] = 39,	-- Deliver Thomas' Report
				["sourceQuest"] = 71,	-- Report to Thomas
				["lvl"] = 7,
			},
			{
				["questID"] = 5545,	-- A Bundle of Trouble
			},
			{
				["questID"] = 83,	-- Red Linen Goods
			},
			{
				["questID"] = 59,	-- Cloth and Leather Armor
				["sourceQuest"] = 83,	-- Red Linen Goods
				["qg"] = 240,	-- Marshal Dughan
			},
			{
				["itemID"] = 1307,	-- Gold Pickup Schedule
				["groups"] = {
					{
						["questID"] = 123,	-- The Collector
					},
				},
			},
			{
				["questID"] = 109,	-- Report to Gryan Stoutmantle
				["lvl"] = 9,
			},
			{
				["questID"] = 147,	-- Manhunt
				["sourceQuest"] = 123,	-- The Collector
			},
			{
				["questID"] = 1097,	-- Elmor's Task
			},
			{
				["questID"] = 46,	-- Bounty on Murlocs
				["qg"] = 261,	-- Guard Thomas
			},
		}),
	}),
};