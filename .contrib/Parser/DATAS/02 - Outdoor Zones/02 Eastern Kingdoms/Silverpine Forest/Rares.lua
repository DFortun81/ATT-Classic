---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {	-- Eastern Kingdoms
		m(SILVERPINE_FOREST, {	-- Silverpine Forest
			n(-16, {	-- Rares
				n(2283, {	-- Ravenclaw Regent
					["coord"] = { 57.6, 69.8, SILVERPINE_FOREST },
					["groups"] = {
						i(6628),	-- Raven's Claws
						i(5969),	-- Regent's Cloak
					},
				}),
				n(1944, {	-- Rot Hide Bruiser
					["coord"] = { 67.6, 24.4, SILVERPINE_FOREST },
					["groups"] = {
						i(4439),	-- Bruiser Club
						i(5975),	-- Ruffian Belt
					},
				}),
				n(1948, {	-- Snarlmane
					["coord"] = { 66.2, 25.0, SILVERPINE_FOREST },
					["groups"] = {
						i(4445),	-- Flesh Carver
					},
				}),
			}),
		}),
	}),
};