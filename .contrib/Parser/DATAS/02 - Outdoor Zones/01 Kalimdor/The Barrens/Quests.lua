---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {	-- Kalimdor
		m(THE_BARRENS, {	-- The Barrens
			n(-17, {	-- Quests
				q(6361, {	-- A Bundle of Hides
					["lvl"] = 10,
					["races"] = {
						6,	-- Tauren
					},
					["qg"] = 3079,	-- Varg Windwhisper
				}),
				q(1153, {	-- A New Ore Sample
					["lvl"] = 25,
					["races"] = HORDE_ONLY,
					["qg"] = 3433,	-- Tatternack Steelforge
					["g"] = {
						i(6741),	-- Orcish War Sword
					},
				}),
				q(5043, {	-- Agamaggan's Agility
					["qg"] = 3430,	-- Mangletooth
					["repeatable"] = true,
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 14,
				}),
				q(5042, {	-- Agamaggan's Strength
					["qg"] = 3430,	-- Mangletooth
					["repeatable"] = true,
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 14,
				}),
				q(880, {	-- Altered Beings
					["qg"] = 3448,	-- Tonga Runetotem
					["sourceQuest"] = 877,	-- The Stagnant Oasis
					["coord"] = { 52.26, 31.92, THE_BARRENS },
					["cr"] = 3461,	-- Oasis Snapjaw
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(853, {	-- Apothecary Zamah
					["qg"] = 3390,	-- Apothecary Helbrim
					["sourceQuest"] = 848,	-- Fungal Spores
					["coord"] = { 51.44, 30.15, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					["g"] = {
						i(2458),	-- Elixir of Minor Fortitude
						i(2457),	-- Elixir of Minor Agility
						i(2456),	-- Minor Rejuvenation Potion
						i(2459),	-- Swiftness Potion
						i(5340),	-- Cauldron Stirrer
					},
				}),
				q(906, {	-- Betrayal from Within
					["qg"] = 3430,	-- Mangletooth
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
					["g"] = {
						i(5316),	-- Barkshell Tunic
						i(5317),	-- Dry Moss Tunic
					},
				}),
				q(879, {	-- Betrayal from Within
					["qg"] = 3430,	-- Mangletooth
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
				}),
				q(5052, {	-- Blood Shards of Agamaggan
					["qg"] = 3430,	-- Mangletooth
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 14,
				}),
				q(855, {	-- Centaur Bracers
					["lvl"] = 9,
					["races"] = HORDE_ONLY,
					["qg"] = 3389,	-- Regthar Deathgate
					["g"] = {
						i(5346),	-- Orcish Battle Bow
						i(5344),	-- Pointed Axe
						i(5345),	-- Stonewood Hammer
					},
				}),
				q(819, {	-- Chen's Empty Keg
					["lvl"] = 11,
					["races"] = HORDE_ONLY,
					["description"] = "Started by picking up one of the many kegs littered throughout the Barrens.",
				}),
				q(821, {	-- Chen's Empty Keg
					["qg"] = 3292,	-- Brewmaster Drohn
					["sourceQuest"] = 819,	-- Chen's Empty Keg
					["coord"] = { 62.27, 38.39, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 11,
					["g"] = {
						i(4952),	-- Stormstout
					},
				}),
				q(822, {	-- Chen's Empty Keg
					["qg"] = 3292,	-- Brewmaster Drohn
					["sourceQuest"] = 821,	-- Chen's Empty Keg
					["repeatable"] = true,
					["coord"] = { 62.27, 38.39, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 11,
					["g"] = {
						i(4953),	-- Trogg Brew
					},
					-- Quest name does not show! Maybe not part of phase 1?
				}),
				q(899, {	-- Consumed by Hatred
					["qg"] = 3432,	-- Mankrik
					["coord"] = { 51.95, 31.58, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 14,
					["g"] = {
						i(5314),	-- Boar Hunter's Cape
						i(6477),	-- Grassland Sash
					},
				}),
				q(4021, {	-- Counterattack!
					["lvl"] = 11,
					["races"] = HORDE_ONLY,
					["qg"] = 3389,	-- Regthar Deathgate
				}),
				q(913, {	-- Cry of the Thunderhawk
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 3387,	-- Jorn Skyseer
					["g"] = {
						i(5302),	-- Cobalt Buckler
						i(5306),	-- Wind Rider Staff
						i(5299),	-- Gloves of the Moon
					},
				}),
				q(1069, {	-- Deepmoss Spider Eggs
					["qg"] = 3446,	-- Mebok Mizzyrix
					["coord"] = { 62.37, 37.32, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 15,
				}),
				q(871, {	-- Disrupt the Attacks
					["qg"] = 3429,	-- Thork
					["coord"] = { 51.50, 30.86, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
				}),
				q(6385, {	-- Doras the Wind Rider Master
					["qg"] = 6929,	-- Innkeeper Gryshka
					["sourceQuest"] = 6384,	-- Ride to Orgrimmar
					["coord"] = { 54.09, 68.43, ORGRIMMAR },
					["maps"] = { ORGRIMMAR },
					["races"] = {
						2,	-- Orc
						8,  -- Troll
					},
					["lvl"] = 10,
				}),
				q(881, {	-- Echeyakee
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 3338,	-- Sergra Darkthorn
				}),
				q(868, {	-- Egg Hunt
					["lvl"] = 17,
					["races"] = HORDE_ONLY,
					["qg"] = 3428,	-- Korran
					["g"] = {
						i(6503),	-- Harlequin Robes
						i(6502),	-- Violet Scale Armor
					},
				}),
				q(907, {	-- Enraged Thunder Lizards
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 3387,	-- Jorn Skyseer
				}),
				q(1503, { -- Forged Steel
					["qg"] = 5878,	-- Thun'grim Firegaze
					["sourceQuest"] = 1502,	-- Thun'grim Firegaze
					["coord"] = { 57.23, 30.34, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["classes"] = { 1 },	-- Warrior
					["lvl"] = 10,
					["g"] = {
						i(7326),	-- Thun'grim's Axe
						i(7327),	-- Thun'grim's Dagger
						i(7328),	-- Thun'grim's Mace
						i(7329),	-- Thun'grim's Sword
					}
				}),
				q(898, {	-- Free From the Hold
					["lvl"] = 13,
					["races"] = HORDE_ONLY,
					["qg"] = 3465,	-- Gilthares Firebough
					["g"] = {
						i(5311),	-- Buckled Boots
						i(5312),	-- Riveted Gauntlets
					},
				}),
				q(848, {	-- Fungal Spores
					["qg"] = 3390,	-- Apothecary Helbrim
					["coord"] = { 51.44, 30.15, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(843, {	-- Gann's Reclamation
					["lvl"] = 17,
					["races"] = HORDE_ONLY,
					["qg"] = 3341,	-- Gann Stonespire
				}),
				q(875, {	-- Harpy Lieutenants
					["lvl"] = 12,
					["races"] = HORDE_ONLY,
					["qg"] = 3449,	-- Darsok Swiftdagger
				}),
				q(867, {	-- Harpy Raiders
					["lvl"] = 12,
					["races"] = HORDE_ONLY,
					["qg"] = 3449,	-- Darsok Swiftdagger
				}),
				q(852, {	-- Hezrul Bloodmark
					["lvl"] = 11,
					["races"] = HORDE_ONLY,
					["qg"] = 3389,	-- Regthar Deathgate
					["g"] = {
						i(5351),	-- Bounty Hunter's Ring
					},
				}),
				q(3514, {	-- Horde Presence
					["lvl"] = 15,
					["races"] = HORDE_ONLY,
					["qg"] = 8582,	-- Kadrak
					["g"] = {
						i(10653),	-- Trailblazer Boots
						i(10654),	-- Jutebraid Gloves
					},
				}),
				q(858, {	-- Ignition
					["lvl"] = 13,
					["races"] = HORDE_ONLY,
					["qg"] = 3439,	-- Wizzlecrank's Shredder
				}),
				q(3370, {	-- In Nightmares
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(10657),	-- Talbar Mantle
						i(10658),	-- Quagmire Galoshes
					},
				}),
				q(3369, {	-- In Nightmares
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 8418,	-- Falla Sagewind
					["g"] = {
						i(10657),	-- Talbar Mantle
						i(10658),	-- Quagmire Galoshes
					},
				}),
				q(873, {	-- Isha Awak
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 3388,	-- Mahren Skyseer
					["g"] = {
						i(5356),	-- Branding Rod
						i(5357),	-- Ward of the Vale
						i(5355),	-- Beastmaster's Girdle
					},
				}),
				q(882, {	-- Ishamuhale
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 3387,	-- Jorn Skyseer
					["g"] = {
						i(10338),	-- Fresh Zhevra Carcass
					},
				}),
				q(3261, {	-- Jorn Skyseer
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 3338,	-- Sergra Darkthorn
				}),
				q(850, {	-- Kolkar Leaders
					["lvl"] = 11,
					["races"] = HORDE_ONLY,
					["qg"] = 3389,	-- Regthar Deathgate
				}),
				q(883, {	-- Lakota'mani
					["provider"] = { "i", 5099 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(1060, {	-- Letter to Jin'Zil
					["lvl"] = 15,
					["races"] = HORDE_ONLY,
					["qg"] = 3449,	-- Darsok Swiftdagger
				}),
				q(4921, {	-- Lost in Battle
					["qg"] = 3432,	-- Mankrik
					["coord"] = { 51.95, 31.58, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 14,
				}),
				q(874, {	-- Mahren Skyseer
					["lvl"] = 9,
					["races"] = HORDE_ONLY,
					["qg"] = 3387,	-- Jorn Skyseer
				}),
				q(6365, {	-- Meats to Orgrimmar
					["qg"] = 3489,	-- Zargh
					["coord"] = { 52.62, 29.84, THE_BARRENS },
					["races"] = {
						2,	-- Orc
						8,  -- Troll
					},
					["lvl"] = 10,
				}),
				q(9267, {	-- Mending Old Wounds
					["qg"] = 16418,	-- Mupsi Shacklefridd
					["repeatable"] = true,
					["coord"] = { 61.22, 37.86, THE_BARRENS },
					["lvl"] = 10,
					-- Quest name does not show! Maybe not part of phase 1?
				}),
				q(896, {	-- Miner's Fortune
					["qg"] = 3453,	-- Wharfmaster Dizzywig
					["coord"] = { 63.35, 38.45, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 13,
					["g"] = {
						i(5335),	-- A Sack of Coins
					},
				}),
				q(3301, {	-- Mura Runetotem
					["qg"] = 3448,	-- Tonga Runetotem
					["sourceQuest"] = 880,	-- Altered Beings
					["coord"] = { 52.26, 31.92, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					["g"] = {
						i(10820),	-- Jackseed Belt
						i(10821),	-- Sower's Cloak
					},
				}),
				q(3922, {	-- Nugget Slugs
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 9316,	-- Wenikee Boltbucket
				}),
				q(884, {	-- Owatanka
					["provider"] = { "i", 5102 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(844, {	-- Plainstrider Menace
					["qg"] = 3338,	-- Sergra Darkthorn
					["sourceQuests"] = {
						861,	-- The Hunter's Way
						860,	-- Sergra Darkthorn
					},
					["coord"] = { 52.23, 31.01, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(903, {	-- Prowlers of the Barrens
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 3338,	-- Sergra Darkthorn
				}),
				q(865, {	-- Raptor Horns
					["qg"] = 3446,	-- Mebok Mizzyrix
					["coord"] = { 62.37, 37.32, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 13,
					["g"] = {
						i(5342),	-- Raptor Punch
						i(5343),	-- Barkeeper's Cloak
					},
				}),
				q(869, {	-- Raptor Thieves
					["qg"] = 3464,	-- Gazrog
					["coord"] = { 51.93, 30.32, THE_BARRENS },
					["crs"] = {
						3254,	-- Sunscale Lashtail
						3255,	-- Sunscale Screecher
						3256,	-- Sunscale Scytheclaw
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
				}),
				q(5046, {	-- Razorhide
					["qg"] = 3430,	-- Mangletooth
					["repeatable"] = true,
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 14,
				}),
				q(6541, {	-- Report to Kadrak
					["qg"] = 3429,	-- Thork
					["coord"] = { 51.50, 30.86, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
				}),
				q(6364, {	-- Return to Jahan
					["lvl"] = 10,
					["races"] = {
						6,	-- Tauren
					},
					["qg"] = 2995,	-- Tal
				}),
				q(6386, {	-- Return to the Crossroads.
					["qg"] = 3310,	-- Doras
					["sourceQuest"] = 6385,	-- Doras the Wind Rider Master
					["coord"] = { 45.21, 63.58, ORGRIMMAR },
					["maps"] = { ORGRIMMAR },
					["races"] = {
						2,	-- Orc
						8,  -- Troll
					},
					["lvl"] = 10,
				}),
				q(849, {	-- Revenge of Gann
					["lvl"] = 17,
					["races"] = HORDE_ONLY,
					["qg"] = 3341,	-- Gann Stonespire
					["g"] = {
						i(5313),	-- Totemic Clan Ring
					},
				}),
				q(846, {	-- Revenge of Gann
					["lvl"] = 17,
					["races"] = HORDE_ONLY,
					["qg"] = 3341,	-- Gann Stonespire
				}),
				q(6384, {	-- Ride to Orgrimmar
					["qg"] = 3615,	-- Devrak
					["sourceQuest"] = 6365,	-- Meats to Orgrimmar
					["coord"] = { 51.50, 30.34, THE_BARRENS },
					["lvl"] = 10,
					["races"] = {
						2,	-- Orc
						8,  -- Troll
					},
				}),
				q(6362, {	-- Ride to Thunder Bluff
					["qg"] = 3615,	-- Devrak
					["coord"] = { 51.50, 30.34, THE_BARRENS },
					["races"] = { 6, },	-- Tauren
					["lvl"] = 10,
				}),
				q(3923, {	-- Rilli Greasygob
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 9316,	-- Wenikee Boltbucket
				}),
				q(5045, {	-- Rising Spirit
					["qg"] = 3430,	-- Mangletooth
					["repeatable"] = true,
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 14,
				}),
				q(894, {	-- Samophlange
					["qg"] = 3442,	-- Sputtervalve
					["coord"] = { 62.98, 37.21, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(900, {	-- Samophlange
					["provider"] = { "o", 4141 },	-- Control Console
					["sourceQuest"] = 894,	-- Samophlange
					--["coord"] = { , , THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(901, {	-- Samophlange
					["provider"] = { "o", 4141 },	-- Control Console
					["sourceQuest"] = 900,	-- Samophlange
					--["coord"] = { , , THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(902, {	-- Samophlange
					["provider"] = { "o", 4141 },	-- Control Console
					["sourceQuest"] = 901,	-- Samophlange
					--["coord"] = { , , THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
					["g"] = {
						i(5324),	-- Engineer's Hammer
						i(5325),	-- Welding Shield
					},
				}),
				q(3924, {	-- Samophlange Manual
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 9317,	-- Rilli Greasygob
					["g"] = {
						i(11855),	-- Tork Wrench
						i(11854),	-- Samophlange Screwdriver
						i(11147),	-- Samophlange Manual Cover
						i(11148),	-- Samophlange Manual Page
					},
				}),
				q(876, {	-- Serena Bloodfeather
					["lvl"] = 12,
					["races"] = HORDE_ONLY,
					["qg"] = 3449,	-- Darsok Swiftdagger
					["g"] = {
						i(5321),	-- Elegant Shortsword
						i(5279),	-- Harpy Skinner
						i(5318),	-- Zhovur Axe
					},
				}),
				q(887, {	-- Southsea Freebooters
					["qg"] = 3391,	-- Gazlowe
					["coord"] = {62.68, 36.24, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
				}),
				q(889, {	-- Spirit of the Wind
					["qg"] = 3430,	-- Mangletooth
					["repeatable"] = true,
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 14,
				}),
				q(888, {	-- Stolen Booty
					["qg"] = 3391,	-- Gazlowe
					["sourceQuest"] = 892,	-- The Missing Shipment
					["coord"] = {62.68, 36.24, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
					["g"] = {
						i(5337),	-- Wayfaring Gloves
						i(5320),	-- Padded Lamellar Boots
					},
				}),
				q(3281, {	-- Stolen Silver
					["qg"] = 3464,	-- Gazrog
					["sourceQuest"] = 869,	-- Raptor Thieves
					["coord"] = { 51.93, 30.32, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
					["g"] = {
						i(11853),	-- Rambling Boots
						i(2694),	-- Settler's Leggings
					},
				}),
				q(5041, {	-- Supplies for the Crossroads
					["qg"] = 3429,	-- Thork
					["coord"] = { 51.50, 30.86, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
				}),
				q(6363, {	-- Tal the Wind Rider Master
					["lvl"] = 10,
					["races"] = {
						6,	-- Tauren
					},
					["qg"] = 8359,	-- Ahanu
				}),
				q(905, {	-- The Angry Scytheclaws
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 3338,	-- Sergra Darkthorn
					["g"] = {
						i(5165),	-- Sunscale Feather
					},
				}),
				q(6382, {	-- The Ashenvale Hunt
					["lvl"] = 20,
					["races"] = HORDE_ONLY,
					["qg"] = 3387,	-- Jorn Skyseer
				}),
				q(886, {	-- The Barrens Oases
					["qg"] = 5769,	-- Arch Druid Hamuul Runetotem
					--["coord"] = { , , THUNDER_BLUFF },
					["isBreadcrumb"] = true,
					["maps"] = { THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(872, {	-- The Disruption Ends
					["qg"] = 3429,	-- Thork
					["sourceQuest"] = 871,	-- Disrupt the Attacks
					["coord"] = { 51.50, 30.86, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
					["g"] = {
						i(5275),	-- Binding Girdle
						i(5328),	-- Cinched Belt
					},
				}),
				q(863, {	-- The Escape
					["lvl"] = 13,
					["races"] = HORDE_ONLY,
					["qg"] = 3439,	-- Wizzlecrank's Shredder
					["g"] = {
						i(5326),	-- Flaring Baton
						i(5327),	-- Greasy Tinker's Pants
					},
				}),
				q(870, {	-- The Forgotten Pools
					["qg"] = 3448,	-- Tonga Runetotem
					["sourceQuest"] = 886,	-- The Barrens Oases
					["coord"] = { 52.26, 31.92, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(891, {	-- The Guns of Northwatch
					["lvl"] = 13,
					["races"] = HORDE_ONLY,
					["qg"] = 3339,	-- Captain Thalo'thas Brightsun
					["g"] = {
						i(5309),	-- Privateer Musket
						i(5310),	-- Sea Dog Britches
					},
				}),
				q(897, {	-- The Harvester
					["provider"] = { "i", 5138 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(892, {	-- The Missing Shipment
					["qg"] = 3453,	-- Wharfmaster Dizzywig
					["coord"] = { 63.35, 38.45, THE_BARRENS },
					["sourceQuest"] = 890,	-- The Missing Shipment
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
				}),
				q(890, {	-- The Missing Shipment
					["qg"] = 3391,	-- Gazlowe
					["sourceQuest"] = 887,	-- Southsea Freebooters
					["coord"] = {62.68, 36.24, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
				}),
				q(3513, {	-- The Runed Scroll
					["provider"] = { "i", 10621 },
					["races"] = HORDE_ONLY,
					["lvl"] = 15,
				}),
				q(877, {	-- The Stagnant Oasis
					["qg"] = 3448,	-- Tonga Runetotem
					["sourceQuest"] = 870,	-- The Forgotten Pools
					["coord"] = { 52.26, 31.92, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(1145, {	-- The Swarm Grows
					["lvl"] = 29,
					["races"] = HORDE_ONLY,
					["qg"] = 3428,	-- Korran
				}),
				q(857, {	-- The Tear of the Moons
					["lvl"] = 22,
					["races"] = HORDE_ONLY,
					["qg"] = 3421,	-- Feegly the Exiled
				}),
				q(6543, {	-- The Warsong Reports
					["lvl"] = 17,
					["races"] = HORDE_ONLY,
					["qg"] = 8582,	-- Kadrak
					["sourceQuests"] = { 6542, 6541 },	-- Report to Kadrak
				}),
				q(845, {	-- The Zhevra
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 3338,	-- Sergra Darkthorn
				}),
				q(1502, { -- Thun'grim Firegaze
					["qg"] = 5810,	-- Uzzek
					["sourceQuest"] = 1498,	-- Path of Defense
					--["isBreadcrumb"],	-- Possible, since quest 3/4 of the UD chain is breadcrumb.
					["coord"] = { 61.38, 21.11, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["classes"] = { 1 },	-- Warrior
					["lvl"] = 10,
				}),
				q(878, {	-- Tribes at War
					["qg"] = 3430,	-- Mangletooth
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 14,
				}),
				q(851, {	-- Verog the Dervish
					["lvl"] = 11,
					["races"] = HORDE_ONLY,
					["qg"] = 3389,	-- Regthar Deathgate
				}),
				q(895, {	-- WANTED: Baron Longshore
					["provider"] = { "o", 3972 },
					["coord"] = { 62.59, 37.47, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 11,
				}),
				q(885, {	-- Washte Pawne
					["provider"] = { "i", 5103 },
					["races"] = HORDE_ONLY,
					["lvl"] = 10,
				}),
				q(893, {	-- Weapons of Choice
					["lvl"] = 17,
					["races"] = HORDE_ONLY,
					["qg"] = 3433,	-- Tatternack Steelforge
					["g"] = {
						i(5322),	-- Demolition Hammer
						i(5323),	-- Everglow Lantern
					},
				}),
				q(3921, {	-- Wenikee Boltbucket
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 3442,	-- Sputtervalve
				}),
				q(1492, {	-- Wharfmaster Dizzywig
					["qg"] = 3390,	-- Apothecary Helbrim
					["coord"] = { 51.44, 30.15, THE_BARRENS },
					["maps"] = { UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
				}),
				q(5044, {	-- Wisdom of Agamaggan
					["qg"] = 3430,	-- Mangletooth
					["repeatable"] = true,
					["coord"] = { 44.55, 59.26, THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 14,
				}),
				q(1483, {	-- Ziz Fizziks
					["lvl"] = 16,
					["races"] = HORDE_ONLY,
					["qg"] = 3442,	-- Sputtervalve
				}),
			}),
		}),
	}),
};