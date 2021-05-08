---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(DESOLACE, {
			n(FLIGHT_PATHS, {
				fp(37, {	-- Nijel's Point, Desolace
					["cr"] = 6706,	-- Baritanas Skyriver <Hippogryph Master>
					["coord"] = { 64.6, 10.4, DESOLACE },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(38, {	-- Shadowprey Village, Desolace
					["cr"] = 6726,	-- Thalon <Wind Rider Master>
					["coord"] = { 21.6, 74.0, DESOLACE },
					["races"] = HORDE_ONLY,
				}),
			}),
		}),
	}),
};