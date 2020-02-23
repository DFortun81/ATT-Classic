---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(SILITHUS, {
			n(RARES, {
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
						i(19268),	-- Ace of Elementals
					},
				}),
			}),
		}),
	}),
};