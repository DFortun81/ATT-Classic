---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(AZSHARA, {
			n(FLIGHT_PATHS, {
				fp(64, {	-- Talrendis Point, Azshara
					["cr"] = 12577,	-- Jarrodenus <Hippogryph Master>
					["coord"] = { 11.8, 77.6, AZSHARA },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(44, {	-- Valormok, Azshara
					["cr"] = 8610,	-- Kroum <Wind Rider Master>
					["coord"] = { 22.0, 49.6, AZSHARA },
					["races"] = HORDE_ONLY,
				}),
			}),
		}),
	}),
};