---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(STRANGLETHORN_VALE, {
			n(FACTIONS, {
				faction(87, { 	-- Bloodsail Buccaneers
					["icon"] = icon("INV_Misc_Bandana_03"),
					["minReputation"] = { 87, EXALTED - 1 },	-- Bloodsail Buccaneers, must be 20999 into Revered.
				}),
				faction(21, { 	-- Booty Bay
					["icon"] = icon("INV_Misc_Coin_01"),
				}),
			}),
		}),
	}),
};