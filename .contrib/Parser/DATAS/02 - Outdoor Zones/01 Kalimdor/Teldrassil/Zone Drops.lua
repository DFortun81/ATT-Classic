---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(TELDRASSIL, {
			n(ZONEDROPS, {
				i(5204, {	-- Bloodfeather Belt
					["questID"] = 937,	-- The Enchanted Glade
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						2019,	-- Bloodfeather Fury
						2015,	-- Bloodfeather Harpy
						2021,	-- Bloodfeather Matriarch
						2017,	-- Bloodfeather Rogue
						2018,	-- Bloodfeather Sorceress
						2020,	-- Bloodfeather Wind Witch
						14431,	-- Fury Shelda
					},
				}),
				i(5206, {	-- Bogling Root
					["cr"] = 3569,	-- Bogling
				}),
				i(7094, {	-- Driftwood Branch
					["cr"] = 2030,	-- Elder Timberling
				}),
				i(3409, {	-- Nightsaber Fang
					["questID"] = 488,	-- Zenn's Bidding
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						14430,	-- Duskstalker
						2042,	-- Nightsaber
						2043,	-- Nightsaber Stalker
					},
				}),
				i(5168, {	-- Timberling Seed
					["questID"] = 918,	-- Timberling Seeds
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						2030,	-- Elder Timberling
						2166,	-- Oakenscowl
						2022,	-- Timberling
						2025,	-- Timberling Bark Ripper
						2027,	-- Timberling Trampler
					},
				}),
			}),
		}),
	}),
};