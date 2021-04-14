---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(SILITHUS, {
			n(RARES, {
				n(14472, {	-- Gretheer
					["coords"] = {
						{ 28.8, 42.2, SILITHUS },
						{ 39.8, 55.2, SILITHUS },
						{ 48.8, 62.6, SILITHUS },
						{ 61.8, 64.4, SILITHUS },
					},
				}),
				n(14477, {	-- Grubthor
					["coords"] = {
						{ 27.2, 82.0, SILITHUS },
						{ 36.2, 71.6, SILITHUS },
						{ 48.6, 67.2, SILITHUS },
						{ 44.8, 80.2, SILITHUS },
					},
				}),
				n(14478, {	-- Huricanian
					["coords"] = {
						{ 29.4, 24.4, SILITHUS },
						{ 29.8, 19.8, SILITHUS },
						{ 28.2, 16.0, SILITHUS },
						{ 27.0, 13.8, SILITHUS },
						{ 24.2, 13.0, SILITHUS },
						{ 21.4, 17.0, SILITHUS },
						{ 21.4, 22.6, SILITHUS },
						{ 22.2, 26.2, SILITHUS },
						{ 23.0, 28.8, SILITHUS },
						{ 26.0, 26.8, SILITHUS },
					},
				}),
				n(14476, {	-- Krellack
					["coords"] = {
						{ 59.8, 19.6, SILITHUS },
						{ 65.8, 30.0, SILITHUS },
						{ 62.8, 42.4, SILITHUS },
						{ 69.6, 41.0, SILITHUS },
					},
				}),
				n(14473, {	-- Lapress
					["coords"] = {
						{ 54.4, 83.8, SILITHUS },
						{ 55.2, 89.8, SILITHUS },
						{ 63.8, 91.6, SILITHUS },
						{ 61.6, 84.0, SILITHUS },
						{ 64.2, 83.6, SILITHUS },
						{ 64.8, 82.4, SILITHUS },
						{ 64.2, 79.4, SILITHUS },
					},
				}),
				n(14475, {	-- Rex Ashil
					["coords"] = {
						{ 47.2, 23.8, SILITHUS },
						{ 47.6, 26.6, SILITHUS },
						{ 46.0, 28.4, SILITHUS },
					},
				}),
				n(14471, {	-- Setis
					["coords"] = {
						{ 48.0, 82.6, SILITHUS },
						{ 22.2, 80.6, SILITHUS },
						{ 27.8, 86.6, SILITHUS },
						{ 22.6, 87.2, SILITHUS },
					},
				}),
				n(14454, { 	-- The Windreaver
					["description"] = "This is only available during an Elemental Invasion.",
					["coords"] = {
						{ 17.6, 27.0, SILITHUS },
						{ 26.6, 29.6, SILITHUS },
						{ 31.0, 23.6, SILITHUS },
						{ 32.2, 17.2, SILITHUS },
					},
					["groups"] = {
						i(18676),	-- Sash of the Windreaver
						i(18677),	-- Zephyr Cloak
						i(21548),	-- Pattern: Stormshroud Gloves
						un(PHASE_THREE, i(19268)),	-- Ace of Elementals
					},
				}),
				n(14474, {	-- Zora
					["coords"] = {
						{ 20.2, 58.2, SILITHUS },
						{ 23.6, 61.8, SILITHUS },
						{ 17.6, 65.8, SILITHUS },
						{ 24.0, 71.2, SILITHUS },
					},
				}),
			}),
		}),
	}),
};