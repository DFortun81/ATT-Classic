_.PvP = 
{
  n(-304, { -- Battlegrounds
    m(1459, { -- Alterac Valley
      ["maps"] = { HILLSBRAD_FOOTHILLS },
      ["description"] = "Alterac Valley is a battleground players fight in frosty Alterac between the Frostwolf Clan (Horde) and Stormpike Guard (Alliance). Alterac Valley is notable both for how many people can queue per side (40) as well as how much honor each game rewards.",
      ["g"] = {
        faction(729, {	-- Frostwolf Clan
			["races"] = HORDE_ONLY,
			["icon"] = "Interface\\Icons\\inv_jewelry_frostwolftrinket_05",
			["g"] = {
				n(-17, {	-- Quests
					q(7281, { -- Brotherly Love (Horde)
						["lvl"] = 51,
						["races"] = HORDE_ONLY,
						["qg"] = 13154, -- Commander Louis Philips
					}),
					q(7124, { -- Capture a Mine
						["lvl"] = 51,
						["races"] = HORDE_ONLY,
						["qgs"] = {
							12097, -- Frostwolf Quartermaster
							13776, -- Corporal Teeka Bloodsnarl
						}, 
					}),
					q(7165, { -- Earned Reverence
						["lvl"] = 51,
						["races"] = HORDE_ONLY,
						["qg"] = 13840, -- Warmaster Laggrond
						["coords"] = { 62.2, 59.0, ALTERAC_MOUNTAINS },
						["minReputation"] = { 729, REVERED },    -- Frostwolf Clan, Revered
						["cost"] = {
							{ "i", 17906, 1 },	-- Frostwolf Insignia Rank 3
						},
						["g"] = {
							i(17907), -- Frostwolf Insignia Rank 4
						},
					}),
					q(7224, { -- Enemy Booty
						["lvl"] = 51,
						["races"] = HORDE_ONLY,
						["qg"] = 13176, -- Smith Regzar
					}),
					q(7302, { -- Fallen Sky Lords
						["lvl"] = 51,
						["races"] = HORDE_ONLY,
						["qg"] = 13153, -- Commander Mulfort
					}),
					q(8272, { -- Hero of the Frostwolf
						["lvl"] = 51,
						["races"] = HORDE_ONLY,
						["qg"] = 13817, -- Voggah Deathgrip
						["sourceQuest"] = 7142, -- The Battle for Alterac
						["g"] = {
							i(19107), -- Bloodseeker
							i(20648), -- Cold Forged Hamme
							i(19106), -- Ice Barbed Spear
							i(19108), -- Wand of Biting Cold
						},
					}),
					q(7164, { -- Honored Amongst the Clan
						["lvl"] = 51,
						["races"] = HORDE_ONLY,
						["qg"] = 13840, -- Warmaster Laggrond
						["coords"] = { 62.2, 59.0, ALTERAC_MOUNTAINS },
						["minReputation"] = { 729, HONORED },    -- Frostwolf Clan, Honored
						["cost"] = {
							{ "i", 17695, 1 },	-- Frostwolf Insignia Rank 2
						},
						["g"] = {
							i(17906),  -- Frostwolf Insignia Rank 3
						},
					}),
					q(8369, { -- Invaders of Alterac Valley
						["lvl"] = 51,
						["races"] = HORDE_ONLY,
						["qg"] = 15350, -- Horde Warbringer
					}),
					q(7166, { -- Legendary Heroes
						["lvl"] = 51,
						["races"] = HORDE_ONLY,
						["qg"] = 13840, -- Warmaster Laggrond
						["coords"] = { 62.2, 59.0, ALTERAC_MOUNTAINS },
						["minReputation"] = { 729, EXALTED },    -- Frostwolf Clan, Exalted
						["sourceQuest"] = 7165, -- Earned Reverence
						["cost"] = {
							{ "i", 17907, 1 },	-- Frostwolf Insignia Rank 4
						},
						["g"] = {
							i(17908),  -- Frostwolf Insignia Rank 5
						},
					}),
					q(6741, { -- More Booty!
						["lvl"] = 51,
						["races"] = HORDE_ONLY,
						["qg"] = 13176, -- Smith Regzar
						["repeatable"] = true,
					}),
					q(7161, { -- Proving Grounds
						["lvl"] = 51,
						["races"] = HORDE_ONLY,
						["qg"] = 13840, -- Warmaster Laggrond
						["coords"] = { 62.2, 59.0, ALTERAC_MOUNTAINS },
						["g"] = {
							i(17690),  -- Frostwolf Insignia Rank 1
							i(19483),  -- Peeling the Onion
						},
					}),
					q(7163, { -- Rise and Be Recognized
						["lvl"] = 51,
						["races"] = HORDE_ONLY,
						["qg"] = 13840, -- Warmaster Laggrond
						["coords"] = { 62.2, 59.0, ALTERAC_MOUNTAINS },
						["minReputation"] = { 729, FRIENDLY },    -- Frostwolf Clan, Friendly
						["sourceQuest"] = 7161, -- Proving Grounds
						["cost"] = {
							{ "i", 17690, 1 },	-- Frostwolf Insignia Rank 1
						},
						["g"] = {
							i(17905),  -- Frostwolf Insignia Rank 2
						},
					}),
					q(7123, { -- Speak with our Quartermaster
						["lvl"] = 51,
						["races"] = HORDE_ONLY,
						["qg"] = 13798, -- Jotek
					}),
					q(7142, { -- The Battle for Alterac
						["lvl"] = 51,
						["races"] = HORDE_ONLY,
						["qg"] = 13817, -- Voggah Deathgrip
						["sourceQuest"] = 7222, -- Speak with Voggah Deathgrip
					}),
					q(7167, { -- The Eye of Command
						["lvl"] = 51,
						["races"] = HORDE_ONLY,
						["qg"] = 13840, -- Warmaster Laggrond
						["coords"] = { 62.2, 59.0, ALTERAC_MOUNTAINS },
						["minReputation"] = { 729, EXALTED },    -- Frostwolf Clan, 999/1000 Exalted
						["sourceQuest"] = 7166, -- Legendary Heroes
						["cost"] = {
							{ "i", 17908, 1 },	-- Frostwolf Insignia Rank 5
						},
						["g"] = {
							i(17909),  -- Frostwolf Insignia Rank 6
						},
					}),
					q(7082, { -- The Graveyards of Alterac
						["lvl"] = 51,
						["races"] = HORDE_ONLY,
						["qg"] = 13776, -- Corporal Teeka Bloodsnarl
					}),
					q(7101, { -- Towers and Bunkers
						["lvl"] = 51,
						["races"] = HORDE_ONLY,
						["qg"] = 13776, -- Corporal Teeka Bloodsnarl
					}),
				}),
			  }, 
			}),
        faction(730, {	-- Stormpike Guard
			["races"] = ALLIANCE_ONLY,
			["icon"] = "Interface\\Icons\\inv_jewelry_frostwolftrinket_05",
			["g"] = {
				n(-17, {	-- Quests
					q(7081, { -- Alterac Valley Graveyards
						["lvl"] = 51,
						["races"] = ALLIANCE_ONLY,
						["qg"] = 13777, -- Sergeant Durgen Stormpike
						["coords"] = { 36.8, 77.2, ALTERAC_MOUNTAINS },
						["maps"] = { ALTERAC_MOUNTAINS },
					}),
					q(7282, { -- Brotherly Love
						["lvl"] = 51,
						["races"] = ALLIANCE_ONLY,
						["qg"] = 13320, -- Commander Karl Philips
					}),
					q(7122, { -- Capture a Mine
						["lvl"] = 51,
						["races"] = ALLIANCE_ONLY,
						["qg"] = 13777, -- Sergeant Durgen Stormpike
						["coords"] = { 36.8, 77.2, ALTERAC_MOUNTAINS },
						["maps"] = { ALTERAC_MOUNTAINS },
					}),
					q(7170, { -- Earned Reverence
						["lvl"] = 51,
						["races"] = ALLIANCE_ONLY,
						["qg"] = 13841, -- Lieutenant Haggerdin
						["coords"] = { 39.6, 81.0, ALTERAC_MOUNTAINS },
						["minReputation"] = { 730, REVERED },  -- Stormpike Guard, Revered
						["cost"] = {
							{ "i", 17901, 1 },	-- Stormpike Insignia Rank 3
						},
						["g"] = {
							i(17902), -- Stormpike Insignia Rank 4
						},
					}),
					q(7301, { -- Fallen Sky Lords
						["lvl"] = 51,
						["races"] = ALLIANCE_ONLY,
						["qg"] = 13319, -- Commander Duffy
					}),
					q(7169, { -- Honored Amongst the Guard
						["lvl"] = 51,
						["races"] = ALLIANCE_ONLY,
						["qg"] = 13841, -- Lieutenant Haggerdin
						["coords"] = { 39.6, 81.0, ALTERAC_MOUNTAINS },
						["maps"] = { ALTERAC_MOUNTAINS },
						["minReputation"] = { 730, HONORED },  -- Stormpike Guard, Honored
						["cost"] = {
							{ "i", 17900, 1 },	-- Stormpike Insignia Rank 2
						},
						["g"] = {
							i(17901), -- Stormpike Insignia Rank 3
						},
					}),
					q(7171, { -- Legendary Heroes
						["lvl"] = 51,
						["races"] = ALLIANCE_ONLY,
						["qg"] = 13841, -- Lieutenant Haggerdin
						["coords"] = { 39.6, 81.0, ALTERAC_MOUNTAINS },
						["maps"] = { ALTERAC_MOUNTAINS },
						["minReputation"] = { 730, EXALTED },  -- Stormpike Guard, Exalted
						["cost"] = {
							{ "i", 17902, 1 },	-- Stormpike Insignia Rank 4
						},
						["g"] = {
							i(17903), -- Stormpike Insignia Rank 5
						},
					}),
					q(7162, { -- Proving Grounds
						["lvl"] = 51,
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 7261, -- The Sovereign Imperative
						["qg"] = 13841, -- Lieutenant Haggerdin
						["coords"] = { 39.6, 81.0, ALTERAC_MOUNTAINS },
						["maps"] = { ALTERAC_MOUNTAINS },
						["g"] = {
							i(17691), -- Stormpike Insignia Rank 1
							i(19484), -- The Frostwolf Artichoke
						},
					}),
					q(8375, { -- Remember Alterac Valley!
						["lvl"] = 51,
						["races"] = ALLIANCE_ONLY,
						["qg"] = 15351, -- Alliance Brigadier General
						["cost"] = {
							{ "i", 20560, 3 },	-- Alterac Valey Mark of Honor
						},
					}),
					q(8383, { -- Remember Alterac Valley!
						["lvl"] = 51,
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 8375, -- Remember Alterac Valley!
						["repeatable"] = true,
						["qg"] = 15351, -- Alliance Brigadier General
						["cost"] = {
							{ "i", 20560, 3 },	-- Alterac Valey Mark of Honor
						},
					}),
					q(7168, { -- Rise and Be Recognized (Alliance)
						["lvl"] = 51,
						["races"] = ALLIANCE_ONLY,
						["qg"] = 13841, -- Lieutenant Haggerdin
						["coords"] = { 39.6, 81.0, ALTERAC_MOUNTAINS },
						["maps"] = { ALTERAC_MOUNTAINS },
						["minReputation"] = { 730, FRIENDLY },  -- Stormpike Guard, Friendly
						["cost"] = {
							{ "i", 17691, 1 },	-- Stormpike Insignia Rank 1
						},
						["g"] = {
							i(17900), -- Stormpike Insignia Rank 2
						},
					}),
					q(7121, { -- The Quartermaster
						["lvl"] = 51,
						["races"] = ALLIANCE_ONLY,
						["qg"] = 13797, -- Mountaineer Boombellow
					}),
					q(7261, { -- The Sovereign Imperative
						["lvl"] = 51,
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
						["qg"] = 13843, -- Lieutenant Rotimer <Stormpike Guard Recruitment Officer>
						["coords"] = { 32.8, 64.6, IRONFORGE },
						["maps"] = { IRONFORGE },
					}),
					q(7172, { -- The Eye of Command
						["lvl"] = 51,
						["races"] = ALLIANCE_ONLY,
						["qg"] = 13841, -- Lieutenant Haggerdin
						["coords"] = { 39.6, 81.0, ALTERAC_MOUNTAINS },
						["maps"] = { ALTERAC_MOUNTAINS },
						["minReputation"] = { 730, EXALTED },  -- Stormpike Guard, 999/1000 Exalted
						["cost"] = {
							{ "i", 17903, 1 },	-- Stormpike Insignia Rank 5
						},
						["g"] = {
							i(17904), -- Stormpike Insignia Rank 6
						},
					}),
					q(7102, { -- Towers and Bunkers
						["lvl"] = 51,
						["races"] = ALLIANCE_ONLY,
						["qg"] = 13777, -- Sergeant Durgen Stormpike
						["coords"] = { 36.8, 77.2, ALTERAC_MOUNTAINS },
						["maps"] = { ALTERAC_MOUNTAINS },
					}),
				}),
			},
        }),
      },
    }),
  }),
};