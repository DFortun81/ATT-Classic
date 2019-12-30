---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(SEARING_GORGE, {
			n(0, {	-- Zone Drops
				i(14476, {	-- Pattern: Cindercloth Gloves
					["cr"] = 5861,	-- Twilight Fire Guard
				}),
				i(14471, {	-- Pattern: Cindercloth Vest
					["cr"] = 5861,	-- Twilight Fire Guard
				}),
				i(21547, {	-- Recipe: Elixir of Greater Firepower
					["u"] = 3, -- Added in phase 5
					["crs"] = {
						5844,	-- Dark Iron Slaver
						5846,	-- Dark Iron Taskmaster
						8637,	-- Dark Iron Watchman
					},
				}),
			}),
		}),
	}),
};