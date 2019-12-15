--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------
_.Holidays =
{
	n(-61, {	-- Feast of Winter Veil
		n(-297, {	-- Mailbox
			i(17724),	-- Pattern: Green Holiday Shirt
		}),
		n(-17, {	-- Quests
			q(7045, { -- A Smokywood Pastures' Thank You!
				["lvl"] = 30,
				["races"] = ALLIANCE_ONLY,
				["qg"] = 13433, -- Wulmort Jinglepocket <Smokywood Pastures>
				["g"] = {
					i(17726, {	-- Smokywood Pastures Special Gift
						i(17725),	-- Formula: Enchant Weapon - Winter's Might							
						i(17722),	-- Pattern: Gloves of the Greatfather
						i(17706),	-- Plans: Edge of Winter
						i(17709),	-- Recipe: Elixir of Frost Power
						i(17720),	-- Schematic: Snowmaster 9000
					}),
				},
			}),
			q(7022, { -- Greatfather Winter is Here!
				["lvl"] = 10,
				["races"] = ALLIANCE_ONLY,
				["qg"] = 13433, -- Wulmort Jinglepocket <Smokywood Pastures>
			}),
			q(8762, { -- Metzen the Reindeer
				["lvl"] = 40,
				["races"] = ALLIANCE_ONLY,
				["qg"] = 13433, -- Wulmort Jinglepocket <Smokywood Pastures>
				["g"] = {
					i(21213),  -- Preserved Holly
				},
			}),
			q(7042, { -- Stolen Winter Veil Treats
				["lvl"] = 30,
				["races"] = ALLIANCE_ONLY,
				["qg"] = 13433, -- Wulmort Jinglepocket <Smokywood Pastures>
			}),
			q(7063, { -- The Feast of Winter Veil
				["lvl"] = 10,
				["races"] = ALLIANCE_ONLY,
				["qg"] = 2916, -- Historian Karnik
			}),
			q(8763, { -- The Hero of the Day
				["lvl"] = 40,
				["races"] = ALLIANCE_ONLY,
				["qg"] = 13433, -- Wulmort Jinglepocket <Smokywood Pastures>
				["g"] = {
					i(21213),  -- Preserved Holly
				},
			}),
			q(7062, { -- The Reason for the Season
				["lvl"] = 10,
				["races"] = ALLIANCE_ONLY,
				["qg"] = 1365, -- Goli Krumn
			}),
			q(7025, { -- Treats for Greatfather Winter
				["lvl"] = 10,
				["races"] = ALLIANCE_ONLY,
				["qg"] = 13444, -- Greatfather Winter
				["g"] = {
					i(17727),  -- Smokywood Pastures Gift Pack
				},
			}),
			q(7043, { -- You're a Mean One...
				["lvl"] = 30,
				["races"] = ALLIANCE_ONLY,
				["qg"] = 13636, -- Strange Snowman
			}),
		}),
		n(-2, {	-- Vendors
			i(17201),	-- Recipe: Egg Nog
			i(17200),	-- Recipe: Gingerbread Cookie
		}),
	}),
};