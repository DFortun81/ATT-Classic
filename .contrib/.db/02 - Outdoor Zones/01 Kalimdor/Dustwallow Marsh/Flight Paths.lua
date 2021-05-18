---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(DUSTWALLOW_MARSH, {
			n(FLIGHT_PATHS, {
				fp(55, {	-- Brackenwall Village, Dustwallow Marsh
					["cr"] = 11899,	-- Shardi <Wind Rider Master>
					["coord"] = { 35.6, 31.8, DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
				}),
				fp(179, {	-- Mudsprocket, Dustwallow Marsh
					["cr"] = 23612,	-- Dyslix Silvergrub <Flight Master>
					["coord"] = { 42.8, 72.4, DUSTWALLOW_MARSH },
					["u"] = TBC_PHASE_ONE,
				}),
				fp(32, {	-- Theramore, Dustwallow Marsh
					["cr"] = 4321,	-- Baldruc <Gryphon Master>
					["coord"] = { 67.4, 51.2, DUSTWALLOW_MARSH },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
		}),
	}),
};