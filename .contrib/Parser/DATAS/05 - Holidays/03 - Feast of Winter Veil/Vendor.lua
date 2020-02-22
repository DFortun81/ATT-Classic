--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------
_.Holidays = 
{
	n(-61, {	-- Feast of Winter Veil
		["g"] = {
			n(VENDORS, {
				["groups"] = {
					n(13433, { -- Wulmort Jinglepocket <Smokywood Pastures>
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(17201),	-- Recipe: Egg Nog
							i(17200),	-- Recipe: Gingerbread Cookie
						},
					}),
				},
			}),
		},
	}),
};