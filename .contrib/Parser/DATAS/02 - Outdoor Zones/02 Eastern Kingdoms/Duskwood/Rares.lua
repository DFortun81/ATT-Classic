---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(DUSKWOOD, {
			n(RARES, {
				n(771, {  -- Commander Felstrom
					["description"] = "Spawns in the Dawning Wood Catacombs",
					["coords"] = {
						{ 18.0, 38.0, DUSKWOOD },
					},
					["g"] = {
						i(4465),	-- Bonefist Gauntlets
						i(4464),	-- Trouncing Boots
					},
				}),
				n(507, {  -- Fenros
					["description"] = "Patrol between the coordinates",
					["coords"] = {
						{ 59.8, 26.8, DUSKWOOD },
						{ 63.8, 51.6, DUSKWOOD },
					},
					["g"] = {
						i(4474),	-- Ravenwood Bow
						i(6204),	-- Tribal Worg Helm
					},
				}),
				n(503, {  -- Lord Malathrom
					["description"] = "Spawns in the Dawning Wood Catacombs",
					["coords"] = {
						{ 25.6, 30.2, DUSKWOOD },
					},
					["g"] = {
						i(4462),	-- Cloak of Rot
						i(1187),	-- Spiked Collar
					},
				}),
				n(521, {  -- Lupos
					["description"] = "Spawns randomly in the north",
					["coords"] = {
						{ 20.0, 25.4, DUSKWOOD },
						{ 38.4, 26.2, DUSKWOOD },
						{ 60.2, 24.4, DUSKWOOD },
						{ 71.0, 24.4, DUSKWOOD },
					},
					["g"] = {
						i(3018),	-- Hide of Lupos
						i(3227),	-- Nightbane Staff
					},
				}),
				n(574, {  -- Naraxis
					["description"] = "Spawns randomly in the east",
					["coord"] = { 86.6, 49.6, DUSKWOOD },
					["g"] = {
						i(4448),	-- Husk of Naraxis
						i(4449),	-- Naraxis' Fang
					},
				}),
				n(534, {  -- Nefaru
					["description"] = "Spawns randomly in the south",
					["coord"] = { 63.6, 82.4, DUSKWOOD },
					["g"] = {
						i(4477),	-- Nefarious Buckler
						i(4476),	-- Beastwalker Robe
					},
				}),
			}),
		}),
	}),
};