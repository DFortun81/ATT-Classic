--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------
_.Holidays = 
{
	n(-61, {	-- Feast of Winter Veil
		q(8744, { 	-- A Carefully Wrapped Present
			["isYearly"] = true,
			["races"] = ALLIANCE_ONLY,
			["lvl"] = 1,
			["groups"] = {
				i(21191, {  -- Carefully Wrapped Present
					i(21254),  -- Winter Veil Cookie
				}),
			},
		}),
		q(8803, { 	-- A Festive Gift
			["isYearly"] = true,
			["races"] = ALLIANCE_ONLY,
			["lvl"] = 10,
			["groups"] = {
				i(21363, {  -- Festive Gift
					i(21328),  -- Wand of Holiday Cheer
				}),
			},
		}),
		q(8768, { 	-- A Gaily Wrapped Present
			["isYearly"] = true,
			["races"] = ALLIANCE_ONLY,
			["lvl"] = 20,
			["groups"] = {
				i(21310, {  -- Gaily Wrapped Present
					i(21301),  -- Green Helper Box
					i(21309),  -- Snowman Kit
				}),
			},
		}),
		q(8767, { 	-- A Gently Shaken Gift
			["isYearly"] = true,
			["lvl"] = 1,
			["altQuests"] = {
				8788, 	-- A Gently Shaken Gift
			},
			["groups"] = {
				i(21270, {  -- Gently Shaken Gift
					i(21235),  -- Winter Veil Roast
				}),
			},
		}),
		q(8788, { 	-- A Gently Shaken Gift
			["isYearly"] = true,
			["lvl"] = 1,
			["altQuests"] = {
				8767, 	-- A Gently Shaken Gift
			},
			["groups"] = {
				i(21270, {  -- Gently Shaken Gift
					i(21235),  -- Winter Veil Roast
				}),
			},
		}),
		q(8769, { 	-- A Ticking Present
			["isYearly"] = true,
			["races"] = ALLIANCE_ONLY,
			["lvl"] = 40,
			["groups"] = {
				i(21327, {  -- Ticking Present
					i(17720),  -- Schematic: Snowmaster 9000
					i(21213),  -- Preserved Holly
					i(21325),  -- Mechanical Greench
				}),
			},
		}),
	}),
};
