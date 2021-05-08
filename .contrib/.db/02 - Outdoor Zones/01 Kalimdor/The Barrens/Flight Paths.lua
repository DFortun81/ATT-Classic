---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(THE_BARRENS, {
			n(FLIGHT_PATHS, {
				fp(77, {	-- Camp Taurajo, The Barrens
					["cr"] = 10378,	-- Omusa Thunderhorn <Wind Rider Master>
					["coord"] = { 44.4, 59.0, THE_BARRENS },
					["races"] = HORDE_ONLY,
				}),
				fp(25, {	-- Crossroads, The Barrens
					["cr"] = 3615,	-- Devrak <Wind Rider Master>
					["coord"] = { 51.4, 30.2, THE_BARRENS },
					["races"] = HORDE_ONLY,
				}),
				fp(80, {	-- Ratchet, The Barrens
					["cr"] = 16227,	-- Bragok <Flight Master>
					["coord"] = { 63.0, 37.0, THE_BARRENS },
				}),
			}),
		}),
	}),
};