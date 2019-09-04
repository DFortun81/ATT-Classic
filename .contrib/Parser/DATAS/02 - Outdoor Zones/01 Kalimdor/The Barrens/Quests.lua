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
					["lvl"] = 14,
					["races"] = HORDE_ONLY,
					["qg"] = 3430,	-- Mangletooth
				}),
				q(5042, {	-- Agamaggan's Strength
					["lvl"] = 14,
					["races"] = HORDE_ONLY,
					["qg"] = 3430,	-- Mangletooth
				}),
				q(880, {	-- Altered Beings
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 3448,	-- Tonga Runetotem
				}),
				q(853, {	-- Apothecary Zamah
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 3390,	-- Apothecary Helbrim
					["g"] = {
						i(2458),	-- Elixir of Minor Fortitude
						i(2457),	-- Elixir of Minor Agility
						i(2456),	-- Minor Rejuvenation Potion
						i(2459),	-- Swiftness Potion
						i(5340),	-- Cauldron Stirrer
					},
				}),
				q(906, {	-- Betrayal from Within
					["lvl"] = 17,
					["races"] = HORDE_ONLY,
					["qg"] = 3430,	-- Mangletooth
					["g"] = {
						i(5316),	-- Barkshell Tunic
						i(5317),	-- Dry Moss Tunic
					},
				}),
				q(879, {	-- Betrayal from Within
					["lvl"] = 17,
					["races"] = HORDE_ONLY,
					["qg"] = 3430,	-- Mangletooth
				}),
				q(5052, {	-- Blood Shards of Agamaggan
					["lvl"] = 14,
					["races"] = HORDE_ONLY,
					["qg"] = 3430,	-- Mangletooth
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
				q(821, {	-- Chen's Empty Keg
					["lvl"] = 11,
					["races"] = HORDE_ONLY,
					["qg"] = 3292,	-- Brewmaster Drohn
					["g"] = {
						i(4952),	-- Stormstout
					},
				}),
				q(822, {	-- Chen's Empty Keg
					["lvl"] = 11,
					["races"] = HORDE_ONLY,
					["qg"] = 3292,	-- Brewmaster Drohn
					["g"] = {
						i(4953),	-- Trogg Brew
					},
				}),
				q(819, {	-- Chen's Empty Keg
					["lvl"] = 11,
					["races"] = HORDE_ONLY,
				}),
				q(899, {	-- Consumed by Hatred
					["lvl"] = 14,
					["races"] = HORDE_ONLY,
					["qg"] = 3432,	-- Mankrik
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
					["lvl"] = 15,
					["races"] = HORDE_ONLY,
					["qg"] = 3446,	-- Mebok Mizzyrix
				}),
				q(871, {	-- Disrupt the Attacks
					["lvl"] = 9,
					["races"] = HORDE_ONLY,
					["qgs"] = {
						3337,	-- Kargal Battlescar
						3429,	-- Thork
					},
				}),
				q(6385, {	-- Doras the Wind Rider Master
					["lvl"] = 10,
					["races"] = {
						2,	-- Orc
						8,  -- Troll
					},
					["qg"] = 6929,	-- Innkeeper Gryshka
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
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 3390,	-- Apothecary Helbrim
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
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
				}),
				q(1060, {	-- Letter to Jin'Zil
					["lvl"] = 15,
					["races"] = HORDE_ONLY,
					["qg"] = 3449,	-- Darsok Swiftdagger
				}),
				q(4921, {	-- Lost in Battle
					["lvl"] = 14,
					["races"] = HORDE_ONLY,
					["qg"] = 3432,	-- Mankrik
				}),
				q(874, {	-- Mahren Skyseer
					["lvl"] = 9,
					["races"] = HORDE_ONLY,
					["qg"] = 3387,	-- Jorn Skyseer
				}),
				q(6365, {	-- Meats to Orgrimmar
					["lvl"] = 10,
					["races"] = {
						2,	-- Orc
						8,  -- Troll
					},
					["qgs"] = {
						3489,	-- Zargh
						3881,	-- Grimtak
					},
				}),
				q(9267, {	-- Mending Old Wounds
					["lvl"] = 10,
					["qg"] = 16418,	-- Mupsi Shacklefridd
				}),
				q(896, {	-- Miner's Fortune
					["lvl"] = 13,
					["races"] = HORDE_ONLY,
					["qg"] = 3453,	-- Wharfmaster Dizzywig
					["g"] = {
						i(5335),	-- A Sack of Coins
					},
				}),
				q(3301, {	-- Mura Runetotem
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 3448,	-- Tonga Runetotem
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
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
				}),
				q(844, {	-- Plainstrider Menace
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 3338,	-- Sergra Darkthorn
				}),
				q(903, {	-- Prowlers of the Barrens
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 3338,	-- Sergra Darkthorn
				}),
				q(865, {	-- Raptor Horns
					["lvl"] = 13,
					["races"] = HORDE_ONLY,
					["qg"] = 3446,	-- Mebok Mizzyrix
					["g"] = {
						i(5342),	-- Raptor Punch
						i(5343),	-- Barkeeper's Cloak
					},
				}),
				q(869, {	-- Raptor Thieves
					["lvl"] = 9,
					["races"] = HORDE_ONLY,
					["qg"] = 3464,	-- Gazrog
				}),
				q(5046, {	-- Razorhide
					["lvl"] = 14,
					["races"] = HORDE_ONLY,
					["qg"] = 3430,	-- Mangletooth
				}),
				q(6541, {	-- Report to Kadrak
					["lvl"] = 17,
					["races"] = HORDE_ONLY,
					["qg"] = 3429,	-- Thork
				}),
				q(6364, {	-- Return to Jahan
					["lvl"] = 10,
					["races"] = {
						6,	-- Tauren
					},
					["qg"] = 2995,	-- Tal
				}),
				q(6386, {	-- Return to the Crossroads.
					["lvl"] = 10,
					["races"] = {
						2,	-- Orc
						8,  -- Troll
					},
					["qg"] = 3310,	-- Doras
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
					["lvl"] = 10,
					["races"] = {
						2,	-- Orc
						8,  -- Troll
					},
					["qg"] = 3615,	-- Devrak
				}),
				q(6362, {	-- Ride to Thunder Bluff
					["lvl"] = 10,
					["races"] = {
						6,	-- Tauren
					},
					["qg"] = 3615,	-- Devrak
				}),
				q(3923, {	-- Rilli Greasygob
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 9316,	-- Wenikee Boltbucket
				}),
				q(5045, {	-- Rising Spirit
					["lvl"] = 14,
					["races"] = HORDE_ONLY,
					["qg"] = 3430,	-- Mangletooth
				}),
				q(901, {	-- Samophlange
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					--["objectID"] = 4141,	-- Control Console
				}),
				q(900, {	-- Samophlange
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					--["objectID"] = 4141,	-- Control Console
				}),
				q(902, {	-- Samophlange
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					--["objectID"] = 4141,	-- Control Console
					["g"] = {
						i(5324),	-- Engineer's Hammer
						i(5325),	-- Welding Shield
					},
				}),
				q(894, {	-- Samophlange
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 3442,	-- Sputtervalve
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
				q(860, {	-- Sergra Darkthorn
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 3441,	-- Melor Stonehoof
				}),
				q(887, {	-- Southsea Freebooters
					["lvl"] = 9,
					["races"] = HORDE_ONLY,
					["qgs"] = {
						3391,	-- Gazlowe
						3453,	-- Wharfmaster Dizzywig
					},
				}),
				q(889, {	-- Spirit of the Wind
					["lvl"] = 14,
					["races"] = HORDE_ONLY,
					["qg"] = 3430,	-- Mangletooth
				}),
				q(888, {	-- Stolen Booty
					["lvl"] = 9,
					["races"] = HORDE_ONLY,
					["qg"] = 3391,	-- Gazlowe
					["g"] = {
						i(5337),	-- Wayfaring Gloves
						i(5320),	-- Padded Lamellar Boots
					},
				}),
				q(3281, {	-- Stolen Silver
					["lvl"] = 9,
					["races"] = HORDE_ONLY,
					["qg"] = 3464,	-- Gazrog
					["g"] = {
						i(11853),	-- Rambling Boots
						i(2694),	-- Settler's Leggings
					},
				}),
				q(5041, {	-- Supplies for the Crossroads
					["lvl"] = 9,
					["races"] = HORDE_ONLY,
					["qg"] = 3429,	-- Thork
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
					["lvl"] = 10,
				}),
				q(872, {	-- The Disruption Ends
					["lvl"] = 9,
					["races"] = HORDE_ONLY,
					["qgs"] = {
						3337,	-- Kargal Battlescar
						3429,	-- Thork
					},
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
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 3448,	-- Tonga Runetotem
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
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
				}),
				q(892, {	-- The Missing Shipment
					["lvl"] = 9,
					["races"] = HORDE_ONLY,
					["qg"] = 3453,	-- Wharfmaster Dizzywig
				}),
				q(890, {	-- The Missing Shipment
					["lvl"] = 9,
					["races"] = HORDE_ONLY,
					["qg"] = 3391,	-- Gazlowe
				}),
				q(3513, {	-- The Runed Scroll
					["lvl"] = 15,
					["races"] = HORDE_ONLY,
				}),
				q(877, {	-- The Stagnant Oasis
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 3448,	-- Tonga Runetotem
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
				}),
				q(845, {	-- The Zhevra
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
					["qg"] = 3338,	-- Sergra Darkthorn
				}),
				q(878, {	-- Tribes at War
					["lvl"] = 14,
					["races"] = HORDE_ONLY,
					["qg"] = 3430,	-- Mangletooth
				}),
				q(851, {	-- Verog the Dervish
					["lvl"] = 11,
					["races"] = HORDE_ONLY,
					["qg"] = 3389,	-- Regthar Deathgate
				}),
				q(895, {	-- WANTED: Baron Longshore
					["lvl"] = 11,
					["races"] = HORDE_ONLY,
					--["objectID"] = 3972,	-- WANTED
				}),
				q(885, {	-- Washte Pawne
					["lvl"] = 10,
					["races"] = HORDE_ONLY,
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
					["lvl"] = 9,
					["races"] = HORDE_ONLY,
					["qg"] = 3390,	-- Apothecary Helbrim
				}),
				q(5044, {	-- Wisdom of Agamaggan
					["lvl"] = 14,
					["races"] = HORDE_ONLY,
					["qg"] = 3430,	-- Mangletooth
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