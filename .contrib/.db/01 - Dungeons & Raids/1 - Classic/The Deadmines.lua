-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
_.Instances = { tier(1, {	-- Classic
	map(DEADMINES, {
		["description"] = "Once the greatest gold production center in the human lands, the Dead Mines were abandoned when the Horde razed Stormwind city during the First War. Now the Defias Brotherhood has taken up residence and turned the dark tunnels into their private sanctum. It is rumored that the thieves have conscripted the clever goblins to help them build something terrible at the bottom of the mines - but what that may be is still uncertain. Rumor has it that the way into the Deadmines lies through the quiet, unassuming village of Moonbrook.",
		["coord"] = { 42.2, 82.6, WESTFALL },
		["lvl"] = 10,
		["groups"] = {
			n(QUESTS, {
				q(168, {	-- Collecting Memories
					["qg"] = 656,	-- Wilder Thistlenettle
					["coord"] = { 65.4, 21.2, STORMWIND_CITY },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1894, 4 },	-- Miners' Union Card
					},
					["groups"] = {
						i(2036),	-- Dusty Mining Gloves
						i(2037),	-- Tunneler's Boots
					},
				}),
				q(167, {	-- Oh Brother. . .
					["qg"] = 656,	-- Wilder Thistlenettle
					["coord"] = { 65.4, 21.2, STORMWIND_CITY },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1875, 1 },	-- Thistlenettle's Badge
					},
					["groups"] = {
						i(1893),	-- Miner's Revenge
					},
				}),
				q(214, {	-- Red Silk Bandanas
					["qg"] = 820,	-- Scout Riell <The People's Militia>
					["sourceQuest"] = 153,	-- Red Leather Bandanas
					["coord"] = { 56.7, 47.4, WESTFALL },
					["maps"] = { WESTFALL },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 915, 10 },	-- Red Silk Bandana
					},
					["groups"] = {
						i(6094),	-- Piercing Axe
						i(2089),	-- Scrimshaw Dagger
						i(2074),	-- Solid Shortblade
					},
				}),
				q(166, {	-- The Defias Brotherhood (7/7)
					["qg"] = 234,	-- Gryan Stoutmantle <The People's Militia>
					["sourceQuest"] = 155,	-- The Defias Brotherhood (6/7)
					["coord"] = { 56.3, 47.5, WESTFALL },
					["maps"] = { WESTFALL },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 3637, 1 },	-- Head of VanCleef
					},
					["groups"] = {
						i(6087),		-- Chausses of Westfall
						i(2042),		-- Staff of Westfall
						i(2041),		-- Tunic of Westfall
					},
				}),
				q(373, {	-- The Unsent Letter
					["provider"] = { "i", 2874 },	-- An Unsent Letter
					["description"] = "Drops from VanCleef. Deliver it to Baros Alexston in Stormwind City.",
					["qg"] = 1646,	-- Baros Alexston <City Architect>
					["coord"] = { 49.2, 30.0, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
				}),
				q(2040, {	-- Underground Assault
					["qg"] = 6579,	-- Shoni the Shilent
					["sourceQuest"] = 2041,	-- Speak with Shoni
					["coord"] = { 55.5, 12.5, STORMWIND_CITY },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 7365, 1 },	-- Gnoam Sprecklesprocket
					},
					["groups"] = {
						i(7607),		-- Sable Wand
						i(7606),		-- Polar Gauntlets
					},
				}),
			}),
			n(ZONEDROPS, {
				i(10401, {	-- Blackened Defias Gloves
					["crs"] = {
						634,	-- Defias Overseer
						4417,	-- Defias Taskmaster
					},
				}),
				i(10400, {	-- Blackened Defias Leggings
					["crs"] = {
						634,	-- Defias Overseer
						4417,	-- Defias Taskmaster
					},
				}),
				i(10402, {	-- Blackened Defias Boots
					["cr"] = 4416,	-- Defias Strip Miner
				}),
				i(1951, {	-- Blackwater Cutlass
					["crs"] = {
						657,	-- Defias Pirate
						1732,	-- Defias Squallshaper
					},
				}),
				i(1959, {	-- Cold Iron Pick
					["cr"] = 623,	-- Skeletal Miner
				}),
				i(1928, {	-- Defias Mage Staff
					["cr"] = 1726,	-- Defias Magician
				}),
				i(1925, {	-- Defias Rapier
					["cr"] = 1725,	-- Defias Watchman
				}),
				i(1943, {	-- Goblin Mail Leggings
					["cr"] = 3947,	-- Goblin Shipbuilder
				}),
				i(1936, {	-- Goblin Screwdriver
					["cr"] = 622,	-- Goblin Engineer
				}),
				i(1944, {	-- Metalworking Gloves
					["cr"] = 1731,	-- Goblin Craftsman
				}),
				i(1894, {	-- Miners' Union Card
					["questID"] = 168,	-- Collecting Memories
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						623,	-- Skeletal Miner
						625,	-- Undead Dynamiter
						624,	-- Undead Excavator
					},
				}),
				i(8492, {	-- Parrot Cage
					["cr"] = 657,	-- Defias Pirate
				}),
				i(1958, {	-- Petrified Shinbone
					["cr"] = 625,	-- Undead Dynamiter
				}),
				i(7997, {	-- Red Defias Mask
					["description"] = "Can drop in Westfall and The Deadmines. Rogues typically keep this mask for appearance sets.",
				}),
				i(915, {	-- Red Silk Bandana
					["questID"] = 214,	-- Red Silk Bandanas
					["description"] = "Can also drop from any Defias mob in the Deadmines.",
					["races"] = ALLIANCE_ONLY,
				}),
				i(1929, {	-- Silk-threaded Trousers
					["crs"] = {
						1729,	-- Defias Evoker
						4418,	-- Defias Wizard
					},
				}),
				i(4676, {	-- Skeletal Gauntlets
					["cr"] = 624,	-- Undead Excavator
				}),
				i(1930, {	-- Stonemason Cloak
					["cr"] = 598,	-- Defias Miner
				}),
				i(1934, {	-- Stonemason Trousers
					["cr"] = 636,	-- Defias Blackguard
				}),
				i(1926, {	-- Weighted Sap
					["cr"] = 824,	-- Defias Digger
				}),
				i(6994, {	-- Whitestone Oak Lumber
					["cr"] = 641,	-- Goblin Woodcarver
				}),
				i(1945, {	-- Woodworking Gloves
					["cr"] = 641,	-- Goblin Woodcarver
				}),
			}),
			n(599, {	-- Marisa du'Paige
				["description"] = "This is a rare that is not always present.\n\nLocated in the cavern before the instance.",
				["coord"] = { 42.2, 79.9, 1436 },	-- The Deadmines, Westfall
				["groups"] = {
					i(3019), 	-- Noble's Robe
					i(4660), 	-- Walking Boots
				},
			}),
			n(596, {	-- Brainwashed Noble
				["description"] = "This is a rare that is not always present.\n\nLocated in the cavern before the instance.",
				["coord"] = { 44.0, 78.3, 1436 },	-- The Deadmines, Westfall
				["groups"] = {
					i(3902), 	-- Staff of Nobles
					i(5967), 	-- Girdle of Nobility
				},
			}),
			n(626, {	-- Foreman Thistlenettle
				["description"] = "This is a rare that is not always present.\n\nLocated in the cavern before the instance.",
				["coord"] = { 42.2, 82.6, 1436 },	-- The Deadmines, Westfall
				["groups"] = {
					{
						["itemID"] = 1875,	-- Thistlenettle's Badge
						["questID"] = 167,	-- Oh Brother. . .
						["races"] = ALLIANCE_ONLY,
					},
					i(2167), 	-- Foreman's Gloves
					i(2166), 	-- Foreman's Leggings
					i(2168), 	-- Foreman's Boots
				},
			}),
			n(644, {	-- Rhahk'Zor <The Foreman>
				i(5187, {	-- Rhahk'Zor's Hammer
					-- #if CLASSIC
					["description"] = "This item was redesigned to a rare quality item called 'Foe Reaper' in Patch 2.3, so if you are making a twink and they eventually create a WoW Classic -> BC character transfer service, you may want to keep this item despite it being lower quality now.",
					-- #endif
				}),
				i( 872),	-- Rockslicer
			}),
			n(3586, {	-- Miner Johnson
				["description"] = "This is a rare that is not always present.",
				["groups"] = {
					i(5443),	-- Gold-plated Buckler
					i(5444),	-- Miner's Cape
				},
			}),
			n(642, {	-- Sneed's Shredder <Lumbermaster>
				{
					["itemID"] = 7365,	-- Gnoam Sprecklesprocket
					["questID"] = 2040,	-- Underground Assault
					["races"] = ALLIANCE_ONLY,
				},
				i(2169),	-- Buzzer Blade
				i(1937),	-- Buzz Saw
			}),
			n(643, {	-- Sneed
				i(5194),	-- Taskmaster Axe
				i(5195),	-- Gold-flecked Gloves
			}),
			n(1763, {	-- Gilnid <The Smelter>
				i(5199),	-- Smelting Pants
				i(1156),	-- Lavishly Jeweled Ring
			}),
			n(646, {	-- Mr. Smite <The Ship's First Mate>
				i(7230),	-- Smite's Mighty Hammer
				i(5196),	-- Smite's Reaver
				i(5192),	-- Thief's Blade
			}),
			n(647, {	-- Captain Greenskin
				i(5201),	-- Emberstone Staff
				i(5200),	-- Impaling Harpoon
				i(10403),	-- Blackened Defias Belt
			}),
			n(639, {	-- Edwin VanCleef <Defias Kingpin>
				{
					["itemID"] = 2874,	-- An Unsent Letter
					["questID"] = 373,	-- The Unsent Letter
					["races"] = ALLIANCE_ONLY,
				},
				{
					["itemID"] = 3637,	-- Head of VanCleef
					["questID"] = 166,	-- The Defias Brotherhood (7/7)
					["races"] = ALLIANCE_ONLY,
				},
				i(5191),	-- Cruel Barb
				i(5193),	-- Cape of the Brotherhood
				i(10399),	-- Blackened Defias Armor
				i(5202),	-- Corsair's Overshirt
			}),
			n(645, {	-- Cookie <The Ship's Cook>
				i(8490),	-- Cat Carrier (Siamese)
				i(5198),	-- Cookie's Stirring Rod
				i(5197),	-- Cookie's Tenderizer
			}),
		},
	}),
})};