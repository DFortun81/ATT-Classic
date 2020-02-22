profession(171, {	-- Alchemy
	n(QUESTS, {
		q(2501, {	-- Badlands Reagent Run II
			["lvl"] = 40,
			["requireSkill"] = 171,	-- Alchemy
			["maps"] = { LOCH_MODAN },
			["races"] = ALLIANCE_ONLY,
			["qg"] = 1470,	-- Ghak Healtouch
			["coord"] = { 37.07, 49.38, LOCH_MODAN },
			["sourceQuest"] = 2500,	-- Badlands Reagent Run
			["cost"] = {
				{ "i", 7867, 3 },	-- Vessel of Dragon's Blood
			},
		}),
		q(1581, {	-- Elixirs for the Bladeleafs
			["lvl"] = 4,
			["requireSkill"] = 171,	-- Alchemy
			["maps"] = { TELDRASSIL },
			["races"] = ALLIANCE_ONLY,
			["qg"] = 2083,	-- Syral Bladeleaf
		}),
	}),
});