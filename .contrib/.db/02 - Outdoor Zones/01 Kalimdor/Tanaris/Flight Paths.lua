---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(TANARIS, {
			n(FLIGHT_PATHS, {
				fp(39, {	-- Gadgetzan, Tanaris
					["cr"] = 7823,	-- Bera Stonehammer <Gryphon Master>
					["coord"] = { 51.0, 29.2, TANARIS },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(40, {	-- Gadgetzan, Tanaris
					["cr"] = 7824,	-- Bulkrek Ragefist <Wind Rider Master>
					["coord"] = { 51.6, 26.6, TANARIS },
					["races"] = HORDE_ONLY,
				}),
			}),
		}),
	}),
};