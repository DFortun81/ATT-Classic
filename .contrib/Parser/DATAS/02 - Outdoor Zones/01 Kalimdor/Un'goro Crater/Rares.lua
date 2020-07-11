---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(UNGORO_CRATER, {
			n(RARES, {
				n(14461, { 	-- Baron Charr
					["description"] = "This is only available during an Elemental Invasion.",
					["coords"] = {
						{ 44.6, 46.0, UNGORO_CRATER },
						{ 48.2, 41.2, UNGORO_CRATER },
						{ 53.2, 41.8, UNGORO_CRATER },
						{ 56.6, 42.8, UNGORO_CRATER },
						{ 56.6, 48.2, UNGORO_CRATER },
						{ 55.6, 57.4, UNGORO_CRATER },
						{ 51.6, 57.6, UNGORO_CRATER },
						{ 45.4, 54.8, UNGORO_CRATER },
					},
					["groups"] = {
						i(18671),	-- Baron Charr's Sceptre
						i(18672),	-- Elemental Ember
						un(PHASE_THREE, i(19268)),	-- Ace of Elementals
					},
				}),
				n(6582, {	-- Clutchmother Zavas
					["coords"] = {
						{ 44.6, 81.6, UNGORO_CRATER },
						{ 46.8, 86.0, UNGORO_CRATER },
						{ 49.2, 85.6, UNGORO_CRATER },
						{ 49.6, 83.6, UNGORO_CRATER },
					},
				}),
				n(6583, {	-- Gruff
					["coords"] = {
						{ 36.6, 66.6, UNGORO_CRATER },
						{ 37.8, 75.0, UNGORO_CRATER },
						{ 31.8, 72.2, UNGORO_CRATER },
						{ 31.6, 79.6, UNGORO_CRATER },
					},
				}),
				n(6584, {	-- King Mosh
					["coords"] = {
						{ 27.8, 45.0, UNGORO_CRATER },
						{ 30.8, 47.6, UNGORO_CRATER },
						{ 28.8, 34.4, UNGORO_CRATER },
						{ 29.8, 31.6, UNGORO_CRATER },
						{ 35.3, 36.0, UNGORO_CRATER },
						{ 35.1, 30.3, UNGORO_CRATER },
						{ 37.9, 43.5, UNGORO_CRATER },
					},
				}),
				n(6581, {	-- Ravasaur Matriarch
					["coord"] = { 62.4, 66.0, UNGORO_CRATER },
				}),
				n(6585, {	-- Uhk'loc
					["coord"] = { 68.5, 12.7, UNGORO_CRATER },
				}),
			}),
		}),
	}),
};