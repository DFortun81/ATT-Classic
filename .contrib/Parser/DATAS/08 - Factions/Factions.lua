---------------------------------------------
--     F A C T I O N S     M O D U L E     --
---------------------------------------------
_.Factions = 
{
	n(-9914, { -- Alliance
		["races"] = ALLIANCE_ONLY,
		["g"] = {
			faction(69, { -- Darnassus
				["races"] = ALLIANCE_ONLY,
			}),
			faction(54, { -- Gnomeregan Exiles
				["races"] = ALLIANCE_ONLY,
			}),
			faction(47, { -- Ironforge
				["races"] = ALLIANCE_ONLY,
			}),
			faction(72, { -- Stormwind
				["races"] = ALLIANCE_ONLY,
			}),
		},
	});
	n(-9913, { -- Horde
		["races"] = HORDE_ONLY,
		["g"] = {
			faction(530, { -- Darkspear Trolls
				["races"] = HORDE_ONLY,
			}),
			faction(76, { -- Orgrimmar
				["races"] = HORDE_ONLY,
			}),
			faction(81, { -- Thunder Bluff
				["races"] = HORDE_ONLY,
			}),
			faction(68, { -- Undercity
				["races"] = HORDE_ONLY,
			}),
		},
	});
};