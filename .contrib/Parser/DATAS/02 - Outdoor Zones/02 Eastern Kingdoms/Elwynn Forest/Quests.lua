---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {	-- Eastern Kingdoms
		m(ELWYNN_FOREST, {	-- Elwynn Forest
			n(-17, {	-- Quests
				q(5545, {	-- A Bundle of Trouble
					["lvl"] = 5,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 10616,	-- Supervisor Raelen
					["coord"] = { 81.4, 66.2, ELWYNN_FOREST },
				}),
				q(40, {	-- A Fishy Peril
					["lvl"] = 7,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 241,	-- Remy "Two Times"
				}),
				q(783, {	-- A Threat Within
					["races"] = ALLIANCE_ONLY,
					["qg"] = 823,	-- Deputy Willem
					["coord"] = { 48.1, 42.9, ELWYNN_FOREST },
				}),
				q(84, {	-- Back to Billy
					["lvl"] = 5,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 246,	-- "Auntie" Bernice Stonefield
				}),
				q(6, {	-- Bounty on Garrick Padfoot
					["lvl"] = 2,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 823,	-- Deputy Willem
					["sourceQuest"] = 18,	-- Brotherhood of Thieves
					["g"] = {
						i(6076),	-- Tapered Pants
						i(60),	-- Layered Tunic
						i(3070),	-- Ensign Cloak
					},
					["coord"] = { 48.1, 42.9, ELWYNN_FOREST },
				}),
				q(46, {	-- Bounty on Murlocs
					["lvl"] = 7,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 261,	-- Guard Thomas
					["g"] = {
						i(4840),	-- Long Bayonet
						i(1158),	-- Solid Metal Club
						i(1008),	-- Well-used Sword
					},
				}),
				q(18, {	-- Brotherhood of Thieves
					["lvl"] = 2,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 823,	-- Deputy Willem
					["g"] = {
						i(2224),	-- Militia Dagger
						i(5580),	-- Militia Hammer
						i(1161),	-- Militia Shortsword
						i(5579),	-- Militia Warhammer
						i(1159),	-- Militia Quarterstaff
					},
				}),
				q(59, {	-- Cloth and Leather Armor
					["lvl"] = 7,
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 83,	-- Red Linen Goods
					["qgs"] = {
						240,	-- Marshal Dughan
						261,	-- Guard Thomas
					},
					["g"] = {
						i(1171),	-- Well-stitched Robe
						i(2237),	-- Patched Pants
					},
				}),
				q(112, {	-- Collecting Kelp
					["lvl"] = 5,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 253,	-- William Pestle
				}),
				q(3101, {	-- Consecrated Letter
					["races"] = ALLIANCE_ONLY,
					["classes"] = { 2 },	-- Paladin
					["qg"] = 197,	-- Marshal McBride
					["sourceQuest"] = 7,	-- Kobold Camp Cleanup
					["coord"] = { 48.9, 41.6, ELWYNN_FOREST },
				}),
				q(1667, { -- Dead-tooth Jack
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["classes"] = { 1 },	-- Warrior
					["qg"] = 294, -- Marshal Haggard
					["sourceQuest"] = 1666, -- Marshal Haggard
				}),
				q(39, {	-- Deliver Thomas' Report
					["lvl"] = 7,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 261,	-- Guard Thomas
					["sourceQuest"] = 71,	-- Report to Thomas
				}),
				q(45, {	-- Discover Rolf's Fate
					["lvl"] = 7,
					["races"] = ALLIANCE_ONLY,
					["provider"] = { "o", 55 }, -- A half-eaten body
					--["objectID"] = 55,	-- A half-eaten body
					["sourceQuest"] = 37,	-- Find the Lost Guards
				}),
				q(5261, {	-- Eagan Peltskinner
					["qg"] = 823,	-- Deputy Willem
					["sourceQuest"] = 783,	-- A Threat Within
					["coord"] = { 48.17, 42.94, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(1097, {	-- Elmore's Task
					["lvl"] = 9,
					["races"] = ALLIANCE_ONLY,
					["qgs"] = {
						514,	-- Smith Argus 
						415, -- Verner Osgood
					},
					["maps"] = {
						REDRIDGE_MOUNTAINS,
					},
					["coords"] = { 
						{ 41.7, 65.5, ELWYNN_FOREST }, -- Smith Argus
						{ 31.0, 47.4, REDRIDGE_MOUNTAINS }, -- Verner Osgood
					},
				}),
				q(3102, {	-- Encrypted Letter
					["lvl"] = 1,
					["races"] = { 1 },	-- Human
					["classes"] = { 4 },	-- Rogue
					["qg"] = 197,	-- Marshal McBride
					["sourceQuest"] = 7,	-- Kobold Camp Cleanup
					["coord"] = { 48.9, 41.6, ELWYNN_FOREST },
				}),
				q(37, {	-- Find the Lost Guards
					["lvl"] = 7,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 261,	-- Guard Thomas
					["sourceQuest"] = 35,	-- Further Concerns
				}),
				q(35, {	-- Further Concerns
					["lvl"] = 7,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 240,	-- Marshal Dughan
					["sourceQuest"] = 40,	-- A Fishy Peril
					["coord"] = { 42.1, 65.9, ELWYNN_FOREST },
				}),
				q(1685, { -- Gakin's Summons
					["lvl"] = 10,
					["races"] = { 1, 7 }, -- Human and Gnome only
					["classes"] = { 9 },	-- Warlock
					["qg"] = 6121, -- Remen Marcot
				}),
				q(16, {	-- Give Gerard a Drink
					["races"] = ALLIANCE_ONLY,
					["qg"] = 255,	-- Gerard Tiller
					["repeatable"] = true,
					["g"] = {
						i(4536),	-- Shiny Red Apple
					},
				}),
				q(3104, { -- Glyphic Letter
					["lvl"] = 1,
					["races"] = { 1 }, -- Human
					["classes"] = { 8 }, -- Mage
					["qg"] = 197, -- Marshal McBride
					["sourceQuest"] = 7,	-- Kobold Camp Cleanup
					["coord"] = { 48.9, 41.6, ELWYNN_FOREST },
				}),
				q(47, {	-- Gold Dust Exchange
					["lvl"] = 4,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 241,	-- Remy "Two Times"
					["sourceQuest"] = 54,	-- Report to Goldshire
					["g"] = {
						i(1191),	-- Bag of Marbles
					},
					["coord"] = { 41.7, 65.5, ELWYNN_FOREST },
				}),
				q(87, {	-- Goldtooth
					["lvl"] = 5,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 247,	-- Billy Maclure
					["g"] = {
						i(1359),	-- Lion-stamped Gloves
					},
				}),
				q(3905, {	-- Grape Manifest
					["lvl"] = 2,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 9296,	-- Milly Osworth
					["sourceQuest"] = 3904,	-- Milly's Harvest
					["g"] = {
						i(11475),	-- Wine-stained Cloak
						i(2690),	-- Latched Belt
					},
					["coord"] = { 50.7, 39.3, ELWYNN_FOREST },
				}),
				q(3103, { -- Hallowed Letter
					["lvl"] = 1,
					["races"] = { HUMAN },
					["qg"] = 197, -- Marshal McBride
					["classes"] = { 5 }, -- Priest
					["sourceQuest"] = 7, -- Kobold Camp Cleanup
					["coord"] = { 48.9, 41.6, ELWYNN_FOREST },
				}),
				q(345, {	-- Ink Supplies
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 951,	-- Brother Paxton
					["sourceQuest"] = 344,	-- Brother Paxton (quest in Stormwind)
					["description"] = "This quest is part of a series that starts in Stormwind.",
					["coord"] = { 49.6, 40.4, ELWYNN_FOREST },
				}),
				q(15, {	-- Investigate Echo Ridge
					["races"] = ALLIANCE_ONLY,
					["qg"] = 197,	-- Marshal McBride
					["sourceQuest"] = 7,	-- Kobold Camp Cleanup
					["coord"] = { 48.9, 41.6, ELWYNN_FOREST },
				}),
				q(7, {	-- Kobold Camp Cleanup
					["races"] = ALLIANCE_ONLY,
					["qg"] = 197,	-- Marshal McBride
					["coord"] = { 48.9, 41.6, ELWYNN_FOREST },
				}),
				q(60, {	-- Kobold Candles
					["lvl"] = 3,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 253,	-- William Pestle
					["sourceQuest"] = 54,	-- Report to Goldshire
					["g"] = {
						i(1434),	-- Glowing Wax Stick
					},
				}),
				q(85, {	-- Lost Necklace
					["lvl"] = 5,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 246,	-- "Auntie" Bernice Stonefield
				}),
				q(147, {	-- Manhunt
					["lvl"] = 7,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 240,	-- Marshal Dughan
					["sourceQuest"] = 123,	-- The Collector
					["g"] = {
						i(1360),	-- Stormwind Chain Gloves
						i(1183),	-- Elastic Wristguards
					},
					["coord"] = { 42.1, 65.9, ELWYNN_FOREST },
				}),
				q(3903, {	-- Milly Osworth
					["lvl"] = 2,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 823,	-- Deputy Willem
					["sourceQuest"] = 18,	-- Brotherhood of Thieves
				}),
				q(3904, {	-- Milly's Harvest
					["lvl"] = 2,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 9296,	-- Milly Osworth
					["sourceQuest"] = 3903,	-- Milly Osworth
					["coord"] = { 50.7, 39.3, ELWYNN_FOREST },
				}),
				q(107, {	-- Note to William
					["lvl"] = 5,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 248,	-- Gramma Stonefield
				}),
				q(86, {	-- Pie for Billy
					["lvl"] = 5,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 247,	-- Billy Maclure
				}),
				q(88, {	-- Princess Must Die!
					["lvl"] = 6,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 244,	-- Ma Stonefield
					["g"] = {
						i(1173),	-- Weather-worn Boots
						i(1182),	-- Brass-studded Bracers
						i(11191),	-- Farmer's Boots
					},
				}),
				q(52, {	-- Protect the Frontier
					["lvl"] = 7,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 261,	-- Guard Thomas
					["g"] = {
						i(858),	-- Lesser Healing Potion
					},
				}),
				q(83, {	-- Red Linen Goods
					["lvl"] = 4,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 278,	-- Sara Timberlain
					["g"] = {
						i(2575),	-- Red Linen Shirt
						i(983),	-- Red Linen Sash
					},
					["coord"] = { 79.5, 68.7, ELWYNN_FOREST },
				}),
				q(54, {	-- Report to Goldshire
					["races"] = ALLIANCE_ONLY,
					["qg"] = 197,	-- Marshal McBride
					["sourceQuest"] = 21,	-- Skirmish at Echo Ridge
					["g"] = {
						i(6078),	-- Pikeman Shield
					},
					["coord"] = { 48.9, 41.6, ELWYNN_FOREST },
				}),
				q(109, {	-- Report to Gryan Stoutmantle
					["lvl"] = 9,
					["races"] = ALLIANCE_ONLY,
					["qgs"] = {
						237,	-- Farmer Furlbrow
						240,	-- Marshal Dughan
						261,	-- Guard Thomas
						963,	-- Deputy Rainer
					},
				}),
				q(71, {	-- Report to Thomas
					["lvl"] = 7,
					["races"] = ALLIANCE_ONLY,
					--["objectID"] = 56,	-- Rolf's corpse
					["sourceQuest"] = 45,	-- Discover Rolf's Fate
				}),
				q(2158, {	-- Rest and Relaxation
					["races"] = ALLIANCE_ONLY,
					["qg"] = 6774,	-- Falkhaan Isenstrider
					["g"] = {
						i(4656),	-- Small Pumpkin
						i(159),	-- Refreshing Spring Water
					},
				}),
				q(346, {	-- Return to Kristoff
					["lvl"] = 20,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 951,	-- Brother Paxton
					["sourceQuest"] = 347,	-- Rethban Ore (quest in Redridge Mountains)
					["g"] = {
						i(6095),
					},
					["description"] = "This quest is part of a series that starts in Stromwind.",
					["coord"] = { 49.6, 40.4, ELWYNN_FOREST },
				}),
				q(11, {	-- Riverpaw Gnoll Bounty
					["lvl"] = 6,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 963,	-- Deputy Rainer
					["sourceQuest"] = 239,	-- Westbrook Garrison Needs Help!
					["g"] = {
						i(2249),	-- Militia Buckler
						i(2238),	-- Urchin's Pants
					},
				}),
				q(2205, {	-- Seek out SI:7
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["classes"] = { 4 },	-- Rogue
					["qg"] = 917,	-- Keryn Sylvius
					["isBreadcrumb"] = true,
					["altQuests"] = {
						2218,	-- Road to Salvation(Dun Morogh)
						2241,	-- The Apple Falls
					},
					["coord"] = { 43.9, 65.9, ELWYNN_FOREST },
					["description"] = "Keryn Sylvius is located on the 2nd floor of the Lion's Pride Inn.",
				}),
				q(61, {	-- Shipment to Stormwind
					["lvl"] = 3,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 253,	-- William Pestle
					["sourceQuest"] = 47,	-- Gold Dust Exchange
					["g"] = {
						i(1178),	-- Explosive Rocket
						i(1177),	-- Oil of Olaf
						i(2454),	-- Elixir of Lion's Strength
					},
				}),
				q(2300, {	-- SI:7
					["lvl"] = 16,
					["races"] = ALLIANCE_ONLY,
					["classes"] = { 4 },	-- Rogue
					["qg"] = 917,	-- Keryn Sylvius
					["sourceQuest"] = 2205,	-- Seek out SI:7
					["isBreadcrumb"] = true,
				}),
				q(3100, { --Simple Letter
					["lvl"] = 1,
					["races"] = { 1 }, -- Human
					["classes"] = { 1 },	-- Warrior
					["qg"] = 197, -- Marshal McBride
					["sourceQuest"] = 7, -- Kobold Camp Cleanup
				}),
				q(21, {	-- Skirmish at Echo Ridge
					["races"] = ALLIANCE_ONLY,
					["qg"] = 197,	-- Marshal McBride
					["sourceQuest"] = 15,	-- Investigate Echo Ridge
					["g"] = {
						i(2186),	-- Outfitter Belt
						i(2691),	-- Outfitter Boots
						i(11192),	-- Outfitter Gloves
					},
					["coord"] = { 48.9, 41.6, ELWYNN_FOREST },
				}),
				q(111, {	-- Speak with Gramma
					["lvl"] = 5,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 252,	-- Tommy Joe Stonefield
				}),
				q(1860, { -- Speak with Jennea
					["questID"] = 1860,	-- Speak with Jennea
					["qg"] = 328,	-- Zaldimar Wefhellt <Mage Trainer>
					["lvl"] = 10,
					["races"] = ALLIANCE_ONLY,
					["altQuests"] = {
						1879,	-- Speak with Bink
					},
					["classes"] = {8},	-- Mage
					["coord"] = { 43.3, 66.2, ELWYNN_FOREST },
					["description"] = "Zaldimar Wefhellt is located on the 2nd floor of the Lion's Pride Inn.",
				}),
				q(123, {	-- The Collector
					["provider"] = { "i", 1307 },	-- Gold Pickup Schedule
					["crs"] = { 100 },	-- Gruff Swiftbite
					["lvl"] = 7,
					["races"] = ALLIANCE_ONLY,
				}),
				q(114, {	-- The Escape
					["lvl"] = 5,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 253,	-- William Pestle
					["g"] = {
						i(118),	-- Minor Healing Potion
					},
				}),
				q(62, {	-- The Fargodeep Mine
					["lvl"] = 4,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 240,	-- Marshal Dughan
					["sourceQuest"] = 54,	-- Report to Goldshire
					["coord"] = { 42.1, 65.9, ELWYNN_FOREST },
				}),
				q(76, {	-- The Jasperlode Mine
					["lvl"] = 4,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 240,	-- Marshal Dughan
					["sourceQuest"] = 62,	-- The Fargodeep Mine
					["coord"] = { 42.1, 65.9, ELWYNN_FOREST },
				}),
				q(2998, { -- The Tome of Divinity
					["lvl"] = 12,
					["races"] = { 1 }, -- Human
					["classes"] = { 2 }, -- Paladin
					["qg"] = 927, -- Brother Wilhelm
					["altQuests"] = {
						3681, -- The Tome of Divinity
					},
					["description"] = "This quest is an alternative quest to Quest #3681.",
				}),
				q(1787, { -- The Tome of Divinity (8)
					["lvl"] = 12,
					["races"] = { 1 }, -- Human
					["classes"] = { 2 }, -- Paladin
					["qg"] = 6172, -- Henze Faulk
					["sourceQuest"] = 1786, -- The Tome of Divinity (7)
				}),
				q(1598, { -- The Stolen Tome
					["lvl"] = 1,
					["races"] = { 1 }, -- Human
					["classes"] = { 9 }, -- Warlock
					["qg"] = 459, -- Drusilla La Salle
				}),
				q(7962, {	-- Wabbit Pelts
					["u"] = 1,
					["g"] = {
						i(13913),	-- 22 Pound Lobster
					},
				}),
				q(176, {	-- Wanted: "Hogger"
					["lvl"] = 5,
					["races"] = ALLIANCE_ONLY,
					["qgs"] = {
					--["objectID"] = 68,	-- Wanted Poster
					--["objectID"] = 156561,	-- Wanted Poster
					},
					["sourceQuest"] = 239,	-- Westbrook Garrison Needs Help!
					["g"] = {
						i(6085),	-- Footman Tunic
						i(6084),	-- Stormwind Guard Leggings
						i(6215),	-- Balanced Fighting Stick
					},
					["coord"] = { 24.6, 78.2, ELWYNN_FOREST },
					["description"] = "Click on the Wanted Poster to accept this quest.",
				}),
				q(7961, {	-- Waskily Wabbits!
					["u"] = 1,
					["g"] = {
						i(3300),	-- Rabbit's Foot
						i(8497),	-- Rabbit Crate (Snowshoe)
					},
				}),
				q(5805, {	-- Welcome!
					["provider"] = { "i", 14646 },	-- Northshire Gift Voucher
					["u"] = 2,
					["g"] = {
						un(2, i(13584)),	-- Diablo Stone
						un(2, i(13583)),	-- Panda Collar
						un(2, i(13582)),	-- Zergling Leash
					},
				}),
				q(239, {	-- Westbrook Garrison Needs Help!
					["lvl"] = 6,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 240,	-- Marshal Dughan
					["sourceQuest"] = 76,	-- The Jasperlode Mine
					["coord"] = { 42.1, 65.9, ELWYNN_FOREST },
				}),
				q(33, {	-- Wolves Across the Border
					["races"] = ALLIANCE_ONLY,
					["qg"] = 196,	-- Eagan Peltskinner
					["sourceQuest"] = 5261,	-- Eagan Peltskinner
					["g"] = {
						i(80),	-- Soft Fur-lined Shoes
						i(6070),	-- Wolfskin Bracers
					},
					["coord"] = { 48.9, 40.1, ELWYNN_FOREST },
				}),
				q(106, {	-- Young Lovers
					["lvl"] = 5,
					["races"] = ALLIANCE_ONLY,
					["qg"] = 251,	-- Maybell Maclure
				}),
			}),
		}),
	}),
};