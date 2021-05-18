---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(ASHENVALE, {
			n(FLIGHT_PATHS, {
				fp(28, {	-- Astranaar, Ashenvale
					["cr"] = 4267,	-- Daelyshia <Hippogryph Master>
					["coord"] = { 34.4, 48.0, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(167, {	-- Forest Song, Ashenvale
					["cr"] = 22935,	-- Suralais Farwind <Hippogryph Master>
					["coord"] = { 85.1, 43.5, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["u"] = TBC_PHASE_ONE,
				}),
				fp(61, {	-- Splintertree Post, Ashenvale
					["cr"] = 12616,	-- Vhulgra <Wind Rider Master>
					["coord"] = { 73.2, 61.6, ASHENVALE },
					["races"] = HORDE_ONLY,
				}),
				fp(58, {	-- Zoram'gar Outpost, Ashenvale
					["cr"] = 11901,	-- Andruk <Wind Rider Master>
					["coord"] = { 12.2, 33.8, ASHENVALE },
					["races"] = HORDE_ONLY,
				}),
			}),
		}),
	}),
};