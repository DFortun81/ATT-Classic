---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(WETLANDS, {
			n(ZONEDROPS, {
				i(3022, {	-- Bluegill Breeches
					["cr"] = 1028,	-- Bluegill Muckdweller
				}),
				i(2046, {	-- Bluegill Kukri
					["cr"] = 1027,	-- Bluegill Warrior
				}),
				i(1560, {	-- Bluegill Sandals
					["cr"] = 1025,	-- Bluegill Puddlejumper
				}),
				i(2611, {	-- Crude Flint
					["questID"] = 277,	-- Fire Taboo
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						14425,	-- Gnawbone
						1014,	-- Mosshide Alpha
						1012,	-- Mosshide Brute
						1010,	-- Mosshide Fenrunner
						1009,	-- Mosshide Mistweaver
						1013,	-- Mosshide Mystic
						1011,	-- Mosshide Trapper
					},
				}),
				i(2084, {	-- Darksteel Bastard Sword
					["cr"] = 1054,	-- Dark Iron Demolitionist
				}),
				i(1955, {	-- Dragonmaw Chain Boots
					["cr"] = 1035,	-- Dragonmaw Swamprunner
				}),
				i(753, {	-- Dragonmaw Shortsword
					["cr"] = 1036,	-- Dragonmaw Centurion
				}),
				i(7131, {	-- Dragonmaw Shinbone
					["races"] = HORDE_ONLY,
					["classes"] = { WARRIOR },
					["crs"] = {
						2091,	-- Chieftain Nek'rosh
						1037,	-- Dragonmaw Battlemaster
						1057,	-- Dragonmaw Bonewarder
						1036,	-- Dragonmaw Centurion
						1034,	-- Dragonmaw Raider
						1038,	-- Dragonmaw Shadowwarder
						1035,	-- Dragonmaw Swamprunner
					},
					["groups"] = {
						{
							["itemID"] = 7134,	-- Sturdy Dragonmaw Shinbone
							["questID"] = 1846,	-- Dragonmaw Shinbones
						},
					},
				}),
				i(3337, {	-- Dragonmaw War Banner
					["questID"] = 464,	-- War Banners
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						2091,	-- Chieftain Nek'rosh
						1037,	-- Dragonmaw Battlemaster
						1057,	-- Dragonmaw Bonewarder
						1036,	-- Dragonmaw Centurion
						1034,	-- Dragonmaw Raider
						1038,	-- Dragonmaw Shadowwarder
						1035,	-- Dragonmaw Swamprunner
					},
				}),
				i(11150, {	-- Formula: Enchant Gloves - Mining
					["crs"] = {
						1364,	-- Balgaras the Foul
						1054,	-- Dark Iron Demolitionist
						1051,	-- Dark Iron Dwarf
						1052,	-- Dark Iron Saboteur
						1053,	-- Dark Iron Tunneler
					},
				}),
				i(3348, {	-- Giant Crocolisk Skin
					["questID"] = 471,	-- Apprentice's Duties
					["races"] = ALLIANCE_ONLY,
					["cr"] = 2089,	-- Giant Wetlands Crocolisk
				}),
				i(892, {	-- Gnoll Casting Gloves
					["cr"] = 1009,	-- Mosshide Mistweaver
				}),
				i(3340, {	-- Incendicite Ore
					["questID"] = 466,	-- Search for Incendicite
					["races"] = ALLIANCE_ONLY,
				}),
				i(2702, {	-- Lightforge Ingot
					["questID"] = 526,	-- Lightforge Ingots
					["cr"] = 1418,	-- Bluegill Raider
					["races"] = ALLIANCE_ONLY,
					["altQuests"] = {
						324,	-- The Lost Ingots
					},
				}),
				i(2784, {	-- Musquash Root
					["coord"] = { 64.7, 75.5, WETLANDS },
				}),
				i(5788, {	-- Pattern: Thick Murloc Armor
					["cr"] = 1160,	-- Captain Halyndor
				}),
				i(6930, {	-- Rod of Channeling
					["allianceQuestID"] = 1804,	-- Tome of the Cabal
					["hordeQuestID"] = 1805,	-- Tome of the Cabal
					["classes"] = { WARLOCK },
					["crs"] = {
						1057,	-- Dragonmaw Bonewarder
						1038,	-- Dragonmaw Shadowwarder
					},
				}),
				i(6838, {	-- Scorched Spider Fang
					["questID"] = 1701,	-- Fire Hardened Mail
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["crs"] = {
						4040,	-- Cave Stalker
						1111,	-- Leech Stalker
					},
				}),
				i(3349, {	-- Sida's Bag
					["questID"] = 470,	-- Digging Through the Ooze
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						1032,	-- Black Ooze
						1031,	-- Crimson Ooze
						1033,	-- Monstrous Ooze
					},
				}),
				i(3076, {	-- Smoldering Boots
					["cr"] = 1042,	-- Red Whelp
				}),
				i(3074, {	-- Smoldering Gloves
					["cr"] = 1043,	-- Lost Whelp
				}),
				i(3073, {	-- Smoldering Pants
					["cr"] = 1069,	-- Crimson Whelp
				}),
				i(3072, {	-- Smoldering Robe
					["cr"] = 1044,	-- Flamesnorting Whelp
				}),
				i(6315, {	-- Steelarrow Crossbow
					["cr"] = 6523,	-- Dark Iron Rifleman
				}),
				i(5233, {	-- Stone of Relu
					["questID"] = 943,	-- The Absent Minded Prospector (5/5)
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						1020,	-- Mottled Raptor
						1023,	-- Mottled Razormaw
						1021,	-- Mottled Screecher
						1022,	-- Mottled Scytheclaw
					},
				}),
				i(8499, {	-- Tiny Crimson Whelpling
					["crs"] = {
						1069,	-- Crimson Whelp
						1044,	-- Flamesnorting Whelp
						1042,	-- Red Whelp
					},
				}),
				i(756, {	-- Tunnel Pick
					["cr"] = 1053,	-- Dark Iron Tunneler
				}),
				i(3397, {	-- Young Crocolisk Skin
					["questID"] = 484,	-- Young Crocolisk Skins
					["races"] = ALLIANCE_ONLY,
					["cr"] = 1417,	-- Young Wetlands Crocolisk
				}),
			}),
		}),
	}),
};