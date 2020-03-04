---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(MULGORE, {
			n(RARES, {
				n(5787, {	-- Enforcer Emilgund
					["coord"] = { 40.6, 15.8, MULGORE },
				}),
				n(3056, {	-- Ghost Howl
					["coords"] = {
						{ 50.6, 15.0, MULGORE },
						{ 39.6, 13.8, MULGORE },
						{ 37.4, 17.8, MULGORE },
						{ 32.8, 19.2, MULGORE },
						{ 32.0, 26.0, MULGORE },
						{ 34.0, 29.2, MULGORE },
						{ 37.0, 42.6, MULGORE },
						{ 44.2, 41.2, MULGORE },
					},
					["groups"] = {
						{
							["itemID"] = 4854,	-- Demon Scarred Cloak
							["questID"] = 770,	-- The Demon Scarred Cloak
							["races"] = HORDE_ONLY,
						},
					},
				}),
				n(3068, {	-- Mazzranache
					["coords"] = {
						{ 34.8, 42.2, MULGORE },
						{ 39.4, 44.2, MULGORE },
						{ 44.4, 42.9, MULGORE },
						{ 51.2, 43.6, MULGORE },
						{ 56.6, 44.0, MULGORE },
					},
					["groups"] = {
						i(4861),	-- Sleek Feathered Tunic
					},
				}),
				n(5785, {	-- Sister Hatelash
					["coords"] = {
						{ 30.6, 21.6, MULGORE },
						{ 36.6, 11.6, MULGORE },
						{ 55.6, 12.0, MULGORE },
					},
					["groups"] = {
						i(4772),	-- Warm Cloak
					},
				}),
				n(5786, {	-- Snagglespear
					["coords"] = {
						{ 48.2, 68.0, MULGORE },
						{ 50.6, 71.4, MULGORE },
						{ 55.2, 72.2, MULGORE },
					},
				}),
				n(5807, {	-- The Rake
					["coord"] = { 52.0, 18.6, MULGORE },
					["groups"] = {
						i(17922),	-- Lionfur Armor
					},
				}),
			}),
		}),
	}),
};