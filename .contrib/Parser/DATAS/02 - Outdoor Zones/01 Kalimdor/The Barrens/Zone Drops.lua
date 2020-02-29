---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(THE_BARRENS, {
			n(ZONEDROPS, {
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
				i(6663, {	-- Recipe: Elixir of Giant Growth
					["description"] = "Can drop from any mob in the Barrens.",
				}),
				i(6661, {	-- Recipe: Savory Deviate Delight
					["description"] = "Can drop from any mob in the Barrens.",
				}),
			}),
		}),
	}),
};