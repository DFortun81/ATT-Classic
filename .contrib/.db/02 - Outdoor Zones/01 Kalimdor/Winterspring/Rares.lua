---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(WINTERSPRING, {
			n(RARES, {
				n(10202, {	-- Azurous
					["coords"] = {
						{ 57.2, 45.6, WINTERSPRING },
						{ 61.8, 40.4, WINTERSPRING },
						{ 63.0, 40.8, WINTERSPRING },
						{ 64.8, 43.0, WINTERSPRING },
						{ 66.4, 45.6, WINTERSPRING },
						{ 66.6, 53.4, WINTERSPRING },
					},
				}),
				n(10196, {	-- General Colbatann
					["coords"] = {
						{ 54.6, 51.6, WINTERSPRING },
						{ 57.6, 50.0, WINTERSPRING },
						{ 59.6, 49.2, WINTERSPRING },
						{ 61.2, 49.4, WINTERSPRING },
					},
				}),
				n(10199, {	-- Grizzle Snowpaw
					["coords"] = {
						{ 67.0, 35.2, WINTERSPRING },
						{ 67.2, 37.6, WINTERSPRING },
						{ 68.6, 36.0, WINTERSPRING },
						{ 69.2, 38.6, WINTERSPRING },
					},
				}),
				n(10198, {	-- Kashoch the Reaver
					["coords"] = {
						{ 62.0, 69.2, WINTERSPRING },
						{ 63.6, 69.8, WINTERSPRING },
					},
				}),
				n(10201, {	-- Lady Hederine
					["coords"] = {
						{ 65.0, 80.2, WINTERSPRING },
						{ 51.6, 84.4, WINTERSPRING },
						{ 54.6, 87.4, WINTERSPRING },
					},
				}),
				n(10197, {	-- Mezzir the Howler
					["coords"] = {
						{ 30.6, 38.4, WINTERSPRING },
						{ 30.6, 46.0, WINTERSPRING },
						{ 39.8, 36.4, WINTERSPRING },
						{ 45.0, 38.0, WINTERSPRING },
					},
				}),
				n(14457, { 	-- Princess Tempestria
					["description"] = "This is only available during an Elemental Invasion.",
					["coord"] = { 54.6, 42.6, WINTERSPRING },
					["groups"] = {
						i(18679),	-- Frigid Ring
						i(18678),	-- Tempestria's Frozen Necklace
						i(21548),	-- Pattern: Stormshroud Gloves
						i(7091),	-- Pattern: Truefaith Gloves
						un(PHASE_THREE, i(19268)),	-- Ace of Elementals
					},
				}),
				n(10200, {	-- Rak'shiri
					["coords"] = {
						{ 50.0, 8.0, WINTERSPRING },
						{ 50.0, 11.2, WINTERSPRING },
						{ 50.4, 20.4, WINTERSPRING },
						{ 51.8, 17.2, WINTERSPRING },
						{ 55.6, 14.0, WINTERSPRING },
					},
				}),
			}),
		}),
	}),
};