---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(FELWOOD, {
			n(0, {	-- Zone Drops
				i(20768, {	-- Oozing Bag
					["crs"] = {
						7092,	-- Tainted Ooze
						14345,	-- The Ongar
						7093,	-- Vile Ooze
					},
					["groups"] = {
						i(20769),	-- Disgusting Oozeling
					},
				}),
				i(15752, {	-- Pattern: Living Leggings
					["cr"] = 7158,	-- Deadwood Shaman
				}),
				i(15739, {	-- Pattern: Runic Leather Bracers
					["cr"] = 7112,	-- Jaedenar Cultist
				}),
				i(15744, {	-- Pattern: Wicked Leather Headband
					["cr"] = 7107,	-- Jadefire Trickster
				}),
				i(13491, {	-- Recipe: Elixir of the Mongoose
					["cr"] = 7106,	-- Jadefire Rogue
				}),
			}),
		}),
	}),
};