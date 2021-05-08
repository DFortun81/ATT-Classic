---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

_.Zones =
{
	m(OUTLAND, {
		m(HELLFIRE_PENINSULA, {
			n(FLIGHT_PATHS, {
				fp(102, {	-- Falcon Watch, Hellfire Peninsula
					["coord"] = { 27.8, 60.0, HELLFIRE_PENINSULA },
					["races"] = HORDE_ONLY,
				}),
				fp(129, {	-- Hellfire Peninsula, The Dark Portal, Alliance
					["coord"] = { 87.4, 52.4, HELLFIRE_PENINSULA },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(130, {	-- Hellfire Peninsula, The Dark Portal, Horde
					["coord"] = { 87.4, 48.2, HELLFIRE_PENINSULA },
					["races"] = HORDE_ONLY,
				}),
				fp(100, {	-- Honor Hold, Hellfire Peninsula
					["coord"] = { 54.6, 62.4, HELLFIRE_PENINSULA },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(141, {	-- Spinebreaker Ridge, Hellfire Peninsula
					["coord"] = { 61.6, 81.2, HELLFIRE_PENINSULA },
					["races"] = HORDE_ONLY,
				}),
				fp(101, {	-- Temple of Telhamat, Hellfire Peninsula
					["coord"] = { 25.2, 37.2, HELLFIRE_PENINSULA },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(99, {	-- Thrallmar, Hellfire Peninsula
					["coord"] = { 56.2, 36.2, HELLFIRE_PENINSULA },
					["races"] = HORDE_ONLY,
				}),
			}),
		}),
	}),
};
