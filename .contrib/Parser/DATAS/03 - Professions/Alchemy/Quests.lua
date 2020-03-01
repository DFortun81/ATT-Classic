profession(ALCHEMY, {
	n(QUESTS, {
		q(2501, {	-- Badlands Reagent Run II
			["qg"] = 1470,	-- Ghak Healtouch
			["sourceQuest"] = 2500,	-- Badlands Reagent Run
			["coord"] = { 37.07, 49.38, LOCH_MODAN },
			["requireSkill"] = ALCHEMY,
			["maps"] = { LOCH_MODAN },
			["races"] = ALLIANCE_ONLY,
			["cost"] = {
				{ "i", 7867, 3 },	-- Vessel of Dragon's Blood
			},
			["lvl"] = 40,
		}),
		q(1581, {	-- Elixirs for the Bladeleafs
			["qg"] = 2083,	-- Syral Bladeleaf
			["requireSkill"] = ALCHEMY,
			["maps"] = { TELDRASSIL },
			["races"] = ALLIANCE_ONLY,
			["lvl"] = 4,
		}),
	}),
});