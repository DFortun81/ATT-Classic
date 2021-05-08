---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(BURNING_STEPPES, {
			n(FLIGHT_PATHS, {
				fp(70, {	-- Flame Crest, Burning Steppes
					["cr"] = 13177,	-- Vahgruk <Wind Rider Master>
					["coord"] = { 65.6, 24.2, BURNING_STEPPES },
					["races"] = HORDE_ONLY,
				}),
				fp(71, {	-- Morgan's Vigil, Burning Steppes
					["cr"] = 2299,	-- Borgus Stoutarm <Gryphon Master>
					["coord"] = { 84.4, 68.2, BURNING_STEPPES },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
		}),
	}),
};