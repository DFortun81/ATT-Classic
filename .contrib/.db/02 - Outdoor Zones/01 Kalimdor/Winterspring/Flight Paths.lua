---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(WINTERSPRING, {
			n(FLIGHT_PATHS, {
				fp(52, {	-- Everlook, Winterspring
					["cr"] = 11138,	-- Maethrya <Hippogryph Master>
					["coord"] = { 62.2, 36.6, WINTERSPRING },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(53, {	-- Everlook, Winterspring
					["cr"] = 11139,	-- Yugrek <Wind Rider Master>
					["coord"] = { 60.4, 36.4, WINTERSPRING },
					["races"] = HORDE_ONLY,
				}),
			}),
		}),
	}),
};