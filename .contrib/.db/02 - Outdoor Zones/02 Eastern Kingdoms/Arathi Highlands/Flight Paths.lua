---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(ARATHI_HIGHLANDS, {
			n(FLIGHT_PATHS, {
				fp(17, {	-- Hammerfall, Arathi
					["cr"] = 2851,	-- Urda <Wind Rider Master>
					["coord"] = { 73.0, 32.6, ARATHI_HIGHLANDS },
					["races"] = HORDE_ONLY,
				}),
				fp(16, {	-- Refuge Pointe, Arathi
					["cr"] = 2835,	-- Cedrik Prose <Gryphon Master>
					["coord"] = { 45.8, 46.2, ARATHI_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
		}),
	}),
};