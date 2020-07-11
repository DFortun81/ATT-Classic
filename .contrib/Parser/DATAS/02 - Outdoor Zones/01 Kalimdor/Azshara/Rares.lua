---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(AZSHARA, {
			n(RARES, {
				n(6648, {	-- Antilos
					["coords"] = {
						{ 16.8, 51.8, AZSHARA },
						{ 18.0, 56.6, AZSHARA },
						{ 17.0, 64.0, AZSHARA },
						{ 48.0, 19.2, AZSHARA },
						{ 49.0, 26.0, AZSHARA },
						{ 51.0, 29.6, AZSHARA },
						{ 52.2, 36.8, AZSHARA },
						{ 54.0, 25.8, AZSHARA },
						{ 56.6, 19.4, AZSHARA },
					},
				}),
				n(14464, { 	-- Avalanchion
					["description"] = "This is only available during an Elemental Invasion.",
					["coords"] = {
						{ 72.6, 20.0, AZSHARA },
						{ 77.2, 16.6, AZSHARA },
						{ 82.6, 21.0, AZSHARA },
						{ 77.0, 24.2, AZSHARA },
						{ 80.0, 24.2, AZSHARA },
					},
					["groups"] = {
						i(18673),	-- Avalanchion's Stony Hide
						i(18674),	-- Hardened Stone Band
						un(PHASE_THREE, i(19268)),	-- Ace of Elementals
					},
				}),
				n(6651, {	-- Gatekeeper Rageroar
					["coord"] = { 38.4, 32.6, AZSHARA },
				}),
				n(6650, {	-- General Fangferror
					["coord"] = { 41.6, 51.8, AZSHARA },
					["groups"] = {
						i(17054),	-- Joonho's Mercy
					},
				}),
				n(6649, {	-- Lady Sesspira
					["coords"] = {
						{ 40.6, 45.6, AZSHARA },
						{ 37.2, 49.0, AZSHARA },
						{ 37.6, 51.8, AZSHARA },
						{ 34.0, 58.6, AZSHARA },
						{ 39.6, 55.6, AZSHARA },
					},
				}),
				n(6647, {	-- Magister Hawkhelm
					["coords"] = {
						{ 56.8, 28.6, AZSHARA },
						{ 59.4, 31.4, AZSHARA },
					},
				}),
				n(6652, {	-- Master Feardred
					["coords"] = {
						{ 61.8, 25.6, AZSHARA },
						{ 65.8, 17.6, AZSHARA },
					},
				}),
				n(6646, {	-- Monnos the Elder
					["coords"] = {
						{ 82.0, 18.6, AZSHARA },
						{ 78.6, 17.4, AZSHARA },
						{ 76.2, 18.0, AZSHARA },
						{ 72.8, 19.2, AZSHARA },
						{ 76.8, 23.4, AZSHARA },
						{ 59.8, 78.4, AZSHARA },
						{ 55.6, 80.2, AZSHARA },
						{ 59.8, 80.6, AZSHARA },
						{ 56.4, 87.8, AZSHARA },
						{ 59.6, 89.0, AZSHARA },
					},
				}),
				n(13896, {	-- Scalebeard
					["coords"] = {
						{ 55.0, 49.8, AZSHARA },
						{ 52.0, 45.6, AZSHARA },
						{ 52.2, 49.6, AZSHARA },
					},
				}),
				n(8660, {	-- The Evalcharr
					["coords"] = {
						{ 17.6, 54.0, AZSHARA },
						{ 18.8, 66.0, AZSHARA },
						{ 23.4, 55.0, AZSHARA },
					},
				}),
				n(6118, {	-- Varo'then's Ghost
					["coords"] = {
						{ 13.4, 74.8, AZSHARA },
						{ 16.6, 72.8, AZSHARA },
						{ 17.2, 66.2, AZSHARA },
						{ 19.0, 68.0, AZSHARA },
					},
				}),
			}),
		}),
	}),
};