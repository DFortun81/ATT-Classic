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
					["qg"] = 823,	-- Deputy Willem
					["sourceQuest"] = 18,	-- Brotherhood of Thieves
					["coord"] = { 48.1, 42.9, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 182, 1 },	-- Garrick's Head
					},
					["lvl"] = 2,
					["g"] = {
						{
							["itemID"] = 182,	-- Garrick's Head
							["questID"] = 6,	-- Bounty on Garrick Padfoot
							["cr"] = 103,	-- Garrick Padfoot
							["coord"] = { 57.4, 48.6, ELWYNN_FOREST },
						},
						i(6076),	-- Tapered Pants
						i(60),	-- Layered Tunic
						i(3070),	-- Ensign Cloak
					},
				}),
				q(46, {	-- Bounty on Murlocs
					["qg"] = 261,	-- Guard Thomas
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 7,
					["g"] = {
						i(4840),	-- Long Bayonet
						i(1158),	-- Solid Metal Club
						i(1008),	-- Well-used Sword
					},
				}),
				q(18, {	-- Brotherhood of Thieves
					["qg"] = 823,	-- Deputy Willem
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 752, 12 },	-- Red Burlap Bandana
					},
					["lvl"] = 2,
					["g"] = {
						i(2224),	-- Militia Dagger
						i(5580),	-- Militia Hammer
						i(1161),	-- Militia Shortsword
						i(5579),	-- Militia Warhammer
						i(1159),	-- Militia Quarterstaff
					},
				}),
				q(59, {	-- Cloth and Leather Armor
					["sourceQuest"] = 83,	-- Red Linen Goods
					["qgs"] = {
						240,	-- Marshal Dughan
						261,	-- Guard Thomas
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 7,
					["g"] = {
						i(1171),	-- Well-stitched Robe
						i(2237),	-- Patched Pants
					},
				}),
				q(112, {	-- Collecting Kelp
					["qg"] = 253,	-- William Pestle
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1256, 4 },	-- Crystal Kelp Frond
					},
					["lvl"] = 5,
				}),
				q(3101, {	-- Consecrated Letter
					["qg"] = 197,	-- Marshal McBride
					["sourceQuest"] = 7,	-- Kobold Camp Cleanup
					["coord"] = { 48.9, 41.6, ELWYNN_FOREST },
					["classes"] = { 2 },	-- Paladin
					["races"] = ALLIANCE_ONLY,
				}),
				q(1667, { -- Dead-tooth Jack
					["qg"] = 294, -- Marshal Haggard
					["sourceQuest"] = 1666, -- Marshal Haggard
					["classes"] = { 1 },	-- Warrior
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						{
							["itemID"] = 6783,	-- Dead-tooth's Key
							["questID"] = 1667,	-- Dead-tooth Jack
							["cr"] = 6093,	-- Dead-Tooth Jack
							["coord"] = { 89.2, 80.6, ELWYNN_FOREST },
						},
					},
				}),
				q(39, {	-- Deliver Thomas' Report
					["qg"] = 261,	-- Guard Thomas
					["sourceQuest"] = 71,	-- Report to Thomas
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 7,
				}),
				q(45, {	-- Discover Rolf's Fate
					["provider"] = { "o", 55 }, -- A half-eaten body
					["sourceQuest"] = 37,	-- Find the Lost Guards
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 7,
				}),
				q(5261, {	-- Eagan Peltskinner
					["qg"] = 823,	-- Deputy Willem
					["sourceQuest"] = 783,	-- A Threat Within
					["coord"] = { 48.17, 42.94, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(1097, {	-- Elmore's Task
					["qgs"] = {
						514,	-- Smith Argus 
						415,	-- Verner Osgood
					},
					["maps"] = { REDRIDGE_MOUNTAINS, },
					["coords"] = { 
						{ 41.7, 65.5, ELWYNN_FOREST }, -- Smith Argus
						{ 31.0, 47.4, REDRIDGE_MOUNTAINS }, -- Verner Osgood
					},
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 9,
				}),
				q(3102, {	-- Encrypted Letter
					["qg"] = 197,	-- Marshal McBride
					["sourceQuest"] = 7,	-- Kobold Camp Cleanup
					["coord"] = { 48.9, 41.6, ELWYNN_FOREST },
					["races"] = { 1 },	-- Human
					["classes"] = { 4 },	-- Rogue
					["lvl"] = 1,
				}),
				q(37, {	-- Find the Lost Guards
					["qg"] = 261,	-- Guard Thomas
					["sourceQuest"] = 35,	-- Further Concerns
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 7,
				}),
				q(35, {	-- Further Concerns
					["qg"] = 240,	-- Marshal Dughan
					["sourceQuest"] = 40,	-- A Fishy Peril
					["coord"] = { 42.1, 65.9, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 7,
				}),
				q(1685, { -- Gakin's Summons
					["qg"] = 6121, -- Remen Marcot
					["races"] = { 1, 7 }, -- Human and Gnome only
					["classes"] = { 9 },	-- Warlock
					["lvl"] = 10,
				}),
				q(16, {	-- Give Gerard a Drink
					["qg"] = 255,	-- Gerard Tiller
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["g"] = {
						i(4536),	-- Shiny Red Apple
					},
				}),
				q(3104, { -- Glyphic Letter
					["qg"] = 197, -- Marshal McBride
					["sourceQuest"] = 7,	-- Kobold Camp Cleanup
					["coord"] = { 48.9, 41.6, ELWYNN_FOREST },
					["races"] = { 1 }, -- Human
					["classes"] = { 8 }, -- Mage
					["lvl"] = 1,
				}),
				q(47, {	-- Gold Dust Exchange
					["qg"] = 241,	-- Remy "Two Times"
					["sourceQuest"] = 54,	-- Report to Goldshire
					["coord"] = { 41.7, 65.5, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 773, 8 },	-- Gold Dust
					},
					["lvl"] = 4,
					["g"] = {
						i(1191),	-- Bag of Marbles
					},
				}),
				q(87, {	-- Goldtooth
					["qg"] = 247,	-- Billy Maclure
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 981, 1 },	-- Bernice's Necklace
					},
					["lvl"] = 5,
					["g"] = {
						{
							["itemID"] = 981,	-- Bernice's Necklace
							["cr"] = 327,	-- Goldtooth
							["coord"] = { 41.6, 78.8, ELWYNN_FOREST },
						},
						i(1359),	-- Lion-stamped Gloves
					},
				}),
				q(3905, {	-- Grape Manifest
					["qg"] = 9296,	-- Milly Osworth
					["sourceQuest"] = 3904,	-- Milly's Harvest
					["coord"] = { 50.7, 39.3, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 2,
					["g"] = {
						i(11475),	-- Wine-stained Cloak
						i(2690),	-- Latched Belt
					},
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
					["qg"] = 253,	-- William Pestle
					["sourceQuest"] = 54,	-- Report to Goldshire
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 772, 8 },	-- Large Candle
					},
					["lvl"] = 3,
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
					["coord"] = { 42.1, 65.9, ELWYNN_FOREST },
					["g"] = {
						i(1360),	-- Stormwind Chain Gloves
						i(1183),	-- Elastic Wristguards
					},
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
					["qg"] = 244,	-- Ma Stonefield
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1006, 1 },	-- Brass Collar
					},
					["lvl"] = 6,
					["g"] = {
						{
							["itemID"] = 1006,	-- Brass Collar
							["questID"] = 88,	-- Princess Must Die!
							["cr"] = 330,	-- Princess
							["coord"] = { 69.8, 79.4, ELWYNN_FOREST },
						},
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
					["qg"] = 278,	-- Sara Timberlain
					["coord"] = { 79.5, 68.7, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1019, 8 },	-- Red Linen Bandana
					},
					["lvl"] = 4,
					["g"] = {
						i(2575),	-- Red Linen Shirt
						i(983),		-- Red Linen Sash
					},
				}),
				q(54, {	-- Report to Goldshire
					["qg"] = 197,	-- Marshal McBride
					["sourceQuest"] = 21,	-- Skirmish at Echo Ridge
					["coord"] = { 48.9, 41.6, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(6078),	-- Pikeman Shield
					},
				}),
				q(109, {	-- Report to Gryan Stoutmantle
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 9,
					["qgs"] = {
						237,	-- Farmer Furlbrow
						240,	-- Marshal Dughan
						261,	-- Guard Thomas
						963,	-- Deputy Rainer
					},
				}),
				q(71, {	-- Report to Thomas
					["provider"] = { "o", 56 },	-- Rolf's corpse
					["sourceQuest"] = 45,	-- Discover Rolf's Fate
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 7,
				}),
				q(2158, {	-- Rest and Relaxation
					["qg"] = 6774,	-- Falkhaan Isenstrider
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(4656),	-- Small Pumpkin
						i(159),	-- Refreshing Spring Water
					},
				}),
				q(346, {	-- Return to Kristoff
					["qg"] = 951,	-- Brother Paxton
					["sourceQuest"] = 347,	-- Rethban Ore (quest in Redridge Mountains)
					["description"] = "This quest is part of a series that starts in Stromwind.",
					["coord"] = { 49.6, 40.4, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["g"] = {
						i(6095),
					},
				}),
				q(11, {	-- Riverpaw Gnoll Bounty
					["qg"] = 963,	-- Deputy Rainer
					["sourceQuest"] = 239,	-- Westbrook Garrison Needs Help!
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 782, 8 },	-- Painted Gnoll Armband
					},
					["lvl"] = 6,
					["g"] = {
						i(2249),	-- Militia Buckler
						i(2238),	-- Urchin's Pants
					},
				}),
				q(2205, {	-- Seek out SI:7
					["qg"] = 917,	-- Keryn Sylvius
					["isBreadcrumb"] = true,
					["altQuests"] = {
						2218,	-- Road to Salvation(Dun Morogh)
						2241,	-- The Apple Falls
					},
					["coord"] = { 43.9, 65.9, ELWYNN_FOREST },
					["description"] = "Keryn Sylvius is located on the 2nd floor of the Lion's Pride Inn.",
					["races"] = ALLIANCE_ONLY,
					["classes"] = { 4 },	-- Rogue
					["lvl"] = 10,
				}),
				q(61, {	-- Shipment to Stormwind
					["qg"] = 253,	-- William Pestle
					["sourceQuest"] = 47,	-- Gold Dust Exchange
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 3,
					["g"] = {
						i(1178),	-- Explosive Rocket
						i(1177),	-- Oil of Olaf
						i(2454),	-- Elixir of Lion's Strength
					},
				}),
				q(2300, {	-- SI:7
					["qg"] = 917,	-- Keryn Sylvius
					["sourceQuest"] = 2205,	-- Seek out SI:7
					["races"] = ALLIANCE_ONLY,
					["classes"] = { 4 },	-- Rogue
					["isBreadcrumb"] = true,
					["lvl"] = 16,
				}),
				q(3100, { -- Simple Letter
					["qg"] = 197, -- Marshal McBride
					["sourceQuest"] = 7, -- Kobold Camp Cleanup
					["races"] = { 1 }, -- Human
					["classes"] = { 1 },	-- Warrior
					["lvl"] = 1,
				}),
				q(21, {	-- Skirmish at Echo Ridge
					["qg"] = 197,	-- Marshal McBride
					["sourceQuest"] = 15,	-- Investigate Echo Ridge
					["coord"] = { 48.9, 41.6, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(2186),	-- Outfitter Belt
						i(2691),	-- Outfitter Boots
						i(11192),	-- Outfitter Gloves
					},
				}),
				q(111, {	-- Speak with Gramma
					["qg"] = 252,	-- Tommy Joe Stonefield
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 5,
				}),
				q(1860, { -- Speak with Jennea
					["questID"] = 1860,	-- Speak with Jennea
					["qg"] = 328,	-- Zaldimar Wefhellt <Mage Trainer>
					["coord"] = { 43.3, 66.2, ELWYNN_FOREST },
					["description"] = "Zaldimar Wefhellt is located on the 2nd floor of the Lion's Pride Inn.",
					["altQuests"] = {
						1879,	-- Speak with Bink
					},
					["races"] = ALLIANCE_ONLY,
					["classes"] = {8},	-- Mage
					["lvl"] = 10,
				}),
				q(123, {	-- The Collector
					["provider"] = { "i", 1307 },	-- Gold Pickup Schedule
					["crs"] = { 100 },	-- Gruff Swiftbite
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 7,
				}),
				q(114, {	-- The Escape
					["qg"] = 253,	-- William Pestle
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 5,
					["g"] = {
						i(118),	-- Minor Healing Potion
					},
				}),
				q(62, {	-- The Fargodeep Mine
					["qg"] = 240,	-- Marshal Dughan
					["sourceQuest"] = 54,	-- Report to Goldshire
					["coord"] = { 42.1, 65.9, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 4,
				}),
				q(76, {	-- The Jasperlode Mine
					["qg"] = 240,	-- Marshal Dughan
					["sourceQuest"] = 62,	-- The Fargodeep Mine
					["coord"] = { 42.1, 65.9, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 4,
				}),
				q(2998, { -- The Tome of Divinity
					["qg"] = 927, -- Brother Wilhelm
					["altQuests"] = {
						3681, -- The Tome of Divinity
					},
					["description"] = "This quest is an alternative quest to Quest #3681.",
					["races"] = { 1 }, -- Human
					["classes"] = { 2 }, -- Paladin
					["lvl"] = 12,
				}),
				q(1787, { -- The Tome of Divinity (8)
					["qg"] = 6172, -- Henze Faulk
					["sourceQuest"] = 1786, -- The Tome of Divinity (7)
					["races"] = { 1 }, -- Human
					["classes"] = { 2 }, -- Paladin
					["cr"] = 474,	-- Defias Rogue Wizard
					["cost"] = {
						{ "i", 6846, 1 },	-- Defias Script
					},
					["lvl"] = 12,
				}),
				q(1598, { -- The Stolen Tome
					["qg"] = 459, -- Drusilla La Salle
					["races"] = { 1 }, -- Human
					["classes"] = { 9 }, -- Warlock
					["lvl"] = 1,
				}),
				q(7962, {	-- Wabbit Pelts
					["u"] = 1,
					["g"] = {
						i(13913),	-- 22 Pound Lobster
					},
				}),
				q(176, {	-- Wanted: "Hogger"
					["providers"] = {
						{ "o", 68 },	-- Wanted Poster
						{ "o", 156561 },	-- Wanted Poster
					},
					["sourceQuest"] = 239,	-- Westbrook Garrison Needs Help!
					["coord"] = { 24.6, 78.2, ELWYNN_FOREST },
					["description"] = "Click on the Wanted Poster to accept this quest.",
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 1931, 1 },	-- Huge Gnoll Claw
					},
					["lvl"] = 5,
					["g"] = {
						{
							["itemID"] = 1931,	-- Huge Gnoll Claw
							["questID"] = 176,	-- Wanted: "Hogger"
							["cr"] = 448,	-- Hogger
							["coord"] = { 26.6, 89.8, ELWYNN_FOREST },
						},
						i(6085),	-- Footman Tunic
						i(6084),	-- Stormwind Guard Leggings
						i(6215),	-- Balanced Fighting Stick
					},
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
					["qg"] = 240,	-- Marshal Dughan
					["sourceQuest"] = 76,	-- The Jasperlode Mine
					["coord"] = { 42.1, 65.9, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 6,
				}),
				q(33, {	-- Wolves Across the Border
					["qg"] = 196,	-- Eagan Peltskinner
					["sourceQuest"] = 5261,	-- Eagan Peltskinner
					["coord"] = { 48.9, 40.1, ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(80),	-- Soft Fur-lined Shoes
						i(6070),	-- Wolfskin Bracers
					},
				}),
				q(106, {	-- Young Lovers
					["qg"] = 251,	-- Maybell Maclure
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 5,
				}),
			}),
		}),
	}),
};