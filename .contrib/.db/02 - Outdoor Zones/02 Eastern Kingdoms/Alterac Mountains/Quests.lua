---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(ALTERAC_MOUNTAINS, {
			n(QUESTS, {
				q(8233, {	-- A Simple Request
					["qgs"] = {
						5165,	-- Hulfdan Blackbeard <Rogue Trainer>
						3328,	-- Ormok <Rogue Trainer>
						4163,	-- Syurna <Rogue Trainer>
						918,	-- Osborne the Night Man <Rogue Trainer>
						4583,	-- Miles Dexter <Rogue Trainer>
					},
					["coords"] = {
						{ 36.8, 21.8, DARNASSUS },	-- Syurna <Rogue Trainer>
						{ 51.6, 14.6, IRONFORGE },	-- Hulfdan Blackbeard <Rogue Trainer>
						{ 44.0, 54.6, ORGRIMMAR },	-- Ormok <Rogue Trainer>
						{ 74.6, 52.8, STORMWIND_CITY },	-- Osborne the Night Man <Rogue Trainer>
						{ 85.0, 75.2, UNDERCITY },	-- Miles Dexter <Rogue Trainer>
					},
					["classes"] = { ROGUE },
					["lvl"] = 50,
				}),
				q(522, {	-- Assassin's Contract
					["provider"] = { "i", 3668 },	-- Assassin's Contract
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
					["cost"] = {
						{ "i", 2843, 9 },	-- Dirty Knucklebones
					},
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
				q(1712, {	-- Cyclonian
					["qg"] = 6176,	-- Bath'rah the Windwatcher
					["sourceQuest"] = 1791,	-- The Windwatcher
					["coord"] = { 80.4, 66.8, ALTERAC_MOUNTAINS },
					["classes"] = { WARRIOR },
					["cost"] = {
						{ "i", 6929, 1 },	-- Bath'rah's Parchment
						{ "i", 3357, 8 },	-- Liferoot
						{ "i", 3901, 30 },	-- Bloodscalp Tusk
						{ "i", 6851, 1 },	-- Essence of the Exile
					},
					["lvl"] = 30,
				}),
				q(537, {	-- Dark Council
					["qg"] = 2276,	-- Magistrate Henry Maleb
					["sourceQuest"] = 525,	-- Further Mysteries
					["coord"] = { 48.2, 59.4, HILLSBRAD_FOOTHILLS },
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3672, 1 },	-- Head of Nagaz
					},
					["lvl"] = 30,
					["g"] = {
						{
							["itemID"] = 3672,	-- Head of Nagaz
							["questID"] = 537,	-- Dark Council
							["cr"] = 2320,	-- Nagaz
							["coord"] = { 39.6, 15.8, ALTERAC_MOUNTAINS },
						},
					},
				}),
				q(8235, {	-- Encoded Fragments
					["qg"] = 8379,	-- Archmage Xylem
					["sourceQuest"] = 8234,	-- Sealed Azure Bag
					["coord"] = { 29.6, 40.6, AZSHARA },
					["maps"] = { AZSHARA },
					["classes"] = { ROGUE },
					["cost"] = {
						{ "i", 20023, 10 },	-- Encoded Fragment
					},
					["lvl"] = 50,
				}),
				q(511, {	-- Encrypted Letter
					["providers"] = {
						{ "o", 1738 },	-- Syndicate Documents
						{ "o", 1740 },	-- Syndicate Documents
					},
					["coords"] = { 58.3, 68.0, ALTERAC_MOUNTAINS },
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3521, 1 },	-- Cleverly Encrypted Letter
					},
					["lvl"] = 30,
				}),
				q(1714, {	-- Essence of the Exile
					["qg"] = 6176,	-- Bath'rah the Windwatcher
					["sourceQuest"] = 1791,	-- The Windwatcher
					["coord"] = { 80.4, 66.8, ALTERAC_MOUNTAINS },
					["maps"] = { ARATHI_HIGHLANDS },
					["classes"] = { WARRIOR },
					["altQuests"] = {
						1712,	-- Cyclonian
					},
					["cost"] = {
						{ "i", 4479, 8 },	-- Burning Charm
						{ "i", 4481, 8 },	-- Cresting Charm
						{ "i", 4480, 8 },	-- Thundering Charm
					},
					["lvl"] = 30,
					["groups"] = {
						i(6851),	-- Essence of the Exile
					},
				}),
				q(510, {	-- Foreboding Plans
					["providers"] = {
						{ "o", 1738 },	-- Syndicate Documents
						{ "o", 1740 },	-- Syndicate Documents
					},
					["coords"] = { 58.3, 68.0, ALTERAC_MOUNTAINS },
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3718, 1 },	-- Foreboding Plans
					},
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
					["qg"] = 6707,	-- Fahrad <Grand Master Rogue>
					["coord"] = { 84.4, 80.3, ALTERAC_MOUNTAINS },
					["maxReputation"] = { 349, EXALTED },	-- Ravenholdt, Exalted.
					["repeatable"] = true,
					["cost"] = {
						{ "i", 16885, 5 },	-- Heavy Junkbox
					},
					["lvl"] = 50,
					["groups"] = {
						i(20086, {	-- Dusksteel Throwing Knife [Classic] / Broken Dusksteel Throwing Knife [TBC]
							["timeline"] = {
								"added 1.11.1.5462",
								"removed 2.0.1.5678"
							},
						}),
						un(TBC_PHASE_ONE, i(25878)),	-- Dusksteel Throwing Knife [TBC]
					},
				}),
				q(514, {	-- Letter to Stormpike
					["qg"] = 2277,	-- Loremaster Dibbs
					["sourceQuest"] = 511,	-- Encrypted Letter
					["coord"] = { 50.4, 57, HILLSBRAD_FOOTHILLS },
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3521, 1 },	-- Cleverly Encrypted Letter
					},
					["lvl"] = 30,
				}),
				q(512, {	-- Noble Deaths
					["qg"] = 2276,	-- Magistrate Henry Maleb
					["sourceQuest"] = 510,	-- Foreboding Plans
					["coord"] = { 48.2, 59.4, HILLSBRAD_FOOTHILLS },
					["maps"] = { HILLSBRAD_FOOTHILLS, ALTERAC_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3505, 7 },	-- Alterac Signet Ring
					},
					["lvl"] = 26,
				}),
				q(8234, {	-- Sealed Azure Bag
					["qg"] = 6768,	-- Lord Jorach Ravenholdt <Lord of the Assassin's League>
					["sourceQuest"] = 8233,	-- A Simple Request
					["coord"] = { 86.0, 79.0, ALTERAC_MOUNTAINS },
					["maps"] = { AZSHARA },
					["classes"] = { ROGUE },
					["cost"] = {
						{ "i", 19775, 1 },	-- Sealed Azure Bag
					},
					["lvl"] = 50,
					["groups"] = {
						{
							["itemID"] = 19775,	-- Sealed Azure Bag
							["questID"] = 8234,	-- Sealed Azure Bag
							["cr"] = 6188,	-- Timbermaw Shaman
							["coord"] = { 43.5, 25.4, AZSHARA },
						},
					},
				}),
				q(6701, {	-- Syndicate Emblems
					["qg"] = 6766,	-- Ravenholdt Guard <Assassin's League>
					["sourceQuest"] = 6681,	-- The Manor, Ravenholdt
					["coord"] = { 85.2, 79.4, ALTERAC_MOUNTAINS },
					["maxReputation"] = { 349, FRIENDLY },	-- Ravenholdt, Friendly.
					["classes"] = { ROGUE },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 17124, 1 },	-- Syndicate Emblem
					},
					["lvl"] = 24,
				}),
				q(8412, {	-- Spirit Totem
					["qg"] = 6176,	-- Bath'rah the Windwatcher
					["coords"] = { 80.4, 66.8, ALTERAC_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["classes"] = { SHAMAN },
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
					["provider"] = { "i", 17126 },
					["classes"] = { ROGUE },
					["description"] = "Speak with a Rogue Trainer and use select the chat option to receive the item that gives you this quest.\n\nDO NOT OPEN THE CHEST",
					["cost"] = {
						{ "i", 17125, 1 },	-- Seal of Ravenholdt
					},
					["lvl"] = 24,
				}),
				q(1713, {	-- The Summoning
					["qg"] = 6176,	-- Bath'rah the Windwatcher
					["sourceQuest"] = 1712,	-- Cyclonian
					["coord"] = { 80.4, 66.8, ALTERAC_MOUNTAINS },
					["classes"] = { WARRIOR },
					["cost"] = {
						{ "i", 6894, 1 },	-- Whirlwind Heart
					},
					["lvl"] = 30,
					["g"] = {
						{
							["itemID"] = 6894,	-- Whirlwind Heart
							["questID"] = 1713,	-- The Summoning
							["cr"] = 6239,	-- Cyclonian
							["coord"] = { 80.6, 62.6, ALTERAC_MOUNTAINS },
						},
					},
				}),
				q(535, {	-- Valik
					["qg"] = 2333,	-- Henchman Valik
					["coord"] = { 57.15, 69.50, ALTERAC_MOUNTAINS},
					["cost"] = {
						{ "i", 3703, 1 },	-- Southshore Stout
					},
					["cr"] = 2440,	-- Drunken Footpad
					["isBreadcrumb"] = true,
					["races"] = HORDE_ONLY,
					["lvl"] = 29,
					["g"] = {
						i(3601),	-- Syndicate Missive
					},
				}),
				q(1792, {	-- Whirlwind Weapon
					["qg"] = 6176,	-- Bath'rah the Windwatcher
					["sourceQuest"] = 1713,	-- The Summoning
					["classes"] = { WARRIOR },
					["lvl"] = 30,
					["groups"] = {
						i(6975),	-- Whirlwind Axe
						i(6977),	-- Whirlwind Sword
						i(6976),	-- Whirlwind Warhammer
					},
				}),
			}),
		}),
	}),
};