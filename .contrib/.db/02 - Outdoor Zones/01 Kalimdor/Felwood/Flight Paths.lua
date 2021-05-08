---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(FELWOOD, {
			n(FLIGHT_PATHS, {
				fp(48, {	-- Bloodvenom Post, Felwood
					["cr"] = 11900,	-- Brakkar <Wind Rider Master>
					["coord"] = { 34.4, 53.8, FELWOOD },
					["races"] = HORDE_ONLY,
				}),
				fp(65, {	-- Talonbranch Glade, Felwood
					["cr"] = 12578,	-- Mishellena <Hippogryph Master>
					["coord"] = { 62.6, 24.2, FELWOOD },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
		}),
	}),
};