profession(FIRST_AID, {
	recipe(3275),	-- Linen Bandage
	recipe(3276),	-- Heavy Linen Bandage
	recipe(7934),	-- Anti-Venom
	recipe(3277),	-- Wool Bandage
	recipe(3278),	-- Heavy Wool Bandage
	recipe(7935),	-- Strong Anti-Venom
	recipe(7928),	-- Silk Bandage
	recipe(7929),	-- Heavy Silk Bandage
	recipe(10840),	-- Mageweave Bandage
	recipe(10841),	-- Heavy Mageweave Bandage
	recipe(18629),	-- Runecloth Bandage
	recipe(18630),	-- Heavy Runecloth Bandage
	recipe(23787),	-- Powerful Anti-Venom
	n(QUESTS, {
		q(6625, {	-- Alliance Trauma
			["qg"] = 5150,	-- Nissa Firestone
			["requireSkill"] = FIRST_AID,
			["coord"] = { 54.8, 58.6, IRONFORGE },
			["maps"] = { IRONFORGE },
			["races"] = ALLIANCE_ONLY,
			["isBreadcrumb"] = true,
			["lvl"] = 35,
		}),
		q(6623, {	-- Horde Trauma
			["qg"] = 3373,	-- Arnok
			["requireSkill"] = FIRST_AID,
			["coord"] = { 34, 84.4, ORGRIMMAR },
			["maps"] = { ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["isBreadcrumb"] = true,
			["lvl"] = 35,
		}),
		q(6624, {	-- Triage (A)
			["qg"] = 12939,	-- Doctor Gustaf VanHowzen
			["sourceQuest"] = 6625,	-- Alliance Trauma
			["requireSkill"] = FIRST_AID,
			["coord"] = { 67.7, 48.9, DUSTWALLOW_MARSH },
			["maps"] = { DUSTWALLOW_MARSH },
			["races"] = ALLIANCE_ONLY,
			["cost"] = {
				{ "i", 16991, 1 },	-- Triage Bandage
			},
			["lvl"] = 35,
		}),
		q(6622, {	-- Triage (H)
			["qg"] = 12920,	-- Doctor Gregory Victor
			["sourceQuest"] = 6623,	-- Horde Trauma
			["requireSkill"] = FIRST_AID,
			["coord"] = { 73.4, 36.8, ARATHI_HIGHLANDS },
			["maps"] = { ARATHI_HIGHLANDS },
			["races"] = HORDE_ONLY,
			["cost"] = {
				{ "i", 16991, 1 },	-- Triage Bandage
			},
			["lvl"] = 35,
		}),
	}),
});