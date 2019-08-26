---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {	-- Eastern Kingdoms
		m(-2, {	-- Alterac Mountains
			n(-17, {	-- Quests
				q(522, {	-- Assassin's Contract
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
				}),
				q(523, {	-- Baron's Demise
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2276,	-- Magistrate Henry Maleb
				}),
				q(500, {	-- Crushridge Bounty
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2263,	-- Marshal Redpath
				}),
				q(504, {	-- Crushridge Warmongers
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2263,	-- Marshal Redpath
					["g"] = {
						i(5249),	-- Burning Sliver
						i(3763),	-- Lunar Buckler
					},
				}),
				q(537, {	-- Dark Council
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2276,	-- Magistrate Henry Maleb
				}),
				q(511, {	-- Encrypted Letter
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qgs"] = {
					--["objectID"] = 1738,	-- Syndicate Documents
					--["objectID"] = 1740,	-- Syndicate Documents
					},
				}),
				q(510, {	-- Foreboding Plans
					["lvl"] = 26,
					["races"] = ALLIANCE_ONLY,
					["qgs"] = {
					--["objectID"] = 1738,	-- Syndicate Documents
					--["objectID"] = 1740,	-- Syndicate Documents
					},
				}),
				q(525, {	-- Further Mysteries
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 1356,	-- Prospector Stormpike
				}),
				q(514, {	-- Letter to Stormpike
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2277,	-- Loremaster Dibbs
				}),
				q(512, {	-- Noble Deaths
					["lvl"] = 26,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2276,	-- Magistrate Henry Maleb
				}),
				q(554, {	-- Stormpike's Deciphering
					["lvl"] = 28,
				}),
				q(505, {	-- Syndicate Assassins
					["lvl"] = 26,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 2276,	-- Magistrate Henry Maleb
					["g"] = {
						i(3758),	-- Crusader Belt
						i(3759),	-- Insulated Sage Gloves
					},
				}),
				q(551, {	-- The Ensorcelled Parchment
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
				}),
				q(535, {	-- Valik
					["lvl"] = 29,
					["races"] = HORDE_ONLY,
					["g"] = {
						i(3601),	-- Syndicate Missive
					},
				}),
			}),
		}),
	}),
};