---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(STRANGLETHORN_VALE, {
			["description"] = "The Stranglethorn Vale is a vast jungle south of Duskwood.\n\nJungle trolls patrol this steaming rainforest. Ancient Gurubashi trolls once ruled the region, and the ruins of their great cities crumble in the jungle’s heat and growth. Naga hunt along the coast and vicious animals and plants, including the eponymous strangle-thorns, make travel dangerous. The Arena, a center for gladiatorial games set in a ruined Gurubashi fighting stadium, draws shady characters of all races. The Blackwater Raiders, a vile group of pirates, make their home in Booty Bay, on the Stranglethorn’s southern coast.",
			["groups"] = {
				faction(87, { 	-- Bloodsail Buccaneers
					["icon"] = icon("INV_Misc_Bandana_03"),
					["minReputation"] = { 87, EXALTED - 1 },	-- Bloodsail Buccaneers, must be 20999 into Revered.
				}),
				faction(21, { 	-- Booty Bay
					["icon"] = icon("INV_Misc_Coin_01"),
				}),
				o(179697, {	-- Arena Treasure Chest
					["description"] = "Chest is dropped in arena every 3 hours.",
					["groups"] = {
						{
							["itemID"] = 18706,	-- Arena Master
							["questID"] = 7810,	-- Arena Master
						},
						i(18711),	-- Arena Bands
						i(18710),	-- Arena Bracers
						i(18712),	-- Arena Vambraces
						i(18709),	-- Arena Wristguards
					},
				}),
			},
		}),
	}),
};