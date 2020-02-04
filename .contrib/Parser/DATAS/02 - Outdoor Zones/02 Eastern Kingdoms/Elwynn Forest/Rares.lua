---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {	-- Eastern Kingdoms
		m(ELWYNN_FOREST, {	-- Elwynn Forest
			n(-16, {	-- Rares
				n(472, {	-- Fedfennel
					["coord"] = { 68.0, 40.6, ELWYNN_FOREST },
					["groups"] = {
						i(3233),	-- Gnoll Hide Sack
						i(5744),	-- Pale Skinner
					},
				}),
				n(99, {	-- Morgaine the Sly
					["coord"] = { 31.8, 65.6, ELWYNN_FOREST },
					["groups"] = {
						i(1917),	-- Jeweled Dagger
						i(6201),	-- Lithe Boots
						i(2091),	-- Magic Dust
					},
				}),
				n(471, {	-- Mother Fang
					["coord"] = { 61.8, 47.8, ELWYNN_FOREST },
					["groups"] = {
						i(3000),	-- Brood Mother Carapace
						i(6148),	-- Web-covered Boots
					},
				}),
				n(79, {	-- Narg the Taskmaster
					["coord"] = { 41.2, 78.8, ELWYNN_FOREST },
					["groups"] = {
						i(6147),	-- Ratty Old Belt
						i(1913),	-- Studded Blackjack
					},
				}),
				n(61, {	-- Thuros Lightfingers
					["coords"] = {
						{ 30.0, 59.6, ELWYNN_FOREST },
						{ 51.4, 60.8, ELWYNN_FOREST },
						{ 51.2, 85.0, ELWYNN_FOREST },
						{ 89.6, 78.6, ELWYNN_FOREST },
					},
					["groups"] = {
						i(6202),	-- Fingerless Gloves
						i(6203),	-- Thuggish Shield
					},
				}),
			}),
		}),
	}),
};