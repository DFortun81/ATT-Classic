_.PvP = 
{
  n(-304, { -- Battlegrounds
    m(91, { -- Alterac Valley
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
              q(7224, { -- Enemy Booty
                ["lvl"] = 51,
                ["races"] = HORDE_ONLY,
                ["qg"] = 13176, -- Smith Regzar
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
              q(8369, { -- Invaders of Alterac Valley
                ["lvl"] = 51,
                ["races"] = HORDE_ONLY,
                ["qg"] = 15350, -- Horde Warbringer
              }),
              q(6741, { -- More Booty!
                ["lvl"] = 51,
                ["races"] = HORDE_ONLY,
                ["qg"] = 13176, -- Smith Regzar
                ["repeatable"] = true,
              }),
              q(7082, { -- The Graveyards of Alterac
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
              }),
              q(7281, { -- Brotherly Love (Alliance)
                ["lvl"] = 51,
                ["races"] = ALLIANCE_ONLY,
                ["qg"] = 13320, -- Commander Karl Philips
              }),
            }),
          },
        }),
      },
    }),
  }),
};