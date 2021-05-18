---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(STRANGLETHORN_VALE, {
			n(FLIGHT_PATHS, {
				fp(18, {	-- Booty Bay, Stranglethorn
					["cr"] = 2858,	-- Gringer <Wind Rider Master>
					["coord"] = { 26.8, 77.0, STRANGLETHORN_VALE },
					["races"] = HORDE_ONLY,
				}),
				fp(19, {	-- Booty Bay, Stranglethorn
					["cr"] = 2859,	-- Gyll <Gryphon Master>
					["coord"] = { 27.4, 77.6, STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(20, {	-- Grom'gol, Stranglethorn
					["cr"] = 1387,	-- Thysta <Wind Rider Master>
					["coord"] = { 32.6, 29.2, STRANGLETHORN_VALE },
					["races"] = HORDE_ONLY,
				}),
				fp(195, {	-- Rebel Camp, Stranglethorn
					["cr"] = 24366,	-- Nizzle <Gryphon Master>
					["coord"] = { 38.2, 4.0, STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["u"] = TBC_PHASE_ONE,
				}),
			}),
		}),
	}),
};