---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {	-- Eastern Kingdoms
		m(ALTERAC_MOUNTAINS, {	-- Alterac Mountains
			n(-17, {	-- Quests
				q(522, {	-- Assassin's Contract
					["provider"] = { "i", 3668 },	-- Assassin's Contract
					["cr"] = 2434,	-- Shadowy Assassin
					["coord"] = { 50.8, 58.8, HILLSBRAD_FOOTHILLS },
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(523, {	-- Baron's Demise
					["qg"] = 2276,	-- Magistrate Henry Maleb
					["sourceQuest"] = 522,	-- Assassin's Contract
					["coord"] = { 48.2, 59.4, HILLSBRAD_FOOTHILLS },
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(500, {	-- Crushridge Bounty
					["qg"] = 2263,	-- Marshal Redpath
					["coord"] = { 49.6, 58.6, HILLSBRAD_FOOTHILLS },
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(504, {	-- Crushridge Warmongers
					["qg"] = 2263,	-- Marshal Redpath
					["coord"] = { 49.6, 58.6, HILLSBRAD_FOOTHILLS },
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["g"] = {
						i(5249),	-- Burning Sliver
						i(3763),	-- Lunar Buckler
					},
				}),
				q(1712, { -- Cyclonian
					["lvl"] = 30,
					["classes"] = { 1 }, -- Warrior
					["qg"] = 6176, -- Bath'rah the Windwatcher
					["sourceQuest"] = 1791, -- The Windwatcher
				}),
				q(537, {	-- Dark Council
					["qg"] = 2276,	-- Magistrate Henry Maleb
					["sourceQuest"] = 525,	-- Further Mysteries
					["coord"] = { 48.2, 59.4, HILLSBRAD_FOOTHILLS },
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["cost"] = { "i", 3672 },	-- Head of Nagaz
				}),
				q(511, {	-- Encrypted Letter
					["providers"] = {
						{ "o", 1738 },	-- Syndicate Documents
						{ "o", 1740 },	-- Syndicate Documents
					},
					["coords"] = { 58.3, 68.0, ALTERAC_MOUNTAINS },
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(510, {	-- Foreboding Plans
					["providers"] = {
						{ "o", 1738 },	-- Syndicate Documents
						{ "o", 1740 },	-- Syndicate Documents
					},
					["coords"] = { 58.3, 68.0, ALTERAC_MOUNTAINS },
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 26,
				}),
				q(525, {	-- Further Mysteries
					["qg"] = 1356,	-- Prospector Stormpike
					["sourceQuest"] = 514,	-- Letter to Stormpike
					["coord"] = { 74.4, 12, IRONFORGE },
					["maps"] = { IRONFORGE, HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(8249, {	-- Junkboxes Needed
					["lvl"] = 50,
					["classes"] = { 4 },	-- Rogue
					["repeatable"] = true,
				}),
				q(514, {	-- Letter to Stormpike
					["qg"] = 2277,	-- Loremaster Dibbs
					["sourceQuest"] = 511,	-- Encrypted Letter
					["coord"] = { 50.4, 57, HILLSBRAD_FOOTHILLS },
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(512, {	-- Noble Deaths
					["qg"] = 2276,	-- Magistrate Henry Maleb
					["sourceQuest"] = 510,	-- Foreboding Plans
					["coord"] = { 48.2, 59.4, HILLSBRAD_FOOTHILLS },
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 26,
				}),
				q(8412, {	-- Spirit Totem
					["u"] = 3,	-- Added in later phase
					["qg"] = 6176,	-- Bath'rah the Windwatcher
					["coords"] = { 80.4, 66.8, ALTERAC_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["classes"] = {7},	-- Shaman
					["sourceQuest"] = 8410,	-- Elemental Mastery
					["lvl"] = 50,
					["cost"] = {
						{ "i", 20610, 8 },	-- Bloodshot Spider Eye
						{ "i", 20611, 8 },	-- Thick Black Claw
					},
				}),
				q(554, {	-- Stormpike's Deciphering
					["qg"] = 2277,	-- Loremaster Dibbs
					["sourceQuest"] = 551,	-- The Ensorcelled Parchment
					["coord"] = { 50.4, 57.0, HILLSBRAD_FOOTHILLS },
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(505, {	-- Syndicate Assassins
					["qg"] = 2276,	-- Magistrate Henry Maleb
					["coord"] = { 48.2, 59.4, HILLSBRAD_FOOTHILLS },
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 26,
					["g"] = {
						i(3758),	-- Crusader Belt
						i(3759),	-- Insulated Sage Gloves
					},
				}),
				q(6701, {	-- Syndicate Emblems
					["lvl"] = 24,
					["classes"] = { 4 },	-- Rogue
					["repeatable"] = true,
					["sourceQuest"] = 6681,	-- The Manor, Ravenholdt
				}),
				q(551, {	-- The Ensorcelled Parchment
					["providers"] = {
						{ "i", 3706 },	-- Ensorcelled Parchment
						{ "o", 1765 },	-- Worn Wooden Chest
					},
					["coord"] = { 39.2, 14.8, ALTERAC_MOUNTAINS },
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(6681, {	-- The Manor, Ravenholdt
					["lvl"] = 24,
					["classes"] = { 4 },	-- Rogue
				}),
				q(1713, { -- The Summoning
					["lvl"] = 30,
					["classes"] = { 1 }, -- Warrior
					["qg"] = 6176, -- Bath'rah the Windwatcher
					["sourceQuest"] = 1712, -- Cyclonian
				}),
				q(535, {	-- Valik
					["qg"] = 2333,	-- Henchman Valik
					["isBreadcrumb"] = true,
					["coord"] = { 57.15, 69.50, ALTERAC_MOUNTAINS},
					["cost"] = { "i", 3703 },	-- Southshore Stout
					["cr"] = 2440,	-- Drunken Footpad
					["races"] = HORDE_ONLY,
					["lvl"] = 29,
					["g"] = {
						i(3601),	-- Syndicate Missive
					},
				}),
				q(1792, { -- Whirlwind Weapon
					["lvl"] = 30,
					["classes"] = { 1 }, -- Warrior
					["qg"] = 6176, -- Bath'rah the Windwatcher
					["sourceQuest"] = 1713, -- The Summoning
					["groups"] = {
						i(6975), -- Whirlwind Axe
						i(6977), -- Whirlwind Sword
						i(6976), -- Whirlwind Warhammer
					},
				}),
			}),
		}),
	}),
};