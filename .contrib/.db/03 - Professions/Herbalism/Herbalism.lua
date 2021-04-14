profession(HERBALISM, {
	recipe(2383),	-- Find Herbs
	n(QUESTS, {
		q(866,	{	-- Root Samples
			["qg"] = 3446,	-- Mebok Mizzyrix
			["coord"] = { 62.4, 37.6, THE_BARRENS },
			["requireSkill"] = HERBALISM,
			["maps"] = { THE_BARRENS },
			["cost"] = {
				{ "i", 5056, 8 },	-- Root Sample
			},
			["lvl"] = 9,
			["g"] = {
				i(5341),	-- Spore-Covered Tunic
			},
		}),
	}),
});