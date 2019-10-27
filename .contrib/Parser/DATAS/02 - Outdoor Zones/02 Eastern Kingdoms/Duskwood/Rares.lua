---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {	-- Eastern Kingdoms
		m(DUSKWOOD, {	-- Duskwood
			n(-16, {	-- Rares
				n(507, {  -- Fenros
					["description"] = "Patrol between the coordinates",
					["coords"] = {
						{ 59.8, 26.8, Duskwood },
						{ 63.8, 51.6, Duskwood },
					},
					["g"] = {
						i(4474),	-- Ravenwood Bow
						i(6204),	-- Tribal Worg Helm
					},
				}),
				n(521, {  -- Lupos
					["description"] = "Spawns randomly in the north",
					["coords"] = {
						{ 20.0, 25.4, Duskwood },
						{ 38.4, 26.2, Duskwood },
						{ 60.2, 24.4, Duskwood },
						{ 71.0, 24.4, Duskwood },
					},
					["g"] = {
						i(3018),	-- Hide of Lupos
						i(3227),	-- Nightbane Staff
						i(6382),	-- Forest Leather Belt
						i(6577),	-- Defender Gauntlets
						i(14175),	-- Buccaneer's Vest
					},
				}),
				n(771, {  -- Commander Felstrom
					["description"] = "Spawns in the Dawning Wood Catacombs",
					["coords"] = {
						{ 18.0, 38.0, Duskwood },
					},
					["g"] = {
						i(4464),	-- Trouncing Boots
						i(4465),	-- Bonefist Gauntlets
					},
				}),
			}),
		}),
	}),
};