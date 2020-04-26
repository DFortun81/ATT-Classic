local currentPhase = 4;
_.ItemDB = {};
local i = function(itemID, phase)
	if currentPhase < phase then
		_.ItemDB[itemID] = { ["u"] = 3 };
	end
end

-- Phase 5 [AQ]
i(21103, 5);	-- Draconic for Dummies [Chapter I]
i(21108, 5);	-- Draconic for Dummies [Chapter IV]
i(22762, 5);	-- Ironvine Breastplate
i(22763, 5);	-- Ironvine Gloves
i(22764, 5);	-- Ironvine Belt
i(22198, 5);	-- Jagged Obsidian Shield
i(20951, 5);	-- Narain's Scrying Goggles

-- Phase 6 [NAXX]
i(22669, 6);	-- Icebane Breastplate
i(22671, 6);	-- Icebane Bracers
i(22670, 6);	-- Icebane Gauntlets