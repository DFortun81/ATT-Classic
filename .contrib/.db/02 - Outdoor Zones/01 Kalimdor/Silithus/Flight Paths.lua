---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(SILITHUS, {
			n(FLIGHT_PATHS, {
				fp(73, {	-- Cenarion Hold, Silithus
					["cr"] = 15177,	-- Cloud Skydancer <Hippogryph Master>
					["coord"] = { 50.6, 34.4, SILITHUS },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(72, {	-- Cenarion Hold, Silithus
					["cr"] = 15178,	-- Runk Windtamer <Wind Rider Master>
					["coord"] = { 48.8, 36.6, SILITHUS },
					["races"] = HORDE_ONLY,
				}),
			}),
		}),
	}),
};