_.PvP =
{
	n(-304, {	-- Battlegrounds
		m(ALTERAC_VALLEY, {	-- Alterac Valley
			["description"] = "Alterac Valley is a battleground players fight in frosty Alterac between the Frostwolf Clan (Horde) and Stormpike Guard (Alliance). Alterac Valley is notable both for how many people can queue per side (40) as well as how much honor each game rewards.",
			["maps"] = { ALTERAC_MOUNTAINS, HILLSBRAD_FOOTHILLS },
			["groups"] = {
				n(13419, {	-- Ivus the Forest Lord
					["isRaid"] = true,
					["groups"] = {
						un(NEVER_IMPLEMENTED, i(19110, {	-- Cold Forged Blade
							["timeline"] = {
								"added 1.5.0.4442",
								"removed 1.6.0.4500",
							},
						})),
						un(NEVER_IMPLEMENTED, i(19105, {	-- Frost Runed Headdress
							["timeline"] = {
								"added 1.5.0.4442",
								"removed 1.6.0.4500",
							},
						})),
						un(NEVER_IMPLEMENTED, i(19111, {	-- Winteraxe Epaulets
							["timeline"] = {
								"added 1.5.0.4442",
								"removed 1.6.0.4500",
							},
						})),
						un(NEVER_IMPLEMENTED, i(19112, {	-- Frozen Steel Vambraces
							["timeline"] = {
								"added 1.5.0.4442",
								"removed 1.6.0.4500",
							},
						})),
						un(NEVER_IMPLEMENTED, i(19113, {	-- Yeti Hide Bracers
							["timeline"] = {
								"added 1.5.0.4442",
								"removed 1.6.0.4500",
							},
						})),
						un(NEVER_IMPLEMENTED, i(19109, {	-- Deep Rooted Ring
							["timeline"] = {
								"added 1.5.0.4442",
								"removed 1.6.0.4500",
							},
						})),
					},
				}),
				n(13256, {	-- Lokholar the Ice Lord
					["isRaid"] = true,
					["groups"] = {
						un(NEVER_IMPLEMENTED, i(19110, {	-- Cold Forged Blade
							["timeline"] = {
								"added 1.5.0.4442",
								"removed 1.6.0.4500",
							},
						})),
						un(NEVER_IMPLEMENTED, i(19105, {	-- Frost Runed Headdress
							["timeline"] = {
								"added 1.5.0.4442",
								"removed 1.6.0.4500",
							},
						})),
						un(NEVER_IMPLEMENTED, i(19111, {	-- Winteraxe Epaulets
							["timeline"] = {
								"added 1.5.0.4442",
								"removed 1.6.0.4500",
							},
						})),
						un(NEVER_IMPLEMENTED, i(19112, {	-- Frozen Steel Vambraces
							["timeline"] = {
								"added 1.5.0.4442",
								"removed 1.6.0.4500",
							},
						})),
						un(NEVER_IMPLEMENTED, i(19113, {	-- Yeti Hide Bracers
							["timeline"] = {
								"added 1.5.0.4442",
								"removed 1.6.0.4500",
							},
						})),
						un(NEVER_IMPLEMENTED, i(19109, {	-- Deep Rooted Ring
							["timeline"] = {
								"added 1.5.0.4442",
								"removed 1.6.0.4500",
							},
						})),
					},
				}),
				n(EXPLORATION, {
					exploration(2959, "270:240:348:13"),	-- Dun Baldar
					exploration(3057, "300:300:335:172"),	-- Field of Strife
					exploration(2978, "235:290:399:375"),	-- Frostwolf Keep
				}),
				n(FACTIONS, {
					faction(729, {	-- Frostwolf Clan
						["icon"] = "Interface\\Icons\\inv_jewelry_frostwolftrinket_05",
						["races"] = HORDE_ONLY,
					}),
					faction(730, {	-- Stormpike Guard
						["icon"] = "Interface\\Icons\\INV_Jewelry_StormPikeTrinket_05",
						["races"] = ALLIANCE_ONLY,
					}),
				}),
				n(QUESTS, {
					q(7385, {	-- A Gallon of Blood
						["qg"] = 13236,	-- Primalist Thurloga
						["coord"] = { 50.1, 85.1, ALTERAC_VALLEY },
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 17306, 5 },	-- Stormpike Soldier's Blood
						},
						["lvl"] = 51,
					}),
					q(7081, {	-- Alterac Valley Graveyards
						["qg"] = 13777,	-- Sergeant Durgen Stormpike
						["coord"] = { 36.8, 77.2, ALTERAC_MOUNTAINS },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = 51,
					}),
					q(7223, {	-- Armor Scraps
						["qg"] = 13257,	-- Murgot Deepforge
						["coord"] = { 43.5, 15.5, ALTERAC_VALLEY },
						["races"] = ALLIANCE_ONLY,
						["cost"] = {
							{ "i", 17422, 20 },	-- Armor Scraps
						},
						["lvl"] = 51,
					}),
					q(7282, {	-- Brotherly Love (Alliance)
						["qg"] = 13320,	-- Commander Karl Philips
						["coord"] = { 50.9, 30.8, ALTERAC_VALLEY },
						["cr"] = 13154,	-- Commander Louis Philips
						["races"] = ALLIANCE_ONLY,
						["lvl"] = 51,
					}),
					q(7281, {	-- Brotherly Love (Horde)
						["qg"] = 13154,	-- Commander Louis Philips
						["coord"] = { 50.4, 65.5, ALTERAC_VALLEY },
						["cr"] = 13320,	-- Commander Karl Philips
						["races"] = HORDE_ONLY,
						["lvl"] = 51,
					}),
					q(6825, {	-- Call of Air - Guse's Fleet
						["qg"] = 13179,	-- Wing Commander Guse
						["coord"] = { 50, 32, ALTERAC_VALLEY },
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 17306, 1 },	-- Stormpike Soldier's Blood
						},
						["lvl"] = 51,
					}),
					q(6943, {	-- Call of Air - Ichman's Fleet
						["qg"] = 13437,	-- Wing Commander Ichman
						["coord"] = { 48.3, 84.3, ALTERAC_VALLEY },
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 17504, 1 },	-- Frostwolf Commander's Medal
						},
						["lvl"] = 51,
					}),
					q(6826, {	-- Call of Air - Jeztor's Fleet
						["qg"] = 13180,	-- Wing Commander Jeztor
						["coord"] = { 54.2, 25.4, ALTERAC_VALLEY },
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 17327, 1 },	-- Stormpike Lieutenant's Flesh
						},
						["lvl"] = 51,
					}),
					q(6827, {	-- Call of Air - Mulverick's Fleet
						["qg"] = 13181,	-- Wing Commander Mulverick
						["coord"] = { 45.1, 14.0, ALTERAC_VALLEY },
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 17328, 1 },	-- Stormpike Commander's Flesh
						},
						["lvl"] = 51,
					}),
					q(6942, {	-- Call of Air - Slidore's Fleet
						["qg"] = 13438,	-- Wing Commander Slidore
						["coord"] = { 50.6, 65.8, ALTERAC_VALLEY },
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 17502, 1 },	-- Frostwolf Soldier's Medal
						},
						["lvl"] = 51,
					}),
					q(6941, {	-- Call of Air - Vipore's Fleet
						["qg"] = 13439,	-- Wing Commander Vipore
						["coord"] = { 50.3, 81.6, ALTERAC_VALLEY },
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 17503, 1 },	-- Frostwolf Lieutenant's Medal
						},
						["lvl"] = 51,
					}),
					q(7122, {	-- Capture a Mine (Alliance)
						["qg"] = 13777,	-- Sergeant Durgen Stormpike
						["coord"] = { 36.8, 77.2, ALTERAC_MOUNTAINS },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = 51,
					}),
					q(7124, {	-- Capture a Mine (Horde)
						["qg"] = 13776,	-- Corporal Teeka Bloodsnarl
						["coord"] = { 65.6, 55.1, ALTERAC_MOUNTAINS },
						["races"] = HORDE_ONLY,
						["lvl"] = 51,
					}),
					q(6982, {	-- Coldtooth Supplies (Alliance)
						["qg"] = 12096,	-- Stormpike Quartermaster
						["coord"] = { 43.1, 17.6, ALTERAC_VALLEY },
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 17542, 10 },	-- Coldtooth Supplies
						},
						["lvl"] = 51,
					}),
					q(5893, {	-- Coldtooth Supplies (Horde)
						["qg"] = 12097,	-- Frostwolf Quartermaster
						["coord"] = { 46.6, 84.2, ALTERAC_VALLEY },
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 17542, 10 },	-- Coldtooth Supplies
						},
						["lvl"] = 51,
					}),
					q(7386, {	-- Crystal Cluster
						["qg"] = 13442,	-- Arch Druid Renferal
						["coord"] = { 43.9, 12.6, ALTERAC_VALLEY },
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 17423, 5 },	-- Storm Crystal
						},
						["lvl"] = 51,
					}),
					q(7170, {	-- Earned Reverence (Alliance)
						["qg"] = 13841,	-- Lieutenant Haggerdin
						["sourceQuest"] = 7169,	-- Honored Amongst the Guard
						["coord"] = { 39.6, 81.0, ALTERAC_MOUNTAINS },
						["minReputation"] = { 730, REVERED },  -- Stormpike Guard, Revered
						["races"] = ALLIANCE_ONLY,
						["cost"] = {
							{ "i", 17901, 1 },	-- Stormpike Insignia Rank 3
						},
						["lvl"] = 51,
						["groups"] = {
							i(17902),	-- Stormpike Insignia Rank 4
						},
					}),
					q(7165, {	-- Earned Reverence (Horde)
						["qg"] = 13840,	-- Warmaster Laggrond
						["sourceQuest"] = 7164,	-- Honored Amongst the Clan
						["coord"] = { 62.2, 59.0, ALTERAC_MOUNTAINS },
						["minReputation"] = { 729, REVERED },    -- Frostwolf Clan, Revered
						["races"] = HORDE_ONLY,
						["cost"] = {
							{ "i", 17906, 1 },	-- Frostwolf Insignia Rank 3
						},
						["lvl"] = 51,
						["groups"] = {
							i(17907),	-- Frostwolf Insignia Rank 4
						},
					}),
					q(7027, {	-- Empty Stables (Alliance)
						["qg"] = 13617,	-- Stormpike Stable Master <Stable Master>
						["coord"] = { 42.6, 16.8, ALTERAC_VALLEY },
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 17689, 1 },	-- Stormpike Training Collar
						},
						["lvl"] = 51,
					}),
					q(7001, {	-- Empty Stables (Horde)
						["qg"] = 13616,	-- Frostwolf Stable Master <Stable Master>
						["coord"] = { 57.2, 82.4, ALTERAC_VALLEY },
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 17626, 1 },	-- Frostwolf Muzzle
						},
						["lvl"] = 51,
					}),
					q(7224, {	-- Enemy Booty
						["qg"] = 13176,	-- Smith Regzar
						["coord"] = { 49.5, 82.7, ALTERAC_VALLEY },
						["races"] = HORDE_ONLY,
						["cost"] = {
							{ "i", 17422, 20 },	-- Armor Scraps
						},
						["lvl"] = 51,
					}),
					q(7301, {	-- Fallen Sky Lords (Alliance)
						["qg"] = 13319,	-- Commander Duffy
						["coord"] = { 49.0, 14.6, ALTERAC_VALLEY },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = 51,
					}),
					q(7302, {	-- Fallen Sky Lords (Horde)
						["qg"] = 13153,	-- Commander Mulfort
						["coord"] = { 49.5, 88.2, ALTERAC_VALLEY },
						["races"] = HORDE_ONLY,
						["lvl"] = 51,
					}),
					q(8272, {	-- Hero of the Frostwolf
						["qg"] = 13817,	-- Voggah Deathgrip
						["sourceQuest"] = 7142,	-- The Battle for Alterac
						["coord"] = { 63.6, 60.4, ALTERAC_MOUNTAINS },
						["races"] = HORDE_ONLY,
						["lvl"] = 51,
						["groups"] = {
							i(19107),	-- Bloodseeker
							i(20648),	-- Cold Forged Hamme
							i(19106),	-- Ice Barbed Spear
							i(19108),	-- Wand of Biting Cold
						},
					}),
					q(8271, {	-- Hero of the Stormpike
						["qg"] = 13816,	-- Prospector Stonehewer
						["sourceQuest"] = 7141,	-- The Battle of Alterac
						["coord"] = { 41.0, 79.6, ALTERAC_MOUNTAINS },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = 51,
						["groups"] = {
							i(19106),	-- Ice Barbed Spear
							i(19107),	-- Bloodseeker
							i(19108),	-- Wand of Biting Cold
							i(20648),	-- Cold Forged Hammer
						},
					}),
					q(7164, {	-- Honored Amongst the Clan
						["qg"] = 13840,	-- Warmaster Laggrond
						["sourceQuest"] = 7163,	-- Rise and Be Recognized
						["coord"] = { 62.2, 59.0, ALTERAC_MOUNTAINS },
						["minReputation"] = { 729, HONORED },    -- Frostwolf Clan, Honored
						["races"] = HORDE_ONLY,
						["cost"] = {
							{ "i", 17905, 1 },	-- Frostwolf Insignia Rank 2
						},
						["lvl"] = 51,
						["groups"] = {
							i(17906),  -- Frostwolf Insignia Rank 3
						},
					}),
					q(7169, {	-- Honored Amongst the Guard
						["qg"] = 13841,	-- Lieutenant Haggerdin
						["sourceQuest"] = 7168,	-- Rise and Be Recognized
						["coord"] = { 39.6, 81.0, ALTERAC_MOUNTAINS },
						["minReputation"] = { 730, HONORED },  -- Stormpike Guard, Honored
						["races"] = ALLIANCE_ONLY,
						["cost"] = {
							{ "i", 17900, 1 },	-- Stormpike Insignia Rank 2
						},
						["lvl"] = 51,
						["groups"] = {
							i(17901),	-- Stormpike Insignia Rank 3
						},
					}),
					q(7241, {	-- In Defense of Frostwolf
						["qg"] = 13842,	-- Frostwolf Ambassador Rokhstrom
						["coord"] = { 49.8, 71.2, ORGRIMMAR },
						["maps"] = { ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
						["lvl"] = 51,
					}),
					q(8369, {	-- Invaders of Alterac Valley
						["qg"] = 15350,	-- Horde Warbringer
						["races"] = HORDE_ONLY,
						["cost"] = {
							{ "i", 20560, 3 },	-- Alterac Valley Mark of Honor
						},
						["lvl"] = 51,
					}),
					q(8387, {	-- Invaders of Alterac Valley
						["qg"] = 15350,	-- Horde Warbringer
						["sourceQuest"] = 8369,	-- Invaders of Alterac Valley
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20560, 3 },	-- Alterac Valley Mark of Honor
						},
						["lvl"] = 51,
					}),
					q(5892, {	-- Irondeep Supplies (Alliance)
						["qg"] = 12096,	-- Stormpike Quartermaster
						["coord"] = { 43.1, 17.6, ALTERAC_VALLEY },
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 17522, 10 },	-- Irondeep Supplies
						},
						["lvl"] = 51,
					}),
					q(6985, {	-- Irondeep Supplies (Horde)
						["qg"] = 12097,	-- Frostwolf Quartermaster
						["coord"] = { 46.6, 84.2, ALTERAC_VALLEY },
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 17522, 10 },	-- Irondeep Supplies
						},
						["lvl"] = 51,
					}),
					q(6881, {	-- Ivus the Forest Lord
						["qg"] = 13442,	-- Arch Druid Renferal
						["coord"] = { 43.9, 12.6, ALTERAC_VALLEY },
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 17423, 1 },	-- Storm Crystal
						},
						["lvl"] = 51,
					}),
					q(7171, {	-- Legendary Heroes (Alliance)
						["qg"] = 13841,	-- Lieutenant Haggerdin
						["sourceQuest"] = 7170,	-- Earned Reverence
						["coord"] = { 39.6, 81.0, ALTERAC_MOUNTAINS },
						["minReputation"] = { 730, EXALTED },  -- Stormpike Guard, Exalted
						["races"] = ALLIANCE_ONLY,
						["cost"] = {
							{ "i", 17902, 1 },	-- Stormpike Insignia Rank 4
						},
						["lvl"] = 51,
						["groups"] = {
							i(17903),	-- Stormpike Insignia Rank 5
						},
					}),
					q(7166, {	-- Legendary Heroes (Horde)
						["qg"] = 13840,	-- Warmaster Laggrond
						["sourceQuest"] = 7165,	-- Earned Reverence
						["coord"] = { 62.2, 59.0, ALTERAC_MOUNTAINS },
						["minReputation"] = { 729, EXALTED },    -- Frostwolf Clan, Exalted
						["races"] = HORDE_ONLY,
						["cost"] = {
							{ "i", 17907, 1 },	-- Frostwolf Insignia Rank 4
						},
						["lvl"] = 51,
						["groups"] = {
							i(17908),  -- Frostwolf Insignia Rank 5
						},
					}),
					q(6801, {	-- Lokholar the Ice Lord
						["qg"] = 13236,	-- Primalist Thurloga
						["coord"] = { 50.1, 85.1, ALTERAC_VALLEY },
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 17306, 1 },	-- Stormpike Soldier's Blood
						},
						["lvl"] = 51,
					}),
					q(6781, {	-- More Armor Scraps
						["qg"] = 13257,	-- Murgot Deepforge
						["sourceQuest"] = 7223,	-- Armor Scraps
						["coord"] = { 43.5, 15.5, ALTERAC_VALLEY },
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 17422, 20 },	-- Armor Scraps
						},
						["lvl"] = 51,
					}),
					q(6741, {	-- More Booty!
						["qg"] = 13176,	-- Smith Regzar
						["sourceQuest"] = 7224,	-- Enemy Booty
						["coord"] = { 49.5, 82.7, ALTERAC_VALLEY },
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 17422, 20 },	-- Armor Scraps
						},
						["lvl"] = 51,
					}),
					q(7162, {	-- Proving Grounds (Alliance)
						["qg"] = 13841,	-- Lieutenant Haggerdin
						["sourceQuest"] = 7261,	-- The Sovereign Imperative
						["coord"] = { 39.6, 81.0, ALTERAC_MOUNTAINS },
						["races"] = ALLIANCE_ONLY,
						["cost"] = {
							{ "i", 17849, 1 },	-- Stormpike Banner
						},
						["lvl"] = 51,
						["groups"] = {
							i(17691),	-- Stormpike Insignia Rank 1
							i(19484),	-- The Frostwolf Artichoke
						},
					}),
					q(7161, {	-- Proving Grounds (Horde)
						["qg"] = 13840,	-- Warmaster Laggrond
						["sourceQuest"] = 7241,	-- In Defense of Frostwolf
						["coord"] = { 62.2, 59.0, ALTERAC_MOUNTAINS },
						["races"] = HORDE_ONLY,
						["lvl"] = 51,
						["groups"] = {
							i(17690),  -- Frostwolf Insignia Rank 1
							i(19483),  -- Peeling the Onion
						},
					}),
					q(7026, {	-- Ram Riding Harnesses (Alliance)
						["qg"] = 13577,	-- Stormpike Ram Rider Commander
						["coord"] = { 42.1, 17.2, ALTERAC_VALLEY },
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 17643, 1 },	-- Frostwolf Hide
						},
						["lvl"] = 51,
					}),
					q(7002, {	-- Ram Hide Harnesses (Horde)
						["qg"] = 13441,	-- Frostwolf Wolf Rider Commander
						["coord"] = { 57.0, 82.8, ALTERAC_VALLEY },
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 17642, 1 },	-- Alterac Ram Hide
						},
						["lvl"] = 51,
					}),
					q(8375, {	-- Remember Alterac Valley!
						["qg"] = 15351,	-- Alliance Brigadier General
						["races"] = ALLIANCE_ONLY,
						["cost"] = {
							{ "i", 20560, 3 },	-- Alterac Valey Mark of Honor
						},
						["lvl"] = 51,
					}),
					q(8383, {	-- Remember Alterac Valley!
						["qg"] = 15351,	-- Alliance Brigadier General
						["sourceQuest"] = 8375,	-- Remember Alterac Valley!
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["cost"] = {
							{ "i", 20560, 3 },	-- Alterac Valey Mark of Honor
						},
						["lvl"] = 51,
					}),
					q(7168, {	-- Rise and Be Recognized (Alliance)
						["qg"] = 13841,	-- Lieutenant Haggerdin
						["sourceQuest"] = 7162,	-- Proving Grounds
						["coord"] = { 39.6, 81.0, ALTERAC_MOUNTAINS },
						["minReputation"] = { 730, FRIENDLY },  -- Stormpike Guard, Friendly
						["races"] = ALLIANCE_ONLY,
						["cost"] = {
							{ "i", 17691, 1 },	-- Stormpike Insignia Rank 1
						},
						["lvl"] = 51,
						["groups"] = {
							i(17900),	-- Stormpike Insignia Rank 2
						},
					}),
					q(7163, {	-- Rise and Be Recognized (Horde)
						["qg"] = 13840,	-- Warmaster Laggrond
						["sourceQuest"] = 7161,	-- Proving Grounds
						["coord"] = { 62.2, 59.0, ALTERAC_MOUNTAINS },
						["minReputation"] = { 729, FRIENDLY },    -- Frostwolf Clan, Friendly
						["races"] = HORDE_ONLY,
						["cost"] = {
							{ "i", 17690, 1 },	-- Frostwolf Insignia Rank 1
						},
						["lvl"] = 51,
						["groups"] = {
							i(17905),  -- Frostwolf Insignia Rank 2
						},
					}),
					q(7123, {	-- Speak with our Quartermaster
						["qg"] = 13798,	-- Jotek
						["coord"] = { 50.8, 81.4, ALTERAC_VALLEY },
						["isBreadcrumb"] = true,
						["races"] = HORDE_ONLY,
						["lvl"] = 51,
					}),
					q(7141, {	-- The Battle of Alterac (Alliance)
						["qg"] = 13816,	-- Prospector Stonehewer
						-- ["sourceQuest"] = 7221,	-- Speak with Prospector Stonehewer [Not in WoW Classic]
						["coord"] = { 41.0, 79.6, ALTERAC_MOUNTAINS },
						["cr"] = 11946,	-- Drek'Thar <Frostwolf General>
						["races"] = ALLIANCE_ONLY,
						["lvl"] = 51,
					}),
					q(7142, {	-- The Battle for Alterac (Horde)
						["qg"] = 13817,	-- Voggah Deathgrip
						--["sourceQuest"] = 7222,	-- Speak with Voggah Deathgrip [Not in WoW Classic]
						["cr"] = 11948,	-- Vanndar Stormpike <Stormpike General>
						["coord"] = { 63.6, 60.4, ALTERAC_MOUNTAINS },
						["races"] = HORDE_ONLY,
						["lvl"] = 51,
					}),
					q(7172, {	-- The Eye of Command (Alliance)
						["qg"] = 13841,	-- Lieutenant Haggerdin
						["sourceQuest"] = 7171,	-- Legendary Heroes
						["coord"] = { 39.6, 81.0, ALTERAC_MOUNTAINS },
						["minReputation"] = { 730, EXALTED },  -- Stormpike Guard, 999/1000 Exalted
						["races"] = ALLIANCE_ONLY,
						["cost"] = {
							{ "i", 17903, 1 },	-- Stormpike Insignia Rank 5
						},
						["lvl"] = 51,
						["groups"] = {
							i(17904),	-- Stormpike Insignia Rank 6
						},
					}),
					q(7167, {	-- The Eye of Command (Horde)
						["qg"] = 13840,	-- Warmaster Laggrond
						["sourceQuest"] = 7166,	-- Legendary Heroes
						["coord"] = { 62.2, 59.0, ALTERAC_MOUNTAINS },
						["minReputation"] = { 729, EXALTED + 998 },    -- Frostwolf Clan, 999/1000 Exalted
						["races"] = HORDE_ONLY,
						["cost"] = {
							{ "i", 17908, 1 },	-- Frostwolf Insignia Rank 5
						},
						["lvl"] = 51,
						["groups"] = {
							i(17909),  -- Frostwolf Insignia Rank 6
						},
					}),
					q(7082, {	-- The Graveyards of Alterac
						["qg"] = 13776,	-- Corporal Teeka Bloodsnarl
						["coord"] = { 65.4, 55.2, ALTERAC_MOUNTAINS },
						["races"] = HORDE_ONLY,
						["lvl"] = 51,
					}),
					q(7121, {	-- The Quartermaster
						["qg"] = 13797,	-- Mountaineer Boombellow
						["coord"] = { 45.6, 16.7, ALTERAC_VALLEY },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
						["lvl"] = 51,
					}),
					q(7261, {	-- The Sovereign Imperative
						["qg"] = 13843,	-- Lieutenant Rotimer <Stormpike Guard Recruitment Officer>
						["coord"] = { 32.8, 64.6, IRONFORGE },
						["maps"] = { IRONFORGE },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
						["lvl"] = 51,
					}),
					q(7102, {	-- Towers and Bunkers (Alliance)
						["qg"] = 13777,	-- Sergeant Durgen Stormpike
						["coord"] = { 36.8, 77.2, ALTERAC_MOUNTAINS },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = 51,
					}),
					q(7101, {	-- Towers and Bunkers (Horde)
						["qg"] = 13776,	-- Corporal Teeka Bloodsnarl
						["coord"] = { 65.4, 55.2, ALTERAC_MOUNTAINS },
						["races"] = HORDE_ONLY,
						["lvl"] = 51,
					}),
				}),
				n(VENDORS, {
					n(13216, {	-- Gaelden Hammersmith <Stormpike Supply Officer>
						["coord"] = { 44.3, 18.3, ALTERAC_VALLEY },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(19100),	-- Electrified Dagger
							i(19102),	-- Crackling Staff
							i(19104),	-- Stormstrike Hammer
							i(19308),	-- Tome of Arcane Domination
							i(19309),	-- Tome of Shadow Force
							i(19310),	-- Tome of the Ice Lord
							i(19311),	-- Tome of Fiery Arcana
							i(19312),	-- Lei of the Lifegiver
							i(19315),	-- Therazane's Touch
							i(19321),	-- The Immovable Object
							i(19323),	-- The Unstoppable Force
							i(19324),	-- The Lobotomizer
							i(19325),	-- Don Julio's Band
							un(PHASE_FIVE, i(21563)),	-- Don Rodrigo's Band
							i(19030),	-- Stormpike Battle Charger
							i(19084),	-- Stormpike Soldier's Cloak
							i(19086),	-- Stormpike Sage's Cloak
							i(19091),	-- Stormpike Plate Girdle
							i(19092),	-- Stormpike Mail Girdle
							i(19093),	-- Stormpike Leather Girdle
							i(19094),	-- Stormpike Cloth Girdle
							i(19097),	-- Stormpike Soldier's Pendant
							i(19098),	-- Stormpike Sage's Pendant
							i(19301),	-- Alterac Manna Biscuit
							i(19319),	-- Harpy Hide Quiver
							i(19320),	-- Gnoll Skin Bandolier
							i(19307),	-- Alterac Heavy Runecloth Bandage
							i(17348),	-- Major Healing Draught
							i(17351),	-- Major Mana Draught
							i(19318),	-- Bottled Alterac Spring Water
							i(19316),	-- Ice Threaded Arrow
							i(19317),	-- Ice Threaded Bullet
							i(17349),	-- Superior Healing Draught
							i(17352),	-- Superior Mana Draught
							i(19032),	-- Stormpike Battle Tabard
							i(19045),	-- Stormpike Battle Standard
						},
					}),
					n(13218, {	-- Grunnda Wolfheart <Frostwolf Supply Officer>
						["coord"] = { 49.3, 82.5, ALTERAC_VALLEY },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(19099),	-- Glacial Blade
							i(19101),	-- Whiteout Staff
							i(19103),	-- Frostbite
							i(19308),	-- Tome of Arcane Domination
							i(19309),	-- Tome of Shadow Force
							i(19310),	-- Tome of the Ice Lord
							i(19311),	-- Tome of Fiery Arcana
							i(19312),	-- Lei of the Lifegiver
							i(19315),	-- Therazane's Touch
							i(19321),	-- The Immovable Object
							i(19323),	-- The Unstoppable Force
							i(19324),	-- The Lobotomizer
							i(19325),	-- Don Julio's Band
							un(PHASE_FIVE, i(21563)),	-- Don Rodrigo's Band
							i(19029),	-- Horn of the Frostwolf Howler
							i(19083),	-- Frostwolf Legionnaire's Cloak
							i(19085),	-- Frostwolf Advisor's Cloak
							i(19087),	-- Frostwolf Plate Belt
							i(19088),	-- Frostwolf Mail Belt
							i(19089),	-- Frostwolf Leather Belt
							i(19090),	-- Frostwolf Cloth Belt
							i(19095),	-- Frostwolf Legionnaire's Pendant
							i(19096),	-- Frostwolf Advisor's Pendant
							i(19301),	-- Alterac Manna Biscuit
							i(19319),	-- Harpy Hide Quiver
							i(19320),	-- Gnoll Skin Bandolier
							i(19307),	-- Alterac Heavy Runecloth Bandage
							i(17348),	-- Major Healing Draught
							i(17351),	-- Major Mana Draught
							i(19318),	-- Bottled Alterac Spring Water
							i(19316),	-- Ice Threaded Arrow
							i(19317),	-- Ice Threaded Bullet
							i(17349),	-- Superior Healing Draught
							i(17352),	-- Superior Mana Draught
							i(19031),	-- Frostwolf Battle Tabard
							i(19046),	-- Frostwolf Battle Standard
						},
					}),
					n(13219, {	-- Jekyll Flandring <Frostwolf Supply Officer>
						["coord"] = { 62.8, 59.4, ALTERAC_MOUNTAINS },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(19099),	-- Glacial Blade
							i(19101),	-- Whiteout Staff
							i(19103),	-- Frostbite
							i(19308),	-- Tome of Arcane Domination
							i(19309),	-- Tome of Shadow Force
							i(19310),	-- Tome of the Ice Lord
							i(19311),	-- Tome of Fiery Arcana
							i(19312),	-- Lei of the Lifegiver
							i(19315),	-- Therazane's Touch
							i(19321),	-- The Immovable Object
							i(19323),	-- The Unstoppable Force
							i(19324),	-- The Lobotomizer
							i(19325),	-- Don Julio's Band
							un(PHASE_FIVE, i(21563)),	-- Don Rodrigo's Band
							i(19029),	-- Horn of the Frostwolf Howler
							i(19083),	-- Frostwolf Legionnaire's Cloak
							i(19085),	-- Frostwolf Advisor's Cloak
							i(19087),	-- Frostwolf Plate Belt
							i(19088),	-- Frostwolf Mail Belt
							i(19089),	-- Frostwolf Leather Belt
							i(19090),	-- Frostwolf Cloth Belt
							i(19095),	-- Frostwolf Legionnaire's Pendant
							i(19096),	-- Frostwolf Advisor's Pendant
							i(19301),	-- Alterac Manna Biscuit
							i(19319),	-- Harpy Hide Quiver
							i(19320),	-- Gnoll Skin Bandolier
							i(19307),	-- Alterac Heavy Runecloth Bandage
							i(17348),	-- Major Healing Draught
							i(17351),	-- Major Mana Draught
							i(19318),	-- Bottled Alterac Spring Water
							i(19316),	-- Ice Threaded Arrow
							i(19317),	-- Ice Threaded Bullet
							i(17349),	-- Superior Healing Draught
							i(17352),	-- Superior Mana Draught
							i(19031),	-- Frostwolf Battle Tabard
							i(19046),	-- Frostwolf Battle Standard
						},
					}),
					n(13217, {	-- Thanthaldis Snowgleam <Stormpike Supply Officer>
						["coord"] = { 39.6, 81.6, ALTERAC_MOUNTAINS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(19100),	-- Electrified Dagger
							i(19102),	-- Crackling Staff
							i(19104),	-- Stormstrike Hammer
							i(19308),	-- Tome of Arcane Domination
							i(19309),	-- Tome of Shadow Force
							i(19310),	-- Tome of the Ice Lord
							i(19311),	-- Tome of Fiery Arcana
							i(19312),	-- Lei of the Lifegiver
							i(19315),	-- Therazane's Touch
							i(19321),	-- The Immovable Object
							i(19323),	-- The Unstoppable Force
							i(19324),	-- The Lobotomizer
							i(19325),	-- Don Julio's Band
							un(PHASE_FIVE, i(21563)),	-- Don Rodrigo's Band
							i(19030),	-- Stormpike Battle Charger
							i(19084),	-- Stormpike Soldier's Cloak
							i(19086),	-- Stormpike Sage's Cloak
							i(19091),	-- Stormpike Plate Girdle
							i(19092),	-- Stormpike Mail Girdle
							i(19093),	-- Stormpike Leather Girdle
							i(19094),	-- Stormpike Cloth Girdle
							i(19097),	-- Stormpike Soldier's Pendant
							i(19098),	-- Stormpike Sage's Pendant
							i(19301),	-- Alterac Manna Biscuit
							i(19319),	-- Harpy Hide Quiver
							i(19320),	-- Gnoll Skin Bandolier
							i(19307),	-- Alterac Heavy Runecloth Bandage
							i(17348),	-- Major Healing Draught
							i(17351),	-- Major Mana Draught
							i(19318),	-- Bottled Alterac Spring Water
							i(19316),	-- Ice Threaded Arrow
							i(19317),	-- Ice Threaded Bullet
							i(17349),	-- Superior Healing Draught
							i(17352),	-- Superior Mana Draught
							i(19032),	-- Stormpike Battle Tabard
							i(19045),	-- Stormpike Battle Standard
						},
					}),
				}),
				n(ZONEDROPS, {
					i(17422),	-- Armor Scraps
					i(18228),	-- Autographed Picture of Foror & Tigule
					i(18206),	-- Dwarf Spine
					i(17504),	-- Frostwolf Commander's Medal
					i(17503),	-- Frostwolf Lieutenant's Medal
					i(17502),	-- Frostwolf Soldier's Medal
					i(17423),	-- Storm Crystal
					i(17328),	-- Stormpike Commander's Flesh
					i(17327),	-- Stormpike Lieutenant's Flesh
					i(17306),	-- Stormpike Soldier's Blood
					i(17326),	-- Stormpike Soldier's Flesh
					i(18231),	-- Sleeveless T-Shirt
				}),
			},
		}),
	}),
};