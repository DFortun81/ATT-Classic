---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(THE_BARRENS, {
			n(ZONEDROPS, {
				i(5107, {	-- Deckhand's Shirt
					["crs"] = {
						3381,	-- Southsea Brigand
						3382,	-- Southsea Cannoneer
						3383,	-- Southsea Cutthroat
						3384,	-- Southsea Privateer
					},
				}),
				i(5026, {	-- Fire Tar
					["questID"] = 1525,	-- Call of Fire (3/5)
					["races"] = HORDE_ONLY,
					["classes"] = { SHAMAN },
					["crs"] = {
						3269,	-- Razormane Geomancer
						3271,	-- Razormane Mystic
						3268,	-- Razormane Thornweaver
						3267,	-- Razormane Water Seeker
					},
				}),
				i(5055, {	-- Intact Raptor Horn
					["questID"] = 865,	-- Raptor Horns
					["crs"] = {
						3257,	-- Ishamuhale
						3256,	-- Sunscale Scytheclaw
						5842,	-- Takk the Leaper
					},
				}),
				i(6663, {	-- Recipe: Elixir of Giant Growth
					["description"] = "Can drop from any mob in the Barrens.",
				}),
				i(6661, {	-- Recipe: Savory Deviate Delight
					["description"] = "Can drop from any mob in the Barrens.",
				}),
				i(5086, {	-- Zhevra Hooves
					["questID"] = 845,	-- The Zhevra
					["races"] = HORDE_ONLY,
					["crs"] = {
						5831,	-- Swiftmane
						3426,	-- Zhevra Charger
						3466,	-- Zhevra Courser
						3242,	-- Zhevra Runner
					},
				}),
			}),
		}),
	}),
};