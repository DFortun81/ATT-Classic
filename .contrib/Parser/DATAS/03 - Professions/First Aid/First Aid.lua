profession(129, {	-- First Aid
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
	recipe(23787, {	-- Powerful Anti-Venom
		["u"] = 3,	-- Added in later phase
	}),
	n(-17, {	-- Quests
		q(6625, {	-- Alliance Trauma
			["lvl"] = 35,
			["races"] = ALLIANCE_ONLY,
			["requireSkill"] = 129,	-- First Aid
			["qg"] = 5150,	-- Nissa Firestone
			["maps"] = { IRONFORGE },
			["isBreadcrumb"] = true,
		}),
		q(6623, {	-- Horde Trauma
			["lvl"] = 35,
			["races"] = HORDE_ONLY,
			["requireSkill"] = 129,	-- First Aid
			["qg"] = 3373,	-- Arnok
			["maps"] = { ORGRIMMAR },
			["isBreadcrumb"] = true,
		}),
		q(6624, {	-- Triage (A)
			["lvl"] = 35,
			["races"] = ALLIANCE_ONLY,
			["requireSkill"] = 129,	-- First Aid
			["qg"] = 12939,	-- Doctor Gustaf VanHowzen
			["maps"] = { DUSTWALLOW_MARSH },
		}),
		q(6622, {	-- Triage (H)
			["lvl"] = 35,
			["races"] = HORDE_ONLY,
			["requireSkill"] = 129,	-- First Aid
			["qg"] = 12920,	-- Doctor Gregory Victor
			["maps"] = { ARATHI_HIGHLANDS },
		}),
	}),
});