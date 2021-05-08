---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(STONETALON_MOUNTAINS, {
			n(FLIGHT_PATHS, {
				fp(33, {	-- Stonetalon Peak, Stonetalon Mountains
					["cr"] = 4407,	-- Teloren <Hippogryph Master>
					["coord"] = { 36.4, 7.2, STONETALON_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(29, {	-- Sun Rock Retreat, Stonetalon Mountains
					["cr"] = 4312,	-- Tharm <Wind Rider Master>
					["coord"] = { 45.2, 59.8, STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
				}),
			}),
		}),
	}),
};