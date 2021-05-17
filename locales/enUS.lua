--------------------------------------------------------------------------------
--						L O C A L I Z A T I O N  F I L E					  --
--------------------------------------------------------------------------------
--						English / United States (default)					  --
--------------------------------------------------------------------------------
--				Maintained By Dylan Fortune (http://dylanfortune.com)		  --
--------------------------------------------------------------------------------
--	 A localization file contains a single dictionary that populates a table  --
--------------------------------------------------------------------------------
--				This script is called directly after the Core.lua file. 	  --
--------------------------------------------------------------------------------
local name, app = ...;
app.L = {
	-- General Text
	["TITLE"] = "|cffb4b4ffATT-Classic|r";
	["AUCTION_TAB"] = "|cffb4b4ffATT-C|r";
	["DESCRIPTION"] = "\"Foolishly you have sought your own demise. Brazenly you have disregarded powers beyond your understanding. You have fought hard to invade the realm of the Collector. Now there is only one way out - To walk the lonely path... of the damned.\"";

	-- Instructional Text
	["MINIMAP_MOUSEOVER_TEXT"] = "Right click to change settings.\nLeft click to open the Main List.\nCtrl + Left click to open the Mini List.\nShift + Left click to Refresh Collections.";
	["TOP_ROW_INSTRUCTIONS"] = "|cff3399ffLeft Click and Drag to Move|r\n|cff3399ffRight Click to Open the Settings Menu|r\n|cff3399ffShift + Click to Refresh Collections|r";
	["OTHER_ROW_INSTRUCTIONS"] = "|cff3399ffLeft Click to Expand/Collapse|r\n|cff3399ffRight Click to Pop Out to Mini List|r\n|cff3399ffShift + Click to Refresh Collections|r\n|cff3399ffAlt + Right Click to Plot Waypoints|r";
	["TOP_ROW_INSTRUCTIONS_AH"] = "|cff3399ffLeft Click and Drag to Move|r\n|cff3399ffRight Click to Open the Settings Menu|r\n|cff3399ffShift + Click to Search the Auction House|r";
	["OTHER_ROW_INSTRUCTIONS_AH"] = "|cff3399ffLeft Click to Expand/Collapse|r\n|cff3399ffRight Click to Pop Out to Mini List|r\n|cff3399ffShift + Click to Search the Auction House|r";
	["RECENTLY_MADE_OBTAINABLE"] = "|CFFFF0000If this recently dropped for you (anywhere but Salvage\nCrates), please post in Discord where you got it to drop!|r";
	["RECENTLY_MADE_OBTAINABLE_PT2"] = "|CFFFF0000The more information, the better.  Thanks!|r";
	["I_ONLY_CARE_ABOUT_MY_MAIN"] = "|cff3399ffI only care about my main.|r";

	["FACTION_MODE_TOOLTIP"] = "Turn this setting on if you want to see Account Mode data only for races and classes of your current faction.";

	-- Binding Localizations
	["TOGGLE_ACCOUNT_MODE"] = "Toggle Account Mode";
	["TOGGLE_DEBUG_MODE"] = "Toggle Debug Mode";
	["TOGGLE_FACTION_MODE"] = "Toggle Faction Mode";
	["PREFERENCES"] = "Preferences";
	["TOGGLE_COMPLETEDTHINGS"] = "Toggle Completed Things (Both)";
	["TOGGLE_COMPLETEDGROUPS"] = "Toggle Completed Groups";
	["TOGGLE_COLLECTEDTHINGS"] = "Toggle Collected Things";
	["TOGGLE_BOEITEMS"] = "Toggle BoE/BoA Items";
	["TOGGLE_SOURCETEXT"] = "Toggle Source Locations";
	["MODULES"] = "Modules";
	["TOGGLE_MAINLIST"] = "Toggle ATT Main List";
	["TOGGLE_MINILIST"] = "Toggle ATT Mini List";
	["TOGGLE_PROFESSION_LIST"] = "Toggle ATT Profession List";
	["TOGGLE_RAID_ASSISTANT"] = "Toggle ATT Raid Assistant";
	["TOGGLE_RANDOM"] = "Toggle ATT Random";
	["REROLL_RANDOM"] = "Reroll the Random Selection";

	-- Event Text
	["ITEM_ID_ADDED"] = "%s (%d) was added to your collection.";
	["ITEM_ID_ADDED_RANK"] = "%s (%d) [Rank %d] was added to your collection.";
	["ITEM_ID_ADDED_MISSING"] = "%s (%d) was added to your collection. Not found in the database. Please report to the ATT Discord!";
	["ITEM_ID_ADDED_SHARED"] = "%s (%d) [+%d] were added to your collection.";
	["ITEM_ID_ADDED_SHARED_MISSING"] = "%s (%d) [+%d] were added to your collection. Not found in the database. Please report to the ATT Discord!";
	["ITEM_ID_REMOVED"] = "%s (%d) was removed from your collection.";
	["ITEM_ID_REMOVED_SHARED"] = "%s (%d) [+%d] were removed from your collection.";

	-- Tooltip Text
	["DROP_RATE"] = "Drop Rate";
	["QUEST_GIVER"] = "Quest Giver";
	["LOCKOUT"] = "Lockout";
	["SHARED"] = "Shared";
	["SPLIT"] = "Per Difficulty";
	["REQUIRES"] = "Requires";
	["REQUIRES_LEVEL"] = "Requires Level";
	["LIMITED_QUANTITY"] = "This has a limited quantity and may not always be present on the vendor.";

	-- Filter Text
	["ART_ID"] = "Art ID";
	["CREATURE_ID"] = "Creature ID";
	["CURRENCY_ID"] = "Currency ID";
	["EXPLORATION_ID"] = "Exploration ID";
	["FILTER_ID"] = "Filter ID";
	["ITEM_ID"] = "Item ID";
	["FACTION_ID"] = "Faction ID";
	["FLIGHT_PATH_ID"] = "Flight Path ID";
	["MAP_ID"] = "Map ID";
	["NPC_ID"] = "NPC ID";
	["OBJECT_ID"] = "Object ID";
	["QUEST_ID"] = "Quest ID";
	["SPELL_ID"] = "Spell ID";

	-- Icons and Collection Text
	["LOGO_SMALL"] = "Interface\\Addons\\ATT-Classic\\assets\\logo_tiny";		-- Winner of the Logo Contest (Used to be "Interface\\Icons\\INV_Axe_106.blp")
	["COLLECTED_ICON"] = "|TInterface\\Addons\\ATT-Classic\\assets\\known:0|t";	-- Acquired the colors and icon from CanIMogIt.
	["COLLECTED_APPEARANCE_ICON"] = "|TInterface\\Addons\\ATT-Classic\\assets\\known_circle:0|t";		-- Acquired the colors and icon from CanIMogIt.
	["COMPLETE_ICON"] = "|TInterface\\Addons\\ATT-Classic\\assets\\known_green:0|t";		-- Acquired the colors and icon from CanIMogIt.
	["NOT_COLLECTED_ICON"] = "|TInterface\\Addons\\ATT-Classic\\assets\\unknown:0|t";		-- Acquired the colors and icon from CanIMogIt.
	["COLLECTED"] = "|TInterface\\Addons\\ATT-Classic\\assets\\known:0|t |cff15abffCollected|r";		-- Acquired the colors and icon from CanIMogIt.
	["COLLECTED_APPEARANCE"] = "|TInterface\\Addons\\ATT-Classic\\assets\\known_circle:0|t |cff15abffCollected*|r";	-- Acquired the colors and icon from CanIMogIt.
	["NOT_COLLECTED"] = "|TInterface\\Addons\\ATT-Classic\\assets\\unknown:0|t |cffff9333Not Collected|r";		-- Acquired the colors and icon from CanIMogIt.
	["COMPLETE"] = "|TInterface\\Addons\\ATT-Classic\\assets\\known_green:0|t |cff6dce47Complete|r";		-- Acquired the colors and icon from CanIMogIt.
	["COMPLETE_OTHER"] = "|TInterface\\Addons\\ATT-Classic\\assets\\known_green:0|t |cff6dce47Complete*|r";		-- Acquired the colors and icon from CanIMogIt.
	["INCOMPLETE"] = "|TInterface\\Addons\\ATT-Classic\\assets\\unknown:0|t |cffff9333Incomplete|r";		-- Acquired the colors and icon from CanIMogIt.
	["KNOWN_ON_CHARACTER"] = "|TInterface\\Addons\\ATT-Classic\\assets\\known:0|t |cff15abffKnown on current character|r";
	["UNKNOWN_ON_CHARACTER"] = "|TInterface\\Addons\\ATT-Classic\\assets\\unknown:0|t |cffff9333Unknown on current character|r";

	["ABBREVIATIONS"] = {
		["ALL THE THINGS"] = "ATT",
		["ATT%-Classic"] = "ATT",
		["Expansion Pre"] = "Pre",
		["Dungeons & Raids"] = "D&R",
		["Player vs Player"] = STAT_CATEGORY_PVP,
		["Player vs. Player"] = STAT_CATEGORY_PVP,
		["Outdoor Zones"] = LFG_TYPE_ZONE,
		["Classic %> "] = "",
		["Burning Crusade"] = "BC",
		["Wrath of the Lich King"] = "WotLK",
		["Cataclysm"] = "Cata",
		["Mists of Pandaria"] = "MoP",
		["Warlords of Draenor"] = "WoD",
		["Battle for Azeroth"] = "BFA",
		["The Shadowlands"] = "SL",
		["Shadowlands"] = "SL",
		["Normal"] = "N",
		["Heroic"] = "H",
		["Mythic"] = "M",
		["Raid Finder"] = "LFR",
		["Looking For Raid"] = "LFR",
		["10 Player"] = "10M",
		["10 Player (Heroic)"] = "10M (H)",
		["25 Player"] = "25M",
		["25 Player (Heroic)"] = "25M (H)",
		["Pet Journal"] = PETS,
		["Toy Box"] = TOY,
	};
	["ABBREVIATIONS_POST"] = {
		--[" %-%> " .. LFG_TYPE_ZONE] = "",
		[TRACKER_HEADER_QUESTS] = BATTLE_PET_SOURCE_2,
	};
	["CUSTOM_DIFFICULTIES"] = {
		[-1] = "Raid Finder (5.4)",
		[-2] = "Flexible (5.4)",
		[-3] = "Normal (5.4)",
		[-4] = "Heroic (5.4)",
	};
	["FILTER_ID_TYPES"] = {
		-- Armor
		[1] = INVTYPE_HOLDABLE, 								-- Held in Off-Hand
		[2] = "Cosmetic",										-- Cosmetic
		[3] = INVTYPE_CLOAK,									-- Cloaks
		[4] = GetItemSubClassInfo(4,1),							-- Cloth
		[5] = GetItemSubClassInfo(4,2),							-- Leather
		[6] = GetItemSubClassInfo(4,3),							-- Mail
		[7] = GetItemSubClassInfo(4,4), 						-- Plate
		[8] = GetItemSubClassInfo(4,6),							-- Shields
		[9] = INVTYPE_TABARD,									-- Tabards
		[10] = INVTYPE_BODY,									-- Shirts

		-- Weapons
		[20] = GetItemSubClassInfo(2,15),						-- Daggers
		[21] = GetItemSubClassInfo(2,0),						-- 1H Axes
		[22] = GetItemSubClassInfo(2,1), 						-- 2H Axes
		[23] = GetItemSubClassInfo(2,4),						-- 1H Maces
		[24] = GetItemSubClassInfo(2,5),						-- 2H Maces
		[25] = GetItemSubClassInfo(2,7),						-- 1H Swords
		[26] = GetItemSubClassInfo(2,8),						-- 2H Swords
		[27] = GetItemSubClassInfo(2,19),						-- Wands
		[28] = GetItemSubClassInfo(2,10),						-- Staffs
		[29] = GetItemSubClassInfo(2,6),						-- Polearms
		[30] = GetItemSubClassInfo(2,17),						-- Spears
		[31] = GetItemSubClassInfo(2,3),						-- Guns
		[32] = GetItemSubClassInfo(2,2),						-- Bows
		[33] = GetItemSubClassInfo(2,18),						-- Crossbows
		[34] = GetItemSubClassInfo(2,13),						-- Fist Weapons

		-- Accessories
		[50] = AUCTION_CATEGORY_MISCELLANEOUS,					-- Miscellaneous
		[51] = INVTYPE_NECK,									-- Neck
		[52] = INVTYPE_FINGER,									-- Finger
		[53] = INVTYPE_TRINKET,									-- Trinket
		[54] = INVTYPE_RELIC,									-- Relic / Libram / Idols
		[55] = AUCTION_CATEGORY_CONSUMABLES,					-- Consumable
		[57] = GetItemSubClassInfo(2,20),						-- Fishing Poles

		-- Non-Equipment
		[100] = MOUNTS,											-- Mounts
		[104] = AUCTION_CATEGORY_QUEST_ITEMS, 					-- Quest Items
		[113] = INVTYPE_BAG, 									-- Bags
		[200] = AUCTION_CATEGORY_RECIPES,						-- Recipes
	};
	["FILTER_ID_ICONS"] = {
		[1] = "Interface\\Icons\\inv_misc_orb_01",							-- Held in Off-hand
		[2] = "Interface\\Icons\\Ability_Mage_IceForm",						-- Cosmetic
		[3] = "Interface\\Icons\\inv_misc_cape_11",							-- Cloaks
		[4] = "Interface\\Icons\\inv_chest_cloth_21",						-- Cloth Armor
		[5] = "Interface\\Icons\\inv_chest_leather_09",						-- Leather Armor
		[6] = "Interface\\Icons\\inv_chest_chain_05",						-- Mail Armor
		[7] = "Interface\\Icons\\inv_chest_plate01",						-- Plate Armor
		[8] = "Interface\\Icons\\inv_shield_06",							-- Shield
		[9] = "Interface\\Icons\\inv_misc_tournaments_tabard_gnome",		-- Tabards
		[10] = "Interface\\Icons\\inv_shirt_grey_01",						-- Shirts
		[20] = "Interface\\Icons\\inv_weapon_shortblade_01",				-- Daggers
		[21] = "Interface\\Icons\\inv_axe_17",								-- 1H Axes
		[22] = "Interface\\Icons\\inv_axe_09",								-- 2H Axes
		[23] = "Interface\\Icons\\inv_mace_02",								-- 1H Maces
		[24] = "Interface\\Icons\\inv_hammer_16",							-- 2H Maces
		[25] = "Interface\\Icons\\inv_sword_04",							-- 1H Swords
		[26] = "Interface\\Icons\\inv_sword_07",							-- 2H Swords
		[27] = "Interface\\Icons\\inv_wand_02",								-- Wands
		[28] = "Interface\\Icons\\inv_staff_27",							-- Staves
		[29] = "Interface\\Icons\\inv_spear_04",							-- Polearms
		[31] = "Interface\\Icons\\inv_weapon_rifle_01",						-- Guns
		[32] = "Interface\\Icons\\inv_weapon_bow_05",						-- Bows
		[33] = "Interface\\Icons\\inv_weapon_crossbow_01",					-- Crossbows
		[34] = "Interface\\Icons\\inv_misc_monsterclaw_02",					-- Fist Weapons
		[50] = "Interface\\Icons\\Spell_Misc_Drink",						-- Miscellaneous
		[51] = "Interface\\Icons\\INV_Jewelry_Necklace_02",					-- Neck
		[52] = "Interface\\Icons\\INV_Jewelry_Ring_04",						-- Finger
		[53] = "Interface\\Icons\\INV_Trinket_Naxxramas05",					-- Trinket
		[57] = "Interface\\Icons\\inv_fishingpole_01",						-- Fishing Poles
		[100] = "Interface\\Icons\\ability_mount_fireravengodmountgreen",	-- Mounts
		[113] = "Interface\\Icons\\INV_Misc_Bag_08",						-- Bag
		[200] = "Interface\\Icons\\inv_scroll_05",							-- Recipes
	},

	-- These need to be localized manually.
	["HEADER_ICONS"] = {
		[0] = "Interface\\Addons\\ATT-Classic\\assets\\INV_TreasureChest_FelfireCitadel", 	-- Zone Drop
		[-1] = "Interface\\Addons\\ATT-Classic\\assets\\Achievement_Garrison_Horde_PVE", 	-- Common Boss Drop
		[-2] = "Interface\\Icons\\INV_Misc_Coin_02", 										-- Vendors
		[-4] = "Interface\\Icons\\INV_Misc_Food_62", 										-- Free Festival Food
		[-5] = app.asset("Category_Holidays"), 												-- Holiday
		[-6] = app.asset("Category_FlightPaths"),											-- Flight Paths
		[-7] = "Interface\\Addons\\ATT-Classic\\assets\\Inv_offhand_1h_artifactskulloferedar_d_05",	-- World Bosses
		[-8] = app.asset("Category_Factions"),												-- Factions
		[-12] = "Interface\\Icons\\Spell_Shadow_SummonImp", 								-- East entrance demons
		[-13] = "Interface\\Icons\\inv_axe_10", 											-- North entrance ogres
		[-14] = "Interface\\Icons\\INV_Misc_Head_Elf_02", 									-- West entrace elves
		[-15] = "Interface\\Addons\\ATT-Classic\\assets\\INV_Misc_Map02",					-- Exploration
		[-16] = "Interface\\Icons\\Spell_Shadow_DeathScream",								-- Rare
		[-17] = "Interface\\Icons\\inv_misc_book_07", 										-- Quests
		[-18] = "Interface\\Icons\\INV_Misc_Bag_13", 										-- Rewards
		[-19] = "Interface\\Icons\\INV_Misc_Head_Dragon_Green",								-- Dragons of Nightmare (World Bosses)
		[-27] = "Interface\\Addons\\ATT-Classic\\assets\\Achievement_Boss_Overlord_Wyrmthalak",	-- Lower (Blackrock Spire)
		[-28] = "Interface\\Icons\\INV_Misc_Head_Dragon_01",								-- Upper (Blackrock Spire)
		[-30] = "Interface\\FriendsFrame\\PlusManz-Alliance",								-- Alliance
		[-31] = "Interface\\FriendsFrame\\PlusManz-Horde", 									-- Horde
		[-32] = "Interface\\Icons\\inv_sword_48",											-- Honor Titles
		[-47] = "Interface\\Icons\\inv_misc_elvencoins",									-- Lunar Festival
		[-50] = "Interface\\Icons\\achievement_worldevent_valentine",						-- Love is in the Air
		[-51] = "Interface\\Icons\\inv_egg_09",												-- Noblegarden
		[-52] = "Interface\\Icons\\inv_misc_toy_04",										-- Children's Week
		[-53] = "Interface\\Icons\\inv_summerfest_symbol_high",								-- Midsummer Fire Festival
		[-55] = "Interface\\Icons\\inv_helmet_66",											-- Pirate's Day
		[-56] = "Interface\\Icons\\achievement_worldevent_brewmaster",						-- Brewfest
		[-57] = "Interface\\Icons\\INV_Misc_Food_10", 										-- Harvest Festival
		[-58] = "Interface\\Addons\\ATT-Classic\\assets\\hallows_end",						-- Hallow's End
		[-60] = "Interface\\Icons\\inv_thanksgiving_turkey",								-- Pilgrim's Bounty
		[-61] = "Interface\\Icons\\inv_holiday_christmas_present_01",						-- Feast of Winter Veil
		[-62] = "Interface\\Icons\\inv_misc_fish_06",										-- Stranglethorn Fishing Extravaganza
		[-69] = "Interface\\Icons\\spell_arcane_portalironforge",							-- Maraudon Purple
		[-70] = "Interface\\Icons\\INV_Misc_Gem_Opal_01",									-- Orange
		[-71] = "Interface\\Icons\\INV_Misc_Gem_Amethyst_02",								-- Purple
		[-77] = "Interface\\Icons\\inv_sword_40",											-- Special (ZF)
		[-78] = "Interface\\Icons\\INV_Misc_Bag_08",										-- Timed Event
		[-79] = "Interface\\Icons\\INV_Misc_Bag_09",										-- First Chest
		[-80] = "Interface\\Icons\\INV_Misc_Bag_10",										-- Second Chest
		[-81] = "Interface\\Icons\\INV_Misc_Bag_11",										-- Third Chest
		[-82] = "Interface\\Icons\\INV_Box_01",												-- Final Chest
		[-85] = "Interface\\Icons\\inv_spear_01",											-- Graveyard (SM)
		[-86] = "Interface\\Icons\\INV_Misc_Book_13",										-- Library (SM)
		[-87] = "Interface\\Icons\\inv_helmet_25",											-- Armory (SM)
		[-88] = "Interface\\Icons\\inv_helmet_12",											-- Cathedral (SM)

		[-297] = "Interface\\Icons\\inv_letter_17", 								-- Mailbox
		[-304] = "Interface\\Icons\\INV_BannerPVP_02",								-- Battlegrounds
		[-318] = "Interface\\Icons\\INV_Chest_Plate03",								-- Armor
		[-319] = "Interface\\Icons\\INV_Sword_23",									-- Weapons
		[-320] = "Interface\\Icons\\inv_helmet_03",									-- Head
		[-321] = "Interface\\Icons\\inv_shoulder_05",								-- Shoulder
		[-322] = "Interface\\Icons\\inv_misc_cape_11",								-- Back
		[-323] = "Interface\\Icons\\inv_chest_chain",								-- Chest
		[-326] = "Interface\\Icons\\inv_bracer_07",									-- Wrist
		[-327] = "Interface\\Icons\\Inv_gauntlets_24",								-- Hands
		[-328] = "Interface\\Icons\\inv_belt_24",									-- Waist
		[-329] = "Interface\\Icons\\inv_pants_09",									-- Legs
		[-330] = "Interface\\Icons\\inv_boots_09",									-- Feet

		[-367] = "Interface\\Icons\\ability_rogue_deviouspoisons",					-- The Construct Quarter
		[-368] = "Interface\\Icons\\inv_trinket_naxxramas04",						-- The Arachnid Quarter
		[-369] = "Interface\\Icons\\spell_deathknight_classicon",					-- The Military Quarter
		[-370] = "Interface\\Icons\\inv_misc_cauldron_nature",						-- The Plague Quarter
		[-371] = "Interface\\Icons\\inv_misc_head_dragon_blue",						-- The Upper Necropolis
		[-383] = "Interface\\Icons\\inv_misc_gem_variety_02",						-- Miscellaneous
		[-388] = "Interface\\Icons\\INV_Misc_Token_ScarletCrusade",					-- Main Gate (Stratholme)
		[-389] = "Interface\\Icons\\INV_MISC_KEY_13",								-- Service Entrance (Stratholme)
		[-420] = "Interface\\Icons\\INV_Chest_Plate03",								-- Tier 0.5 Sets
		[-538] = "Interface\\Icons\\inv_box_01",									-- The Ahn'Qiraj War Effort
		[-539] = "Interface\\Icons\\Inv_hammer_25",									-- The Scepter of the Shifting Sands
		[-540] = "Interface\\Icons\\inv_stone_02",									-- The Scourge Invasion
		[-541] = "Interface\\Icons\\spell_holiday_tow_spicecloud",					-- The Silithyst Must Flow
		[-542] = "Interface\\Icons\\achievement_dungeon_outland_dungeonmaster",		-- The Opening of the Dark Portal
	};
	["HEADER_NAMES"] = {
		[0] = ZONE.." "..BATTLE_PET_SOURCE_1, 									-- Zone Drop
		[-1] = BATTLE_PET_BREED_QUALITY2.." "..TRANSMOG_SOURCE_1,				-- Common Boss Drop
		[-2] = BATTLE_PET_SOURCE_3, 											-- Vendor
		[-4] = "Free Festival Food", 											-- Free Festival Food
		[-5] = "Holiday", 														-- Holiday
		[-6] = "Flight Paths",													-- Flight Paths
		[-7] = WORLD.." "..RAID_BOSSES, 										-- World Bosses
		[-8] = "Factions",														-- Factions
		[-12] = DUNGEON_FLOOR_DIREMAUL5.." (East)",								-- Warpwood Quarter
		[-13] = DUNGEON_FLOOR_DIREMAUL1.." (North)",							-- Gordok Commons
		[-14] = DUNGEON_FLOOR_DIREMAUL2.." (West)",								-- Capital Gardens
		[-15] = "Exploration",													-- Exploration
		[-16] = BATTLE_PET_BREED_QUALITY4, 										-- Rares
		[-17] = TRACKER_HEADER_QUESTS, 											-- Quests
		[-18] = QUEST_REWARDS, 													-- Rewards
		[-19] = "Dragons of Nightmare",											-- Dragons of Nightmare (World Bosses)
		[-20] = "Silithid Royalty",												-- Silithid Royalty
		[-21] = "Captains",
		[-22] = "Atal'ai Defenders",											-- Atal'ai Defenders
		[-23] = "The Four Horsemen",											-- The Four Horsemen
		[-27] = "Lower",														-- Lower (Blackrock Spire)
		[-28] = "Upper",														-- Upper (Blackrock Spire)
		[-30] = FACTION_ALLIANCE,												-- Alliance
		[-31] = FACTION_HORDE, 													-- Horde
		[-32] = "Honor Titles",													-- Honor Titles
-- World Events
		[-47] = "Lunar Festival",												-- Lunar Festival
		[-50] = "Love is in the Air",											-- Love is in the Air
		[-51] = "Noblegarden",													-- Noblegarden
		[-52] = "Children's Week",												-- Children's Week
		[-53] = "Midsummer Fire Festival",										-- Midsummer Fire Festival
		[-55] = "Pirate's Day",
		[-56] = "Brewfest",														-- Brewfest
		[-57] = "Harvest Festival",												-- Harvest Festival
		[-58] = "Hallow's End",													-- Hallow's End
		[-60] = "Pilgrim's Bounty",												-- Pilgrim's Bounty
		[-61] = "Feast of Winter Veil",											-- Feast of Winter Veil
		[-62] = "Stranglethorn Fishing Extravaganza",
		[-69] = "Maraudon Portal",												-- Maraudon Portal
		[-70] = "Foulspore Cavern [Orange]",									-- Foulspore Cavern [Orange]
		[-71] = "The Wicked Grotto [Purple]",									-- The Wicked Grotto [Purple]
		[-77] = SPECIAL, 														-- Special
		[-78] = "Timed Event",
		[-79] = "First Chest",
		[-80] = "Second Chest",
		[-81] = "Third Chest",
		[-82] = "Final Chest",
		
		[-85] = "Graveyard",
		[-86] = "Library",
		[-87] = "Armory",
		[-88] = "Cathedral",
-- Other
		[-297] = MINIMAP_TRACKING_MAILBOX,										-- Mailbox
		[-304] = BATTLEGROUNDS,													-- Battlegrounds
		[-318] = ARMOR, 														-- Armor
		[-319] = AUCTION_CATEGORY_WEAPONS, 										-- Weapons
		[-320] = INVTYPE_HEAD, 													-- Head
		[-321] = INVTYPE_SHOULDER, 												-- Shoulder
		[-322] = INVTYPE_CLOAK,													-- Back
		[-323] = INVTYPE_CHEST, 												-- Chest
		[-326] = INVTYPE_WRIST, 												-- Wrist
		[-327] = INVTYPE_HAND, 													-- Hands
		[-328] = INVTYPE_WAIST, 												-- Waist
		[-329] = INVTYPE_LEGS, 													-- Legs
		[-330] = INVTYPE_FEET, 													-- Feet
-- Dungeon/Raid Wing Info
		[-367] = DUNGEON_FLOOR_NAXXRAMAS1, 										-- The Construct Quarter
		[-368] = DUNGEON_FLOOR_NAXXRAMAS2, 										-- The Arachnid Quarter
		[-369] = DUNGEON_FLOOR_NAXXRAMAS3,					 					-- The Military Quarter
		[-370] = DUNGEON_FLOOR_NAXXRAMAS4, 										-- The Plague Quarter
		[-371] = DUNGEON_FLOOR_NAXXRAMAS6, 										-- The Upper Necropolis
		[-383] = GetItemSubClassInfo(2,14),										-- Miscellaneous (Holidays)
		[-388] = "Main Gate",													-- Main Gate (Stratholme)
		[-389] = "Service Entrance",											-- Service Entrance (Stratholme)
		[-420] = "Tier 0.5 Sets",												-- Tier 0.5 Sets

-- Blizzard Events and Anniversaries
		[-538] = "The Ahn'Qiraj War Effort",
		[-539] = "The Scepter of the Shifting Sands",
		[-540] = "The Scourge Invasion",
		[-541] = "The Silithyst Must Flow",
		[-542] = "The Opening of the Dark Portal",
-- Factions / Cities
		[-10066] = "Legendary",
	},
	["HEADER_DESCRIPTIONS"] = {
		[-5] = "A specific holiday may need to be active for you to complete the referenced Things within this section.",
	};
	
	["OBJECT_ID_ICONS"] = {
		[31] = "Interface\\Icons\\INV_Mount_AllianceLionG",
		[34] = "Interface\\Icons\\INV_Drink_11",
		[55] = "Interface\\Icons\\INV_Misc_Bone_HumanSkull_01",
		[56] = "Interface\\Icons\\INV_Misc_Bone_HumanSkull_01",
		[61] = "Interface\\Icons\\Achievement_BG_Xkills_AVgraveyard",
		[256] = "Interface\\Icons\\INV_Inscription_ScrollOfWisdom_01",
		[259] = "Interface\\Icons\\Archaeology_5_0_EmptyKegOfBrewfatherXinWoYin",
		[270] = "Interface\\Icons\\INV_Holiday_BrewfestBuff_01",
		[1627] = "Interface\\Icons\\INV_Crate_03",
		[1738] = "Interface\\Icons\\inv_scroll_03",
		[1740] = "Interface\\Icons\\inv_scroll_03",
		[1763] = "Interface\\Icons\\inv_jewelry_talisman_05",
		[1765] = "Interface\\Icons\\INV_Crate_03",
		[2008] = "Interface\\Icons\\inv_misc_head_human_01",
		[2059] = "Interface\\Icons\\INV_Misc_Bone_DwarfSkull_01",
		[2076] = "Interface\\Icons\\INV_Misc_Cauldron_Arcane",
		[2083] = "Interface\\Icons\\inv_misc_scrollunrolled04",
		[2701] = "Interface\\Icons\\INV_Stone_15",
		[2702] = "Interface\\Icons\\INV_Stone_15",
		[2713] = "Interface\\Icons\\INV_Inscription_ScrollOfWisdom_01",
		[2908] = "Interface\\Icons\\INV_Crate_03",
		[3972] = "Interface\\Icons\\inv_misc_head_human_01",
		[4141] = "Interface\\Icons\\inv_misc_gear_08",
		[5620] = "Interface\\Icons\\inv_misc_gem_diamond_02",
		[6751] = "Interface\\Icons\\inv_misc_food_21",
		[6752] = "Interface\\Icons\\inv_misc_herb_04",
		[7510] = "Interface\\Icons\\inv_misc_herb_04",
		[12564] = "Interface\\Icons\\inv_letter_17",
		[15084] = "Interface\\Icons\\inv_misc_enggizmos_09",
		[15085] = "Interface\\Icons\\inv_misc_enggizmos_09",
		[20805] = "Interface\\Icons\\inv_scroll_03",
		[20985] = "Interface\\Icons\\inv_misc_dust",
		[20992] = "Interface\\Icons\\inv_shield_04",
		[21042] = "Interface\\Icons\\inv_shield_05",
		[35251] = "Interface\\Icons\\Garrison_BronzeChest",
		[37099] = "Interface\\Icons\\INV_Misc_StoneTablet_03",
		[62483] = "Interface\\Icons\\INV_WorseRobot",
		[112948] = "Interface\\Icons\\INV_Misc_Food_Lunchbox_Silver",
		[113768] = "Interface\\Icons\\inv_egg_06",
		[131474] = "Interface\\Icons\\Creatureportrait_Nexus_Floating_Disc",
		[138492] = "Interface\\Icons\\INV_Misc_Apexis_Shard",
		[141832] = "Interface\\Icons\\inv_hammer_19",
		[142195] = "Interface\\Icons\\INV_Misc_Map07",
		[142343] = "Interface\\Icons\\inv_misc_platnumdisks",
		[142487] = "Interface\\Icons\\inv_misc_enggizmos_09",
		[149036] = "Interface\\Icons\\INV_Box_01",
		[156561] = "Interface\\Icons\\INV_Inscription_ScrollOfWisdom_01",
		[160836] = "Interface\\Icons\\Battleground_Strongbox_Silver_Alliance",
		[161495] = "Interface\\Icons\\Battleground_Strongbox_Silver_Alliance",
		[161521] = "Interface\\Icons\\Icon_PetFamily_Mechanical",
		[161526] = "Interface\\Icons\\INV_Crate_08",
		[164820] = "Interface\\Icons\\Achievement_Character_Dwarf_Male",
		[164869] = "Interface\\Icons\\INV_Misc_Bowl_01",
		[164955] = "Interface\\Icons\\INV_Misc_Gem_Crystal_01",
		[164956] = "Interface\\Icons\\INV_Misc_Gem_Crystal_01",
		[164957] = "Interface\\Icons\\INV_Misc_Gem_Crystal_01",
		[169243] = "Interface\\Icons\\INV_Plate_BlackrockClan_B_01Chest",
		[173232] = "Interface\\Icons\\INV_Misc_ScrollUnrolled01",
		[176091] = "Interface\\Icons\\INV_Misc_Cauldron_Arcane",
		[176115] = "Interface\\Icons\\inv_misc_foot_centaur",
		[176392] = "Interface\\Icons\\INV_Alchemy_70_Cauldron",
		[176582] = "Interface\\Icons\\inv_misc_fish_14",
		[177904] = "Interface\\Icons\\ability_hunter_pet_spider",
		[179485] = "Interface\\Icons\\Ability_Hunter_TrapLauncher",
		[179501] = "Interface\\Icons\\INV_Crate_01",
		[179697] = "Interface\\Icons\\INV_Box_02",
		[179832] = "Interface\\Icons\\inv_misc_armorkit_06",
		[180327] = "Interface\\Icons\\inv_poison_mindnumbing",
		[180366] = "Interface\\Icons\\INV_Fishingpole_02",
		[180368] = "Interface\\Icons\\INV_Misc_StoneTablet_08",
		[180448] = "Interface\\Icons\\INV_Inscription_ScrollOfWisdom_01",
		[180503] = "Interface\\Icons\\INV_Misc_Book_09",
		[180690] = "Interface\\Icons\\INV_Misc_StoneTablet_03",
		[180691] = "Interface\\Icons\\INV_Misc_StoneTablet_03",
		[180794] = "Interface\\Icons\\INV_Misc_Book_06",
		[180918] = "Interface\\Icons\\INV_Inscription_ScrollOfWisdom_01",
		[181011] = "Interface\\Icons\\INV_Misc_Book_11",
		[181074] = "Interface\\Icons\\Garrison_SilverChest",
		[181147] = "Interface\\Icons\\INV_Inscription_ScrollOfWisdom_01",
		[181150] = "Interface\\Icons\\INV_Misc_Book_11",
		[181153] = "Interface\\Icons\\INV_Inscription_ScrollOfWisdom_01",
		[181333] = "Interface\\Icons\\INV_SummerFest_FireSpirit",
		[181334] = "Interface\\Icons\\INV_SummerFest_FireSpirit",
		[181335] = "Interface\\Icons\\INV_SummerFest_FireSpirit",
		[181336] = "Interface\\Icons\\INV_SummerFest_FireSpirit",
		[181337] = "Interface\\Icons\\INV_SummerFest_FireSpirit",
		[181643] = "Interface\\Icons\\INV_Misc_Bone_DwarfSkull_01",
		[181649] = "Interface\\Icons\\INV_Misc_Book_11",
		[181748] = "Interface\\Icons\\Creatureportrait_IllidanCrystal01",
		[181889] = "Interface\\Icons\\INV_Inscription_ScrollOfWisdom_01",
		[182032] = "Interface\\Icons\\INV_Misc_Book_09",
		[182115] = "Interface\\Icons\\INV_Inscription_ScrollOfWisdom_01",
		[182165] = "Interface\\Icons\\INV_Inscription_ScrollOfWisdom_01",
		[182549] = "Interface\\Icons\\INV_Inscription_ScrollOfWisdom_01",
		[182587] = "Interface\\Icons\\INV_Inscription_ScrollOfWisdom_01",
		[182588] = "Interface\\Icons\\INV_Inscription_ScrollOfWisdom_01",
		[182952] = "Interface\\Icons\\INV_Crate_01",
		[183770] = "Interface\\Icons\\Spell_Mage_FocusingCrystal",
		[183811] = "Interface\\Icons\\INV_Inscription_ScrollOfWisdom_01",
		[184465] = "Interface\\Icons\\INV_6_2Raid_Trinket_3b",
		[184660] = "Interface\\Icons\\INV_Inscription_ScrollOfWisdom_01",
		[184825] = "Interface\\Icons\\INV_Misc_Book_05",
		[184945] = "Interface\\Icons\\INV_Inscription_ScrollOfWisdom_01",
		[184946] = "Interface\\Icons\\INV_Inscription_ScrollOfWisdom_01",
		[185035] = "Interface\\Icons\\INV_Inscription_ScrollOfWisdom_01",
		[185126] = "Interface\\Icons\\ToolTip_CrystallizedFel",
		[185165] = "Interface\\Icons\\ToolTip_CrystallizedFel",
		[185927] = "Interface\\Icons\\ToolTip_CrystallizedFel",
		[186426] = "Interface\\Icons\\INV_Inscription_ScrollOfWisdom_01",
		[186648] = "Interface\\Icons\\INV_Box_01",
		[186667] = "Interface\\Icons\\inv_misc_treasurechest03a",
		[186672] = "Interface\\Icons\\INV_Misc_Bag_10",
		[186887] = "Interface\\Icons\\INV_Misc_Bag_28_Halloween",
		[187021] = "Interface\\Icons\\INV_Misc_Basket_05",
		[187273] = "Interface\\Icons\\INV_Misc_Moosehoof_Black",
		[187559] = "Interface\\Icons\\Spell_Holy_InnerFire",
		[187564] = "Interface\\Icons\\Spell_Holy_InnerFire",
		[187565] = "Interface\\Icons\\trade_archaeology_dwarf_runestone",
		[187851] = "Interface\\Icons\\inv_misc_candle_02",
		[187905] = "Interface\\Icons\\inv_cloudserpent_egg_red",
		[187916] = "Interface\\Icons\\Spell_Holy_InnerFire",
		[187917] = "Interface\\Icons\\Spell_Holy_InnerFire",
		[187921] = "Interface\\Icons\\Spell_Holy_InnerFire",
		[187923] = "Interface\\Icons\\Spell_Holy_InnerFire",
		[187924] = "Interface\\Icons\\Spell_Holy_InnerFire",
		[187927] = "Interface\\Icons\\Spell_Holy_InnerFire",
		[187947] = "Interface\\Icons\\Spell_Holy_InnerFire",
		[187948] = "Interface\\Icons\\Spell_Holy_InnerFire",
		[187957] = "Interface\\Icons\\Spell_Holy_InnerFire",
		[187958] = "Interface\\Icons\\Spell_Holy_InnerFire",
		[187959] = "Interface\\Icons\\Spell_Holy_InnerFire",
		[188085] = "Interface\\Icons\\inv_misc_food_wheat_01",
		[188128] = "Interface\\Icons\\INV_SummerFest_FireSpirit",
		[188129] = "Interface\\Icons\\INV_SummerFest_FireSpirit",
		[189989] = "Interface\\Icons\\INV_Misc_WartornScrap_Plate",
		[189990] = "Interface\\Icons\\INV_Misc_WartornScrap_Plate",
	};
	["OBJECT_ID_NAMES"] = {
		[31] = "Old Lion Statue",
		[34] = "Old Jug",
		[35] = "Captain's Footlocker",
		[36] = "Broken Barrel",
		[47] = "Wanted: Lieutenant Fangore",
		[55] = "A half-eaten body",
		[56] = "Rolf's corpse",
		[59] = "Mound of loose dirt",
		[60] = "Wanted: Gath'Ilzogg",
		[61] = "A Weathered Grave",
		[68] = "Wanted Poster",
		[255] = "Musty Scroll",
		[256] = "Wanted!",
		[257] = "Suspicious Barrel",
		[259] = "Half-buried Barrel",
		[261] = "Damaged Crate",
		[269] = "Guarded Thunder Ale Barrel",
		[270] = "Unguarded Thunder Ale Barrel",
		[287] = "Bookie Herod's Records",
		[288] = "Bookie Herod's Strongbox",
		[711] = "Wanted!",
		[1557] = "Lillith's Dinner Table",
		[1561] = "Sealed Crate",
		[1585] = "Explosive Charge",
		[1586] = "Crate of Candles",
		[1593] = "Corpse Laden Boat",
		[1599] = "Shallow Grave",
		[1609] = "Dragonmaw Catapult",
		[1627] = "Dalaran Crate",
		[1738] = "Syndicate Documents",
		[1740] = "Syndicate Documents",
		[1763] = "Wanted Board",
		[1765] = "Worn Wooden Chest",
		[2008] = "Wanted Poster",
		[2059] = "A Dwarven Corpse",
		[2076] = "Bubbling Cauldron",
		[2083] = "Bloodsail Correspondence",
		[2289] = "Ruined Lifeboat",
		[2553] = "A Soggy Scroll",
		[2652] = "Ebenezer Rustlocke's Corpse",
		[2688] = "Keystone",
		[2689] = "Stone of West Binding",
		[2690] = "Stone of Outer Binding",
		[2691] = "Stone of East Binding",
		[2701] = "Iridescent Shards",
		[2702] = "Stone of Inner Binding",
		[2713] = "Wanted Board",
		[2734] = "Waterlogged Chest",
		[2868] = "Crumpled Map",
		[2875] = "Battered Dwarven Skeleton",
		[2908] = "Sealed Supply Crate",
		[2933] = "Seal of the Earth",
		[3189] = "Attack Plan: Valley of Trials",
		[3190] = "Attack Plan: Sen'jin Village",
		[3192] = "Attack Plan: Orgrimmar",
		[3239] = "Benedict's Chest",
		[3643] = "Old Footlocker",
		[3972] = "WANTED: Baron Longshore",
		[4141] = "Control Console",
		[5620] = "Flawed Power Stones",
		[6751] = "Strange Fruited Plant",
		[6752] = "Strange Fronded Plant",
		[7510] = "Sprouted Frond",
		[10076] = "Scrying Bowl",
		[12564] = "Assassination Notice",
		[12666] = "Twilight Tome",
		[15084] = "The Sparklematic 5200",
		[15085] = "The Sparklematic 5200",
		[17182] = "Buzzbox 827",
		[17183] = "Buzzbox 411",
		[17184] = "Buzzbox 323",
		[19022] = "Worn Chest",
		[19023] = "Step 7: Page 2351",
		[19024] = "Hidden Shrine",
		[19877] = "Velinde's Locker",
		[20805] = "Rizzle's Unguarded Plans",
		[20985] = "Loose Dirt",
		[20992] = "Black Shield",
		[21015] = "Hoofprints",
		[21016] = "Hoofprints",
		[21042] = "Theramore Guard Badge",
		[35251] = "Karnitol's Chest",
		[37099] = "Atal'ai Tablet",
		[50961] = "Malem Chest",
		[51708] = "Eliza's Grave Dirt",
		[61934] = "Brazier of the Dormant Flame",
		[103821] = "Doan's Strongbox",
		[112888] = "Dusty Shelf",
		[112948] = "Intrepid's Locked Strongbox",
		[113757] = "Shadowforge Cache",
		[113768] = GetSpellInfo(61820),
		[123329] = "Baelog's Chest",
		[124388] = "Garrett Family Chest",
		[124389] = "Krom Stoutarm's Chest",
		[125477] = "Conspicuous Urn",
		[126260] = "Ancient Chest",
		[131474] = "The Discs of Norgannon",
		[131979] = "Large Darkwood Chest",
		[138492] = "Shards of Myzrael",
		[141832] = "Gong of Zul'Farrak",
		[141979] = "Ancient Treasure",
		[142088] = "Tablet of Will",
		[142122] = "Wanted Poster",
		[142151] = "Sealed Barrel",
		[142179] = "Solarsal Gazebo",
		[142185] = "Flame of Byltan",
		[142186] = "Flame of Lahassa",
		[142187] = "Flame of Imbel",
		[142188] = "Flame of Samha",
		[142195] = "Woodpaw Battle Map",
		[142343] = "Uldum Pedestal",
		[142487] = "The Sparklematic 5200",
		[142702] = "Venom Bottle",
		[142958] = "Feralas: A History",
		[144063] = "Equinex Monolith",
		[148502] = "Step 1: Page 9",
		[148504] = "A Conspicuous Gravestone",
		[149036] = "Marvon's Chest",
		[149502] = "Hoard of the Black Dragonflight",
		[150075] = "Wanted Poster",
		[151286] = "Kaldorei Tome of Summoning",
		[156561] = "Wanted Poster",
		[160836] = "Relic Coffer",
		[160845] = "Dark Coffer",
		[161495] = "Secret Safe",
		[161504] = "A Small Pack",
		[161505] = "A Wrecked Raft",
		[161521] = "Research Equipment",
		[161526] = "Crate of Foodstuffs",
		[164820] = "Dark Keeper Nameplate",
		[164867] = "WANTED",
		[164868] = "KILL ON SIGHT",
		[164869] = "The Spectral Chalice",
		[164885] = "Corrupted Night Dragon",
		[164886] = "Corrupted Songflower",
		[164887] = "Corrupted Windblossom",
		[164888] = "Corrupted Whipper Root",
		[164909] = "Wrecked Row Boat",
		[164953] = "Large Leather Backpacks",
		[164954] = "Zukk'ash Pod",
		[164955] = "Northern Crystal Pylon",
		[164956] = "Western Crystal Pylon",
		[164957] = "Eastern Crystal Pylon",
		[169243] = "Chest of The Seven",
		[171939] = "Corrupted Songflower",
		[171942] = "Corrupted Songflower",
		[173232] = "Blacksmithing Plans",
		[173265] = "Wooden Outhouse",
		[173284] = "Corrupted Whipper Root",
		[173324] = "Corrupted Night Dragon",
		[173327] = "Corrupted Windblossom",
		[174594] = "Corrupted Songflower",
		[174595] = "Corrupted Songflower",
		[174596] = "Corrupted Songflower",
		[174597] = "Corrupted Songflower",
		[174598] = "Corrupted Songflower",
		[174599] = "Corrupted Windblossom",
		[174600] = "Corrupted Windblossom",
		[174601] = "Corrupted Windblossom",
		[174602] = "Corrupted Windblossom",
		[174603] = "Corrupted Windblossom",
		[174604] = "Corrupted Windblossom",
		[174605] = "Corrupted Whipper Root",
		[174606] = "Corrupted Whipper Root",
		[174607] = "Corrupted Whipper Root",
		[174608] = "Corrupted Night Dragon",
		[174682] = "Beware of Pterrordax",
		[174684] = "Corrupted Night Dragon",
		[174686] = "Corrupted Whipper Root",
		[174708] = "Corrupted Windblossom",
		[174709] = "Corrupted Windblossom",
		[174712] = "Corrupted Songflower",
		[174713] = "Corrupted Songflower",
		[174848] = "Testing Equipment",
		[175226] = "Beached Sea Creature",
		[175227] = "Beached Sea Creature",
		[175230] = "Beached Sea Creature",
		[175233] = "Beached Sea Creature",
		[175320] = "WANTED: Murkdeep!",
		[175524] = "Mysterious Red Crystal",
		[175586] = "Jaron's Wagon",
		[175587] = "Damaged Crate",
		[175756] = "The Scourge of Lordaeron",
		[175894] = "Janice's Parcel",
		[175924] = "Locked Cabinet",
		[175925] = "Outhouse",
		[175926] = "Mrs. Dalson's Diary",
		[176090] = "Human Remains",
		[176091] = "Deadwood Cauldron",
		[176115] = "Wanted Poster - Arnak Grimtotem",
		[176190] = "Beached Sea Creature",
		[176191] = "Beached Sea Creature",
		[176192] = "Catalogue of the Wayward",
		[176196] = "Beached Sea Creature",
		[176197] = "Beached Sea Creature",
		[176198] = "Beached Sea Creature",
		[176361] = "Scourge Cauldron",
		[176392] = "Scourge Cauldron",
		[176393] = "Scourge Cauldron",
		[176582] = "Shellfish Trap",
		[176631] = "Menethil's Gift",
		[177289] = "Scourge Cauldron",
		[177491] = "Termite Barrel",
		[177667] = "Torn Scroll",
		[177787] = "Rackmore's Log",
		[177904] = "Wanted Poster: Besseleth",
		[177964] = "Fathom Stone",
		[178144] = "Troll Chest",
		[178227] = "Murgut's Totem Basket",
		[178553] = "Hive'Ashi Pod",
		[179485] = "A Broken Trap",
		[179499] = "Ogre Tannin Basket",
		[179501] = "Knot Thimblejack's Cache",
		[179564] = "Gordok Tribute Chest",
		[179565] = "Dusty Reliquary",
		[179697] = "Arena Treasure Chest",
		[179827] = "Wanted/Missing/Lost & Found",
		[179832] = "Pillaclencher's Ornate Pillow",
		[179913] = "Call to Arms!",
		[180229] = "Jinxed Hoodoo Pile",
		[180327] = "Brazier of Madness",
		[180366] = "Battered Tackle Box",
		[180368] = "Tablet of Madness",
		[180448] = "Wanted Poster: Deathclasp",
		[180503] = "Sandy Cookbook",
		[180570] = "Keg",
		[180633] = "Crystalline Tear",
		[180642] = "Inconspicuous Crate",
		[180652] = "Freshly Dug Dirt",
		[180690] = "Large Scarab Coffer",
		[180691] = "Scarab Coffer",
		[180717] = "The Scarab Gong",
		[180794] = "Journal of Jandice Barov",
		[180918] = "Wanted: Thaelis the Hungerer",
		[181011] = "Magister Duskwither's Journal",
		[181074] = "Arena Spoils",
		[181083] = "Sothos and Jarien's Heirlooms",
		[181147] = "Wanted Poster",
		[181150] = "Dusty Journal",
		[181153] = "Wanted Poster: Kel'gash the Wicked",
		[181333] = "Flame of Ironforge",
		[181334] = "Flame of Darnassus",
		[181335] = "Flame of the Undercity",
		[181336] = "Flame of Orgrimmar",
		[181337] = "Flame of Thunder Bluff",
		[181643] = "Featherbeard's Remains",
		[181649] = "Featherbeard's Journal",
		[181748] = "Blood Crystal",
		[181756] = "Battered Ancient Book",
		[181889] = "Wanted Poster",
		[182032] = "Galaen's Journal",
		[182115] = "Wanted Poster",
		[182165] = "Wanted Poster",
		[182392] = "Garadar Bulletin Board",
		[182549] = "Fel Orc Plans",
		[182587] = "Wanted Poster",
		[182588] = "Wanted Poster",
		[182939] = "Telaar Bulletin Board",
		[182947] = "The Codex of Blood",
		[182952] = "Steam Pump Flotsam",
		[183284] = "Wanted Poster",
		[183770] = "B'naar Control Console",
		[183811] = "Wanted Poster",
		[184300] = "Necromantic Focus",
		[184465] = "Cache of the Legion",
		[184660] = "Wanted Poster",
		[184825] = "Lashh'an Tome",
		[184945] = "Wanted Poster",
		[184946] = "Wanted Poster",
		[185035] = "Wanted Poster",
		[185126] = "Crystal Prison",
		[185165] = "Legion Communicator",
		[185168] = "Reinforced Fel Iron Chest",
		[185927] = "Fel Crystal Prism",
		[186426] = "Wanted Poster",
		[186648] = "Hazlek's Trunk",
		[186667] = "Norkani's Package",
		[186672] = "Kasha's Bag",
		[186887] = "Large Jack-o'-Lantern",
		[187021] = "Bakkalzu's Satchel",
		[187273] = "Suspicious Hoofprint",
		[187559] = "Horde Bonfire",
		[187564] = "Alliance Bonfire",
		[187565] = "Elder Atkanok",
		[187674] = "Ith'rix's Hardened Carapace",
		[187851] = "Cultist Shrine",
		[187905] = "Massive Glowing Egg",
		[187916] = "Alliance Bonfire",
		[187917] = "Alliance Bonfire",
		[187921] = "Alliance Bonfire",
		[187923] = "Alliance Bonfire",
		[187924] = "Alliance Bonfire",
		[187927] = "Alliance Bonfire",
		[187947] = "Horde Bonfire",
		[187948] = "Horde Bonfire",
		[187957] = "Horde Bonfire",
		[187958] = "Horde Bonfire",
		[187959] = "Horde Bonfire",
		[188085] = "Plagued Grain",
		[188128] = "Flame of the Exodar",
		[188129] = "Flame of Silvermoon",
		[188261] = "Battered Journal",
		[188364] = "Wrecked Crab Trap",
		[188365] = "Heart of the Ancients",
		[188418] = "Wanted!",
		[188419] = "Elder Mana'loa",
		[188667] = "Amberseed",
		[189311] = "Flesh-bound Tome",
		[189989] = "Dark Iron Mole Machine Wreckage",
		[189990] = "Dark Iron Mole Machine Wreckage",
	};

	-- Tier Text
	["CLASSIC_TIER_DESC"] = "Four years after the Battle of Mount Hyjal, tensions between the Alliance & the Horde begin to arise once again. Intent on settling the arid region of Durotar, Thrall's new Horde expanded its ranks, inviting the undead Forsaken to join orcs, tauren, & trolls. Meanwhile, dwarves, gnomes & the ancient night elves pledged their loyalties to a reinvigorated Alliance, guided by the human kingdom of Stormwind. After Stormwind's king, Varian Wrynn, mysteriously disappeared, Highlord Bolvar Fordragon served as Regent but his service was marred by the manipulations & mind control of the Onyxia, who ruled in disguise as a human noblewoman. As heroes investigated Onyxia's manipulations, ancient foes surfaced in lands throughout the world to menace Horde & Alliance alike.";
	["TBC_TIER_DESC"] = "The Burning Crusade is the first expansion. Its main features include an increase of the level cap up to 70, the introduction of the blood elves & the draenei as playable races, & the addition of the world of Outland, along with many new zones, dungeons, items, quests, & monsters.";
	["WOTLK_TIER_DESC"] = "Wrath of the Lich King is the second expansion. The majority of the expansion content takes place in Northrend & centers around the plans of the Lich King. Content highlights include the increase of the level cap from 70 to 80, the introduction of the death knight Hero class, & new PvP/World PvP content.";
	["CATA_TIER_DESC"] = "Cataclysm is the third expansion. Set primarily in a dramatically reforged Kalimdor & Eastern Kingdoms on the world of Azeroth, the expansion follows the return of Deathwing, who causes a new Sundering as he makes his cataclysmic re-entrance into the world from Deepholm. Cataclysm returns players to the two continents of Azeroth for most of their campaigning, opening new zones such as Mount Hyjal, the sunken world of Vashj'ir, Deepholm, Uldum and the Twilight Highlands. It includes two new playable races, the worgen & the goblins. The expansion increases level cap to 85, adds the ability to fly in Kalimdor & Eastern Kingdoms, introduces Archaeology & reforging, & restructures the world itself.";
	["MOP_TIER_DESC"] = "Mists of Pandaria is the fourth expansion pack. The expansion refocuses primarily on the war between the Alliance & Horde, in the wake of the accidental rediscovery of Pandaria. Adventurers rediscover the ancient pandaren people, whose wisdom will help guide them to new destinies; the Pandaren Empire's ancient enemy, the mantid; and their legendary oppressors, the enigmatic mogu. The land changes over time & the conflict between Varian Wrynn & Garrosh Hellscream escalates. As civil war wracks the Horde, the Alliance & forces in the Horde opposed to Hellscream's violent uprising join forces to take the battle directly to Hellscream & his Sha-touched allies in Orgrimmar.";
	["WOD_TIER_DESC"] = "Warlords of Draenor is the fifth expansion. Across Draenor's savage jungles & battle-scarred plains, Azeroth's heroes will engage in a mythic conflict involving mystical draenei champions & mighty orc clans, & cross axes with the likes of Grommash Hellscream, Blackhand, & Ner’zhul at the height of their primal power. Players will need to scour this unwelcoming land in search of allies to help build a desperate defense against the old Horde’s formidable engine of conquest, or else watch their own world’s bloody, war-torn history repeat itself.";
	["LEGION_TIER_DESC"] = "Legion is the sixth expansion. Gul'dan is expelled into Azeroth to reopen the Tomb of Sargeras & the gateway to Argus, commencing the third invasion of the Burning Legion. After the defeat at the Broken Shore, the defenders of Azeroth search for the Pillars of Creation, which were Azeroth's only hope for closing the massive demonic portal at the heart of the Tomb. However, the Broken Isles came with their own perils to overcome, from Xavius, to God-King Skovald, to the nightborne, & to Tidemistress Athissa. Khadgar moved Dalaran to the shores of this land, the city serves as a central hub for the heroes. The death knights of Acherus also took their floating necropolis to the Isles. The heroes of Azeroth sought out legendary artifact weapons to wield in battle, but also found unexpected allies in the form of the Illidari. Ongoing conflict between the Alliance & the Horde led to the formation of the class orders, with exceptional commanders putting aside faction to lead their classes in the fight against the Legion.";
	["BFA_TIER_DESC"] = "Battle for Azeroth is the seventh expansion. Azeroth paid a terrible price to end the apocalyptic march of the Legion's crusade—but even as the world's wounds are tended, it is the shattered trust between the Alliance and Horde that may prove the hardest to mend. In Battle for Azeroth, the fall of the Burning Legion sets off a series of disastrous incidents that reignites the conflict at the heart of the Warcraft saga. As a new age of warfare begins, Azeroth's heroes must set out on a journey to recruit new allies, race to claim the world's mightiest resources, and fight on several fronts to determine whether the Horde or Alliance will lead Azeroth into its uncertain future.";
	["SL_TIER_DESC"] = "Shadowlands is the eighth expansion. What lies beyond the world you know? The Shadowlands, resting place for every mortal soul—virtuous or vile—that has ever lived.";

	["TRADESKILL_CATEGORY_ICONS"] = {
		-- Engineering
		[1] = "Interface\\Icons\\INV_Ammo_Bullet_01",	-- Bullets
		[2] = "Interface\\Icons\\INV_Crate_06",	-- Devices
		[3] = "Interface\\Icons\\INV_Misc_Bomb_03",	-- Explosives
		[4] = "Interface\\Icons\\Spell_Fire_Flare",	-- Fireworks
		[5] = "Interface\\Icons\\INV_Helmet_47",	-- Goggles
		[6] = "Interface\\Icons\\INV_Weapon_Rifle_03",	-- Guns
		[7] = "Interface\\Icons\\INV_Gizmo_BronzeFramework_01",	-- Parts
		[8] = "Interface\\Icons\\INV_Misc_Spyglass_03",	-- Scopes
		[9] = "Interface\\Icons\\INV_Misc_Wrench_01",	-- Tools
		[10] = "Interface\\Icons\\INV_Misc_Food_12",	-- Everyday Cooking
		[11] = "Interface\\Icons\\INV_Misc_Food_62",	-- Holiday Cooking
		[12] = "Interface\\Icons\\INV_Helmet_66",	-- Unusual Delights

		-- Alchemy
		[13] = "Interface\\Icons\\INV_Cask_02",	-- Materials
		[14] = "Interface\\Icons\\INV_Potion_51",	-- Potions
		[15] = "Interface\\Icons\\INV_Potion_56",	-- Elixirs
		[16] = "Interface\\Icons\\INV_Potion_41",	-- Flasks
		[17] = "Interface\\Icons\\Spell_Fire_Volcano",	-- Transmutes
		[18] = "Interface\\Icons\\INV_Misc_Orb_01",	-- Trinkets
		[19] = "Interface\\Icons\\INV_Drink_12",	-- Oils

		-- Blacksmithing
		[20] = "Interface\\Icons\\inv_stone_grindingstone_05",	-- Materials
		[21] = "Interface\\Icons\\inv_stone_sharpeningstone_03",	-- Weapon Mods
		[22] = "Interface\\Icons\\Inv_misc_armorkit_02",	-- Armor Mods
		[23] = "Interface\\Icons\\INV_Helmet_25",	-- Helms
		[24] = "Interface\\Icons\\INV_Shoulder_22",	-- Shoulders
		[25] = "Interface\\Icons\\INV_Chest_Chain",	-- Chest
		[26] = "Interface\\Icons\\INV_Gauntlets_04",	-- Gauntlets
		[27] = "Interface\\Icons\\INV_Bracer_17",	-- Bracers
		[28] = "Interface\\Icons\\INV_Belt_27",	-- Belts
		[29] = "Interface\\Icons\\INV_Pants_04",	-- Legs
		[30] = "Interface\\Icons\\INV_Boots_01",	-- Boots
		[31] = "Interface\\Icons\\INV_Shield_06",	-- Shields
		[32] = "Interface\\Icons\\INV_Weapon_Halberd_10",	-- Weapons
		[33] = "Interface\\Icons\\INV_Misc_Key_11",	-- Skeleton Keys

		-- Enchanting
		[34] = "Interface\\Icons\\INV_Staff_01",	-- Rods
		[35] = "Interface\\Icons\\Inv_ingot_eternium",	-- Reagents
		[36] = "Interface\\Icons\\INV_Boots_01",	-- Boot Enchantments
		[37] = "Interface\\Icons\\INV_Bracer_17",	-- Bracer Enchantments
		[38] = "Interface\\Icons\\INV_Chest_Chain",	-- Chest Enchantments
		[39] = "Interface\\Icons\\INV_Misc_Cape_18",	-- Cloak Enchantments
		[40] = "Interface\\Icons\\INV_Gauntlets_04",	-- Glove Enchantments
		[41] = "Interface\\Icons\\Spell_Fire_EnchantWeapon",	-- Weapon Enchantments
		[42] = "Interface\\Icons\\INV_Shield_05",	-- Shield Enchantments
		[43] = "Interface\\Icons\\INV_Wand_06",	-- Wands
		[44] = "Interface\\Icons\\Inv_poison_mindnumbing",	-- Oils
		[45] = "Interface\\Icons\\inv_misc_gem_bloodstone_01",	-- Trinket

		-- Leatherworking
		[46] = "Interface\\Icons\\INV_Misc_LeatherScrap_03",	-- Materials
		[47] = "Interface\\Icons\\INV_Misc_ArmorKit_17",	-- Armor Kits
		[48] = "Interface\\Icons\\INV_Misc_Bag_07",	-- Bags
		[49] = "Interface\\Icons\\INV_Helmet_08",	-- Helms
		[50] = "Interface\\Icons\\INV_Shoulder_01",	-- Shoulders
		[51] = "Interface\\Icons\\INV_Chest_Chain_13",	-- Chest
		[52] = "Interface\\Icons\\INV_Bracer_08",	-- Bracers
		[53] = "Interface\\Icons\\INV_Gauntlets_05",	-- Gloves
		[54] = "Interface\\Icons\\INV_Belt_24",	-- Belts
		[55] = "Interface\\Icons\\INV_Pants_12",	-- Pants
		[56] = "Interface\\Icons\\INV_Boots_Chain_01",	-- Boots
		[57] = "Interface\\Icons\\INV_Misc_Cape_03",	-- Cloaks

		-- Tailoring
		[58] = "Interface\\Icons\\inv_fabric_silk_03",	-- Materials
		[59] = "Interface\\Icons\\inv_misc_bag_19",	-- Bags
		[60] = "Interface\\Icons\\inv_helmet_31",	-- Hats & Hoods
		[61] = "Interface\\Icons\\inv_shoulder_02",	-- Shoulders
		[62] = "Interface\\Icons\\inv_chest_cloth_18",	-- Robes & Tunics
		[63] = "Interface\\Icons\\inv_bracer_07",	-- Bracers
		[64] = "Interface\\Icons\\inv_belt_14",	-- Belts
		[65] = "Interface\\Icons\\inv_gauntlets_06",	-- Gloves
		[66] = "Interface\\Icons\\inv_pants_06",	-- Pants
		[67] = "Interface\\Icons\\inv_boots_05",	-- Boots
		[68] = "Interface\\Icons\\inv_misc_cape_16",	-- Cloaks
		[69] = "Interface\\Icons\\inv_shirt_red_01",	-- Shirts

		-- Poisons
		[70] = "Interface\\Icons\\ability_creature_poison_06", -- Consumable

		-- Weapon Skills
		[71] = "Interface\\Icons\\INV_Weapon_Halberd_10", -- Weapon Skills
		
		-- Inscription
		[72] = "Interface\\Icons\\Inv_misc_ticket_tarot_portal_01",	-- Tarot Cards
		[73] = "Interface\\Icons\\inv_misc_ticket_tarot_stack_01",	-- Tarot Decks
	},
	["TRADESKILL_CATEGORY_NAMES"] = {
		-- Engineering
		[1] = "Bullets",	-- Bullets
		[2] = "Devices",	-- Devices
		[3] = "Explosives",	-- Explosives
		[4] = "Fireworks",	-- Fireworks
		[5] = "Goggles",	-- Goggles
		[6] = "Guns",	-- Guns
		[7] = "Parts",	-- Parts
		[8] = "Scopes",	-- Scopes
		[9] = "Tools",	-- Tools

		-- Cooking
		[10] = "Everyday Cooking",	-- Everyday Cooking
		[11] = "Holiday Cooking",	-- Holiday Cooking
		[12] = "Unusual Delights",	-- Unusual Delights

		-- Alchemy
		[13] = "Materials",	-- Materials
		[14] = "Potions",	-- Potions
		[15] = "Elixirs",	-- Elixirs
		[16] = "Flasks",	-- Flasks
		[17] = "Transmutes",	-- Transmutes
		[18] = "Trinkets",	-- Trinkets
		[19] = "Oils",	-- Oils

		-- Blacksmithing
		[20] = "Materials",	-- Materials
		[21] = "Weapon Mods",	-- Weapon Mods
		[22] = "Armor Mods",	-- Armor Mods
		[23] = "Helms",	-- Helms
		[24] = "Shoulders",	-- Shoulders
		[25] = "Chest",	-- Chest
		[26] = "Gauntlets",	-- Gauntlets
		[27] = "Bracers",	-- Bracers
		[28] = "Belts",	-- Belts
		[29] = "Legs",	-- Legs
		[30] = "Boots",	-- Boots
		[31] = "Shields",	-- Shields
		[32] = "Weapons",	-- Weapons
		[33] = "Skeleton Keys",	-- Skeleton Keys

		-- Enchanting
		[34] = "Rods",	-- Rods
		[35] = "Reagents",	-- Reagents
		[36] = "Boot Enchantments",	-- Boot Enchantments
		[37] = "Bracer Enchantments",	-- Bracer Enchantments
		[38] = "Chest Enchantments",	-- Chest Enchantments
		[39] = "Cloak Enchantments",	-- Cloak Enchantments
		[40] = "Glove Enchantments",	-- Glove Enchantments
		[41] = "Weapon Enchantments",	-- Weapon Enchantments
		[42] = "Shield Enchantments",	-- Shield Enchantments
		[43] = "Wands",	-- Wands
		[44] = "Oils",	-- Oils
		[45] = "Trinket",	-- Trinket

		-- Leatherworking
		[46] = "Materials",	-- Materials
		[47] = "Armor Kits",	-- Armor Kits
		[48] = "Bags",	-- Bags
		[49] = "Helms",	-- Helms
		[50] = "Shoulders",	-- Shoulders
		[51] = "Chest",	-- Chest
		[52] = "Bracers",	-- Bracers
		[53] = "Gloves",	-- Gloves
		[54] = "Belts",	-- Belts
		[55] = "Pants",	-- Pants
		[56] = "Boots",	-- Boots
		[57] = "Cloaks",	-- Cloaks

		-- Tailoring
		[58] = "Materials",	-- Materials
		[59] = "Bags",	-- Bags
		[60] = "Hats & Hoods",	-- Hats & Hoods
		[61] = "Shoulders",	-- Shoulders
		[62] = "Robes & Tunics",	-- Robes & Tunics
		[63] = "Bracers",	-- Bracers
		[64] = "Belts",	-- Belts
		[65] = "Gloves",	-- Gloves
		[66] = "Pants",	-- Pants
		[67] = "Boots",	-- Boots
		[68] = "Cloaks",	-- Cloaks
		[69] = "Shirts",	-- Shirts

		-- Poisons
		[70] = "Consumable",	-- Consumable

		-- Weapon Skills
		[71] = "Weapon Skills", -- Weapon Skills
		
		-- Inscription
		[72] = "Tarot Cards",	-- Tarot Cards
		[73] = "Tarot Decks",	-- Tarot Decks
	},

	-- Saved Instance Name => Dungeon Journal Instance Name Converter
	-- If your saves aren't lining up, it's probably because Blizzard
	-- didn't use the same localization for the instance. Sorry.
	["SAVED_TO_DJ_INSTANCES"] = {
		-- Classic
		["Stormwind Stockade"] = "The Stockade";
		["Ahn'Qiraj"] = "Temple of Ahn'Qiraj";
		["Ahn'Qiraj Temple"] = "Temple of Ahn'Qiraj";
		["Sunken Temple"] = "The Temple of Atal'hakkar";
	};

	-- This is necessary to have because Blizzard does not always have the correct map ID at the time of zone change.
	["ZONE_TEXT_TO_MAP_ID"] = {
		-- Classic
		["Blackfathom Deeps"] = 221,
		["Blackrock Depths"] = 242,
		["Blackwing Lair"] = 287,
		["Blackrock Mountain"] = 33,
		["Blackrock Spire"] = 250,
		[DUNGEON_FLOOR_TANARIS18] = 75,	-- Caverns of Time
		["Dire Maul"] = 234,
		["Deeprun Tram"] = 499,
		["Gnomeregan"] = 226,
		["Maraudon"] = 280,
		["Molten Core"] = 232,
		["Naxxramas"] = 162,
		["Onyxia's Lair"] = 248,
		["Ragefire Chasm"] = 213,
		["Razorfen Downs"] = 300,
		["Razorfen Kraul"] = 301,
		["Ruins of Ahn'Qiraj"] = 247,
		["Scarlet Monastery"] = 435,
		["Scholomance"] = 476,
		["Shadowfang Keep"] = 310,
		["Stratholme"] = 317,
		["Sunstrider Isle"] = 467,
		["Temple of Ahn'Qiraj"] = 320,
		["The Deadmines"] = 291,
		["The Temple of Atal'hakkar"] = 220,
		["The Temple of Atal'Hakkar"] = 220,
		["The Stockade"] = 225,
		["Uldaman"] = 230,
		["Wailing Caverns"] = 279,
		["Zul'Farrak"] = 219,
		["Zul'Gurub"] = 337,

		-- TBC
		["Auchenai Crypts"] = 256,
		["Karazhan"] = 350,
		["Gruul's Lair"] = 330,
		["Hellfire Ramparts"] = 347,
		["Hyjal Summit"] = 329,
		["Magister's Terrace"] = 348,
		["Magtheridon's Lair"] = 331,
		["Mana Tombs"] = 272,
		["Old Hillsbrad Foothills"] = 274,
		["Serpentshrine Cavern"] = 332,
		["Sethekk Halls"] = 258,
		["Shadow Labyrinth"] = 260,
		["Tempest Keep"] = 334,
		["The Arcatraz"] = 269,
		["The Black Morass"] = 273,
		["The Black Temple"] = 340,
		["The Blood Furnace"] = 261,
		["The Botanica"] = 266,
		["The Mechanar"] = 267,
		["The Shattered Halls"] = 246,
		["The Slave Pens"] = 265,
		["The Steamvault"] = 263,
		["The Underbog"] = 262,
		["Sunwell Plataeu"] = 335,
		["Zul'Aman"] = 333,
	};
	
	-- These are alternative map names that we don't want to display, but used for mapID calculations.
	-- If there is a name provided in the table above, it will prefer that name association.
	["ALT_ZONE_TEXT_TO_MAP_ID"] = {
		-- Classic
		["Ahn'Qiraj"] = 320,
		["Deadmines"] = 291,
		["Gates of Ahn'Qiraj"] = 1451,
		["The Battle for Mount Hyjal"] = 329,
		["The Eye"] = 334,
	};
	
	-- This is necessary because sometimes the names of spells do not match for different languages.
	["ALT_PROFESSION_TEXT_TO_ID"] = {};
	
	-- Unobtainable Listing
	["UNOBTAINABLE_ITEM_TEXTURES"] = {
		"Interface\\FriendsFrame\\StatusIcon-DnD", 		-- No Hope
		"Interface\\FriendsFrame\\StatusIcon-Away", 	-- Little Hope
		"Interface\\FriendsFrame\\StatusIcon-Online",	-- There is Hope
	};
	["UNOBTAINABLE_ITEM_REASONS"] = {
		[1] = {1, "|CFFFF0000This was never available to players.|r", "Never Implemented"},
		[2] = {1, "|CFFFF0000This has been removed from the game.|r", "Removed From Game"},
		[3] = {1, "|CFFFF0000This is not available until a later Phase of Release in WoW Classic.|r", "Future Releases"}, -- No Hope -- 3

		-- Future Content Releases
		[11] = {2, "|CFFAAFFAAThis was not available until Phase 1 of WoW Classic.|r", "Phase 1", 1130100, 11301 },
		[1101] = {2, "|CFFAAFFAAThis became available with the Dire Maul Phase Release of WoW Classic.|r", "Dire Maul", 11301, 11301 },
		[12] = {2, "|CFFAAFFAAThis was not available until Phase 2 of WoW Classic.|r", "Phase 2", 11301, 11302 },
		[13] = {2, "|CFFAAFFAAThis was not available until Phase 3 of WoW Classic.|r", "Phase 3", 11301, 11303 },
		[14] = {2, "|CFFAAFFAAThis was not available until Phase 4 of WoW Classic.|r", "Phase 4", 11301, 11304 },
		[15] = {2, "|CFFAAFFAAThis was not available until Phase 5 of WoW Classic.|r", "Phase 5", 11301, 11305 },
		[1501] = {2, "|CFFAAFFAAThis was only available during the Ahn'Qiraj War Effort.|r", "AQ War Effort", 11301, nil, "\n \n|CFFFFAAAAIf the War Effort has been completed on your server, simply turn this off.|r" },
		[1502] = {2, "|CFFAAFFAAThis was only available up until the Scarab Lords on your server have rung the gong.|r", "Gates Unopened", 11301, nil, "\n \n|CFFFFAAAAIf the Gates of Anh'Qiraj have been opened on your server, simply turn this off.|r" },
		[1503] = {2, "|CFFAAFFAAThis was only available during the 10 Hour War after the Scarab Lord(s) bang the gong.|r", "10-Hour War", 11301, nil, "\n \n|CFFFFAAAAIf the Gates of Anh'Qiraj have been opened on your server, simply turn this off.|r" },
		[1504] = {2, "|CFFAAFFAAThis became available near the end of Phase 5 in order to provide Catch-Up Nature Resist gear for those still working on AQ40.|r", "Catch-Up", 11301, 11306, "\n \n|CFFFFAAAAIf the Catch-Up Gear is available, simply turn this on.|r" },
		[16] = {2, "|CFFAAFFAAThis was not available until Phase 6 of WoW Classic.|r", "Phase 6", 11301, 11306 },
		[1601] = {2, "|CFFAAFFAAThis was only available during the Scourge Invasion.|r", "Scourge Invasion", 11301, nil, "\n \n|CFFFFAAAAIf the Scourge Invasion has been completed on your server, simply turn this off.|r" },
		[1602] = {2, "|CFFAAFFAAThis was only available during the Silithyst Must Flow World PVP Event.|r", "Silithyst", 11301, 11306, "\n \n|CFFFFAAAAIf the World PVP Event is available, simply turn this on.|r" },
		[1603] = {2, "|CFFAAFFAAThis was only available after the start of Classic Era.|r", "Classic Era", 11301, 11307, "\n \n|CFFFFAAAAIf the Classic Era has begun, simply turn this on.|r" },

		[17] = {2, "|CFFAAFFAAThis was not available until Phase 1 of TBC Classic.|r", "Phase 1", 20501, 20501 },
		[1701] = {2, "|CFFAAFFAAThis was only available during the Opening of the Dark Portal event before the launch of TBC.|r", "Dark Portal Opens", 20501, nil, "\n \n|CFFFFAAAAIf the Dark Portal has been opened on your server, simply turn this off.|r" },
		[18] = {2, "|CFFAAFFAAThis was not available until Phase 2 of TBC Classic.|r", "Phase 2", 20501, 20502 },
		[19] = {2, "|CFFAAFFAAThis was not available until Phase 3 of TBC Classic.|r", "Phase 3", 20501, 20503 },
		[20] = {2, "|CFFAAFFAAThis was not available until Phase 4 of TBC Classic.|r", "Phase 4", 20501, 20504 },
		[21] = {2, "|CFFAAFFAAThis was not available until Phase 5 of TBC Classic.|r", "Phase 5", 20501, 20505 },

		-- Seasonal Filters
		[1000] = {3, "|CFFAAAAFFThis requires the Brewfest Holiday to be Active.|r", "Brewfest" },
		[1001] = {3, "|CFFAAAAFFThis requires the Children's Week Holiday to be Active.|r", "Children's Week" },
		[1002] = {3, "|CFFAAAAFFThis requires the Day of the Dead Holiday to be Active.|r", "Day of the Dead" },
		[1003] = {3, "|CFFAAAAFFThis requires the Feast of Winter Veil Holiday to be Active.|r", "Feast of Winter Veil" },
		[1004] = {3, "|CFFAAAAFFThis requires the Hallow's End Holiday to be Active.|r", "Hallow's End" },
		[1005] = {3, "|CFFAAAAFFThis requires the Harvest Festival Holiday to be Active.|r", "Harvest Festival" },
		[1006] = {3, "|CFFAAAAFFThis requires the Love is in the Air Holiday to be Active.|r", "Love is in the Air" },
		[1007] = {3, "|CFFAAAAFFThis requires the Lunar Festival Holiday to be Active.|r", "Lunar Festival" },
		[1008] = {3, "|CFFAAAAFFThis requires the Midsummer Fire Festival Holiday to be Active.|r", "Midsummer Fire Festival" },
		[1009] = {3, "|CFFAAAAFFThis requires the New Years Celebration Holiday to be Active.|r", "New Years Celebration" },
		[1010] = {3, "|CFFAAAAFFThis requires the Noblegarden Holiday to be Active.|r", "Noblegarden" },
		[1011] = {3, "|CFFAAAAFFThis requires the Pirate's Day Holiday to be Active.|r", "Pirate's Day" },
		[1012] = {3, "|CFFAAAAFFThis requires the Darkmoon Faire Holiday to be Active.|r", "Darkmoon Faire" },
	};
};