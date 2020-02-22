---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(WETLANDS, {
			n(RARES, {
				n(2108, {	-- Garneg Charskull
					["coords"] = {
						{ 38.6, 46.2, WETLANDS },
						{ 43.2, 44.2, WETLANDS },
						{ 48.0, 47.6, WETLANDS },
					},
					["groups"] = {
						i(6200),	-- Garneg's War Belt
						i(3392),	-- Ringed Helm
					},
				}),
				n(1112, {	-- Leech Widow
					["coord"] = { 46.8, 61.4, WETLANDS },
					["groups"] = {
						i(4444),	-- Black Husk Shield
						i(6199),	-- Black Widow Band
					},
				}),
				n(2090, {	-- Ma'ruk Wyrmscale <Dragonmaw Warlord>
					["coord"] = { 47.8, 76.8, WETLANDS },
					["groups"] = {
						i(5749),	-- Scythe Axe
						i(5750),	-- Warchief's Girdle
					},
				}),
				n(1140, {	-- Razormaw Matriarch
					["coord"] = { 70.8, 30.4, WETLANDS },
					["groups"] = {
						i(4463),	-- Beaded Raptor Collar
						i(6198),	-- Jurassic Wristguards
					},
				}),
			}),
		}),
	}),
};