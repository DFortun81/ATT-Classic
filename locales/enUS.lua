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
	["TITLE_ID"] = "Title ID";

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
		[C_Map.GetAreaInfo(3431)] = 467,	-- Sunstrider Isle
		[C_Map.GetAreaInfo(3526)] = 468,	-- Ammen Vale
		["Temple of Ahn'Qiraj"] = 320,
		["The Deadmines"] = 291,
		["The Temple of Atal'hakkar"] = 220,
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
		["Ahn'Qiraj"] = 320,
		["Deadmines"] = 291,
		["Gates of Ahn'Qiraj"] = 1451,
		["The Temple of Atal'Hakkar"] = 220,
		["The Battle for Mount Hyjal"] = 329,
		["The Eye"] = 334,
		[C_Map.GetAreaInfo(3527)] = 468,	-- Ammen Vale (Crash Site)
		[C_Map.GetAreaInfo(3560)] = 468,	-- Ammen Vale (Ammen Fields)
		[C_Map.GetAreaInfo(3528)] = 468,	-- Ammen Vale (Silverline Lake)
		[C_Map.GetAreaInfo(3559)] = 468,	-- Ammen Vale (Nestlewood Hills)
		[C_Map.GetAreaInfo(3529)] = 468,	-- Ammen Vale (Nestlewood Thicket)
		[C_Map.GetAreaInfo(3561)] = 468,	-- Ammen Vale (The Sacred Grove)
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