---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(SILVERPINE_FOREST, {
			n(RARES, {
				n(1920, {	-- Dalaran Spellscribe
					["coord"] = { 63.4, 65.2, SILVERPINE_FOREST },
					["groups"] = {
						i(8491),	-- Cat Carrier (Black Tabby)
						i(4437),	-- Channeler's Staff
						i(4436),	-- Jewel-encrusted Sash
					},
				}),
				n(12431, {  -- Gorefang
					["coords"] = {
						{ 60.2, 10.0, SILVERPINE_FOREST },
						{ 47.6, 17.6, SILVERPINE_FOREST },
						{ 51.8, 19.6, SILVERPINE_FOREST },
						{ 48.0, 25.8, SILVERPINE_FOREST },
					},
				}),
				n(12433, {  -- Krethis Shadowspinner
					["coords"] = {
						{ 35.6, 9.0, SILVERPINE_FOREST },
						{ 37.2, 15.6, SILVERPINE_FOREST },
					},
				}),
				n(12432, {  -- Old Vicejaw
					["coords"] = {
						{ 54.6, 52.0, SILVERPINE_FOREST },
						{ 51.6, 63.8, SILVERPINE_FOREST },
						{ 56.2, 62.4, SILVERPINE_FOREST },
					},
				}),
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