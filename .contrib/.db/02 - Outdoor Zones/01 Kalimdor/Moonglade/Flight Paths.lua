---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(MOONGLADE, {
			n(FLIGHT_PATHS, {
				fp(49, {	-- Moonglade
					["cr"] = 10897,	-- Sindrayl <Hippogryph Master>
					["coord"] = { 48.0, 67.2, MOONGLADE },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(69, {	-- Moonglade
					["cr"] = 12740,	-- Faustron <Wind Rider Master>
					["coord"] = { 32.2, 66.6, MOONGLADE },
					["races"] = HORDE_ONLY,
				}),
				fp(63, {	-- Nighthaven, Moonglade
					["cr"] = 11800,	-- Silva Fil'naveth <Darnassus Flight Master>
					["coord"] = { 44.2, 45.2, MOONGLADE },
					["classes"] = { DRUID },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(62, {	-- Nighthaven, Moonglade
					["cr"] = 11798,	-- Bunthen Plainswind <Thunder Bluff Flight Master>
					["coord"] = { 44.4, 45.6, MOONGLADE },
					["classes"] = { DRUID },
					["races"] = HORDE_ONLY,
				}),
			}),
		}),
	}),
};