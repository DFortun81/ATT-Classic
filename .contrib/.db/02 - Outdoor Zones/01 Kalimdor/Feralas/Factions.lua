---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(FERALAS, {
			n(FLIGHT_PATHS, {
				fp(42, {	-- Camp Mojache, Feralas
					["cr"] = 8020,	-- Shyn <Hippogryph Master>
					["coord"] = { 75.4, 44.2, FERALAS },
					["races"] = HORDE_ONLY,
				}),
				fp(41, {	-- Feathermoon, Feralas
					["cr"] = 8019,	-- Fyldren Moonfeather <Hippogryph Master>
					["coord"] = { 30.2, 43.2, FERALAS },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(31, {	-- Thalanaar, Feralas
					["cr"] = 4319,	-- Thyssiana <Hippogryph Master>
					["coord"] = { 89.4, 45.8, FERALAS },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
		}),
	}),
};