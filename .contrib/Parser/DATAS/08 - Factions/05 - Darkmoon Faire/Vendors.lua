---------------------------------------------
--     F A C T I O N S     M O D U L E     --
---------------------------------------------
_.Factions = 
{
	faction(909, {	-- Darkmoon Faire
		n(VENDORS, {
			n(14860, { -- Flik
				["coords"] = {
					{ 36.4, 36.0, MULGORE },
					{ 37.6, 39.6, MULGORE },
				},
				["groups"] = {
					i(18662),	-- Heavy Leather Ball
					i(11026),	-- Tree Frog Box
					i(11027),	-- Wood Frog Box
				},
			}),
			n(14828, { -- Gelvas Grimegate <Darkmoon Faire Ticket Redemption>
				["coords"] = {
					{ 37.3, 37.7, MULGORE },
				},
				["groups"] = {
					i(19295),	-- Darkmoon Flower
					i(19298),	-- Minor Darkmoon Prize
					i(19292),	-- Last Month's Mutton
					i(19297),	-- Lesser Darkmoon Prize
					i(19296),	-- Greater Darkmoon Prize
					i(19291),	-- Darkmoon Storage Box
					i(19293),	-- Last Year's Mutton
					i(19491),	-- Amulet of the Darkmoon
					i(19426),	-- Orb of the Darkmoon
				},
			}),
		}),
	}),
};