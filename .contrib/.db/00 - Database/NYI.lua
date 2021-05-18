---------------------------------------------------------------------------
--         N E V E R       I M P L E M E N T E D       M O D U L E       --
---------------------------------------------------------------------------
-- Everything in this file hasn't been implemented yet.
local oldI, oldQ, oldFP = i, q, fp;
i = function(...) return un(NEVER_IMPLEMENTED, oldI(...)); end
q = function(...) return un(NEVER_IMPLEMENTED, oldQ(...)); end
fp = function(...) return un(NEVER_IMPLEMENTED, oldFP(...)); end
_.NeverImplemented =
{
	n(FLIGHT_PATHS, {
		fp(84),	-- Plaguewood Tower, Eastern Plaguelands
		fp(85),	-- Northpass Tower, Eastern Plaguelands
		fp(86),	-- Eastwall Tower, Eastern Plaguelands
		fp(87),	-- Crown Guard Tower, Eastern Plaguelands
		-- #if AFTER TBC
		fp(95),	-- Zangarmarsh - Quest - As the Crow Flies
		fp(97),	-- Quest - Elekk Path to Kessel
		fp(103),	-- Nagrand - PvP - Attack Run Start 1
		fp(104),	-- Nagrand - PvP - Attack Run End 1
		fp(105),	-- Nagrand - PvP - Attack Run Start 2
		fp(106),	-- Nagrand - PvP - Attack Run End 2
		fp(107),	-- Nagrand - PvP - Attack Run Start 3
		fp(108),	-- Nagrand - PvP - Attack Run End 3
		fp(109),	-- Nagrand - PvP - Attack Run Start 4
		fp(110),	-- Nagrand - PvP - Attack Run End 4
		fp(111),	-- Eversong - Duskwither Teleport
		fp(112),	-- Eversong - Duskwither Teleport End
		fp(113),	-- Quest - Nethrandamus Start
		fp(131),	-- Quest - Horde Hellfire Start
		fp(132),	-- Quest - Horde Hellfire End
		fp(133),	-- Quest - Hellfire Peninsula (Alliance Path) Start
		fp(134),	-- Quest - Hellfire Peninsula (Alliance) End
		fp(135),	-- Quest - Hellfire, Aerial Mission (Horde) Start
		fp(136),	-- Quest - Hellfire, Aerial Mission (Horde) End
		fp(137),	-- Quest - Hellfire, Aerial Mission (Alliance) Start
		fp(138),	-- Quest - Hellfire, Aerial Mission (Alliance) End
		fp(142),	-- Hellfire Peninsula - Reaver's Fall (not actually a flight path)
		fp(143),	-- Quest - Caverns of Time (Intro Flight Path) (End)
		fp(144),	-- Quest - Caverns of Time (Intro Flight Path) (Start)
		fp(145),	-- Quest - Netherstorm - Stealth Flight - Begin
		fp(147),	-- Hellfire Peninsula - Force Camp Beach Head
		fp(148),	-- Shatter Point, Hellfire Peninsula (Beach Assault)
		fp(152),	-- Quest - Netherstorm - Manaforge Ultris (Start)
		fp(153),	-- Quest - Netherstorm - Manaforge Ultris (End)
		fp(154),	-- Quest - Netherstorm - Manaforge Ultris (Second Pass) Start
		fp(157),	-- Quest - Blade's Edge - Vision Guide - Start
		fp(169),	-- Quest - Netherwing Ledge - Mine Cart Ride - South - Start
		fp(171),	-- Skettis [as far as I know, there's no Flight Path up there?]
		fp(209),	-- Quest - Sunwell Daily - Dead Scar Bombing - Start
		fp(211),	-- Quest - Sunwell Daily - Ship Bombing - Start
		fp(212),	-- Quest - Sunwell Daily - Ship Bombing - End
		-- #endif
	}),
	q(63769),	-- Holiday Reset Yearly Quest
	
	i(7093),	-- Pattern: Boots of Darkness
	i(21369),	-- Pattern: Felcloth Bag (item is not in game; you learn the pattern from Jandice Barov's Journal)
	i(6273),	-- Pattern: Green Woolen Robe
	i(8388),	-- Pattern: Nightscape Cloak
	i(15780),	-- Pattern: Onyxia Scale Breastplate
	i(10324),	-- Pattern: Stormcloth Boots
	i(10304),	-- Pattern: Stormcloth Gloves
	i(10319),	-- Pattern: Stormcloth Headband
	i(10303),	-- Pattern: Stormcloth Pants
	i(10322),	-- Pattern: Stormcloth Shoulders
	i(10313),	-- Pattern: Stormcloth Vest
	i(12817),	-- Plans: Bleakwood Hew
	i(12831),	-- Plans: Blood Talon
	i(12832),	-- Plans: Darkspear
	i(12818),	-- Plans: Inlaid Thorium Hammer
	i(6734),	-- Plans: Ironforge Chain
	i(6736),	-- Plans: Ironforge Gauntlets
	i(7977),	-- Plans: Mithril Scale Gloves
	i(7994),	-- Plans: Orcish War Leggings (learned from quest 2756 (horde) but recipe item is not in game)
	i(7986),	-- Plans: Ornate Mithril Breastplate
	i(7987),	-- Plans: Ornate Mithril Helm
	i(7988),	-- Plans: Ornate Mithril Boots (learned from quest 2772 but recipe item is not in game)
	i(5577),	-- Plans: Rough Bronze Bracers
	i(12826),	-- Plans: Rune Edge
	i(12816),	-- Plans: Thorium Greatsword
	i(13517),	-- Recipe: Alchemists' Stone
	i(5641),	-- Recipe: Cowardly Flight Potion
	i(2556),	-- Recipe: Elixir of Tongues
	i(13500),	-- Recipe: Greater Holy Protection Potion
	i(6891),	-- Recipe: Herb Baked Egg (this is taught by trainer when you learn cooking; recipe item was never in game)
	q(7069),	-- "<UNUSED>" quest
	q(55296),	-- This quest was reported as missing on Discord, but has no information related to it similar to 6842 and 7069.
	q(3366),	-- The Glowing Shard [Quests #6981 and #3366 look identical, but WoWHead doesn't have much info on 3366]
	
	-- #if CLASSIC
	i(22729),	-- Schematic: Steam Tonk Controller [This doesn't get added until TBC]
	-- #endif
	
	un(NEVER_IMPLEMENTED, {	-- Greater Holy Protection Potion
		["recipeID"] = 17579,
	}),
	un(NEVER_IMPLEMENTED, i(15141)),	-- Onyxia Scale Breastplate (never made it out of Beta)
	un(NEVER_IMPLEMENTED, {
		["name"] = "Onyxia Scale Breastplate",
		["recipeID"] = 19106,
	}),
	un(NEVER_IMPLEMENTED, {
		["name"] = "Nightscape Cloak",
		["recipeID"] = 10550,
	}),
	un(NEVER_IMPLEMENTED, {
		["name"] = "Stormcloth Headband",
		["recipeID"] = 12083,
	}),
	un(NEVER_IMPLEMENTED, {
		["name"] = "Stormcloth Shoulders",
		["recipeID"] = 12087,
	}),
	un(NEVER_IMPLEMENTED, {
		["name"] = "Green Woolen Robe",
		["recipeID"] = 7636,
	}),
	un(NEVER_IMPLEMENTED, {
		["name"] = "Stormcloth Vest",
		["recipeID"] = 12068,
	}),
	un(NEVER_IMPLEMENTED, {
		["name"] = "Stormcloth Gloves",
		["recipeID"] = 12063,
	}),
	un(NEVER_IMPLEMENTED, {
		["name"] = "Stormcloth Pants",
		["recipeID"] = 12062,
	}),
	un(NEVER_IMPLEMENTED, i(7027)),		-- Boots of Darkness
	un(NEVER_IMPLEMENTED, {
		["name"] = "Boots of Darkness",
		["recipeID"] = 8778,
	}),
	
	un(NEVER_IMPLEMENTED, i(24315)),	-- Pattern: Heavy Netherweave Net
	
	-- Argent Dawn Quests
	q(5530, {	-- <NYI> <TXT> Necklace of the Dawn
		i(13811),	-- Necklace of the Dawn
	}),
	q(5532, {	-- <NYI> <TXT> Ring of the Dawn
		i(13812),	-- Ring of the Dawn
	}),
	q(9031),	-- <TXT>Anthion's Parting Words
	q(5303),	-- <UNUSED>
	q(5304),	-- <UNUSED>
	
	-- Dustwallow Marsh Quests that were never added.
	q(1293),	-- <nyi> <TXT> Centaur Hoofprints
	q(1295),	-- <nyi> <TXT> Course of Action
	q(1296),	-- <nyi> <TXT> Course of Action
	q(1297),	-- <nyi> <TXT> Course of Action
	q(1294),	-- <nyi> <TXT>Centaur Sympathies
	q(1280),	-- <nyi> <TXT>The Centaur Hoofprints
	q(1390),	-- <nyi> Oops, We Killed Them Again.
	q(1292),	-- <nyi><TXT> Centaur Hoofprints
	q(1288),	-- <nyi> Vimes's Report (followup, never implemented)
	q(1272),	-- Finding Reethe <CHANGE INTO GOSSIP>
	q(1283),	-- Fire at the Shady Rest <CHANGE TO GOSSIP>
	q(1281),	-- Jim's Song <CHANGE TO GOSSIP>
	q(1263),	-- The Burning Inn <CHANGE TO GOSSIP>
	q(1),	-- The "Chow" Quest (123)aa
	q(9065),	-- The "Chow" Quest (123)aa
	q(1288, {	-- Vimes's Report
		["cost"] = {
			{ "i", 6075, 1 },	-- Vimes's Report
		},
	}),

	-- Desolace Quests
	q(8458),	-- <UNUSED>
	
	-- Felwood Quests that were never added.
	q(5208),	-- <NYI> <TXT> The Blessing of Evil
	q(5207),	-- <NYI> <TXT> The True Summoner
	q(5209),	-- <UNUSED>
	q(7741, {	-- Praise from the Emerald Circle <NYI> <TXT>
		i(19065),	-- Emerald Circle
	}),
	
	-- Mulgore
	q(774),	-- <UNUSED>
	
	-- Recipe Learning Quests
	q(912),	-- Stonesplinter Trogg Disguise
	q(9411),	-- <UNUSED>Infused Bandages
	q(9414),	-- <UNUSED>Infused Bandages
	q(9412),	-- <UNUSED>Crystal Flake Throat Lozenge
	q(9413),	-- <UNUSED>Crystal Flake Throat Lozenge
	
	-- Scourge Invasion (Unused Quests)
	q(9296),	-- reuse
	q(9297),	-- reuse
	q(9298),	-- reuse
	
	-- Silithus Quests (Unused Quests)
	q(1155),	-- <NYI> <TXT> bug crystal side quest
	q(1161),	-- <NYI> <TXT> gossip shade of ambermoon
	q(8444),	-- <NYI> <TXT> gossip shade of ambermoon
	q(8445),	-- <NYI> <TXT> gossip shade of ambermoon
	q(1156),	-- <NYI> <TXT> speak to alchemist pestlezugg
	q(1162),	-- <NYI> <TXT> speak to hamuul runetotem
	q(1163),	-- <NYI> <TXT> speak to tyrande whisperwind
	q(6842),	-- <UNUSED>
	i(20946),	-- Tactical Task Briefing III [unused]
	i(21246),	-- Combat Task Briefing I [unused]
	i(21247),	-- Combat Task Briefing II [unused]
	q(8339),	-- Royalty of the Council <NYI> <TXT> UNUSED
	q(8340),	-- Twilight Signet Ring <NYI> <TXT>
	
	-- Undercity Quests (Unused)
	q(6003),	-- <nyi> <txt> Green With Envy
	q(6841),	-- <UNUSED>
	
	-- Winterspring Quests (Unused)
	q(6606),	-- A Little Luck
	
	-- Retired PVP Battleground Quests
	-- Warsong Gulch
	i(19213),	-- Silverwing Talisman of Merit
	q(8567),	-- Past Victories in Warsong Gulch
	q(8292),	-- Talismans of Merit [lvl 60]
	q(7886),	-- Talismans of Merit [lvl 50]
	q(7888),	-- Talismans of Merit [lvl 40]
	q(7887),	-- Talismans of Merit [lvl 30]
	q(7921),	-- Talismans of Merit [lvl 20]
	q(8289),	-- Talismans of Merit [lvl 10]
	q(8001),	-- Warsong Outriders <NYI> <TXT>
	i(19322),	-- Warsong Mark of Honor
	q(8293),	-- Mark of Honor [lvl 60]
	q(7922),	-- Mark of Honor [lvl 50]
	q(7923),	-- Mark of Honor [lvl 40]
	q(7924),	-- Mark of Honor [lvl 30]
	q(7925),	-- Mark of Honor [lvl 20]
	q(8296),	-- Mark of Honor [lvl 10]
	q(8568),	-- Past Victories in Warsong Gulch
	q(8002),	-- Silverwing Sentinels <NYI> <TXT>
	i(20256),	-- Warsong Gulch Ribbon of Sacrifice
	q(8569),	-- Past Efforts in Warsong Gulch
	q(8570),	-- Past Efforts in Warsong Gulch
	q(8266),	-- Ribbons of Sacrifice
	q(8267),	-- Ribbons of Sacrifice
	q(8268),	-- Ribbons of Sacrifice
	q(8269),	-- Ribbons of Sacrifice
	
	-- Alterac Valley
	q(7362),	-- Ally of the Tauren
	q(6846),	-- Begin the Attack!
	q(7421),	-- Darkspear Defense
	q(7368),	-- Defusing the Threat
	q(7367),	-- Defusing the Threat
	q(7361),	-- Favor Amongst the Darkspear
	q(7364),	-- Gnomeregan Bounty
	q(7202),	-- Korrak the Bloodrager
	q(7382),	-- Korrak the Everliving
	q(6901),	-- Launch the Attack!
	q(7423),	-- I've Got A Fever For More Bone Chips
	q(6847),	-- Master Ryson's All Seeing Eye
	q(6848),	-- Master Ryson's All Seeing Eye
	q(7426),	-- One Man's Love
	q(7425),	-- Staghelm's Mojo Jamboree
	q(7365),	-- Staghelm's Requiem
	q(7366),	-- The Archbishop's Mercy
	q(7363),	-- The Human Condition
	q(7422),	-- Tuft it Out
	q(7427),	-- Wanted: MORE DWARVES!
	q(7428),	-- Wanted: MORE ORCS!
	q(7424),	-- What the Hoof?
	i(18150),	-- Rune of Recall
	i(18149),	-- Rune of Recall
	q(7221),	-- Speak with Prospector Stonehewer
	q(7222),	-- Speak with Voggah Deathgrip
	q(7181),	-- The Legend of Korrak
	q(7381),	-- The Return of Korrak
	i(17384),	-- Zinfizzlex's Portable Shredder Unit
	i(17410),	-- Zinfizzlex's Portable Shredder Unit
	q(6861),	-- Zinfizzlex's Portable Shredder Unit
	q(6862),	-- Zinfizzlex's Portable Shredder Unit
	
	-- Arathi Basin
	i(19725),	-- Arathi Resource Crate
	q(8158),	-- More Resource Crates [lvl 20] (A)
	q(8165),	-- More Resource Crates [lvl 20] (H)
	q(8159),	-- More Resource Crates [lvl 30] (A)
	q(8164),	-- More Resource Crates [lvl 30] (H)
	q(8157),	-- More Resource Crates [lvl 40] (A)
	q(8163),	-- More Resource Crates [lvl 40] (H)
	q(8081),	-- More Resource Crates [lvl 50] (A)
	q(8124),	-- More Resource Crates [lvl 50] (H)
	q(8298),	-- More Resource Crates [lvl 60] (A)
	q(8300),	-- More Resource Crates [lvl 60] (H)
	q(8565),	-- Past Victories in Arathi
	q(8566),	-- Past Victories in Arathi
	
	-- Mount Upgrade Quests
	q(7674),	-- Black Ram Exchange
	q(7673),	-- Frost Ram Exchange
	q(7671),	-- Frostsaber Replacement
	q(7675),	-- Icy Blue Mechanostrider Replacement
	q(7664),	-- Ivory Raptor Replacement
	q(7678),	-- Palomino Exchange
	q(7663),	-- New Kodo - Green
	q(7662),	-- New Kodo - Teal
	q(7672),	-- Nightsaber Replacement
	q(7665),	-- Red Raptor Replacement
	q(7676),	-- White Mechanostrider Replacement
	q(7677),	-- White Stallion Exchange
	q(7660),	-- Wolf Swapping - Arctic Wolf
	q(7661),	-- Wolf Swapping - Red Wolf
	
	-- Rogue Quests
	q(2019),	-- Tools of the Trade (Obsolete)
	
	-- Bind Type 0
	-- Invalid (Filter Type 0)
	i(8502),	-- Bronze Lotterybox
	i(17968),	-- Charged Scale of Onyxia
	i(8503),	-- Heavy Bronze Lotterybox
	i(8505),	-- Heavy Iron Lotterybox
	i(8507),	-- Heavy Mithril Lotterybox
	i(20367),	-- Hunting Gear
	i(8504),	-- Iron Lotterybox
	i(8506),	-- Mithril Lotterybox
	i(20834),	-- Ornate Spyglass XT
	i(17967),	-- Refined Scale of Onyxia
	i(3895),	-- TEST Legendary
	i(22316),	-- Test Relic
	
	-- Shirts
	i(6130),	-- Trapper's Shirt (deprecated)
	
	
	-- Mounts
	i(13328),	-- Black Ram
	i(20221),	-- Foror's Fabled Steed
	i(13325),	-- Fluorescent Green Mechanostrider
	i(13329),	-- Frost Ram
	i(15292),	-- Green Kodo
	i(12351),	-- Horn of the Arctic Wolf
	i(12330),	-- Horn of the Red Wolf
	i(13327),	-- Icy Blue Mechanostrider Mod A
	i(12354),	-- Palomino Bridle
	i(13323),	-- Purple Mechanostrider
	i(13324),	-- Red & Blue Mechanostrider
	i(12302),	-- Reins of the Frostsaber
	i(12327),	-- Reins of the Golden Sabercat
	i(12303),	-- Reins of the Nightsaber
	i(12325),	-- Reins of the Primal Leopard
	i(18768),	-- Reins of the Swift Dawnsaber
	i(12326),	-- Reins of the Tawny Sabercat
	i(21736),	-- Riding Gryphon Reins
	i(23193),	-- Skeletal Steed Reins
	i(15293),	-- Teal Kodo
	i(13317),	-- Whistle of the Ivory Raptor
	i(8586),	-- Whistle of the Mottled Red Raptor
	i(13326),	-- White Mechanostrider Mod A
	i(12353),	-- White Stallion Bridle
	
	-- Pets
	i(18963),	-- Turtle Egg (Albino)
	i(18965),	-- Turtle Egg (Hawksbill)
	i(18966),	-- Turtle Egg (Leatherback)
	i(18964),	-- Turtle Egg (Loggerhead)
	i(18967),	-- Turtle Egg (Olive)
	
	-- Cloak
	i(16116),	-- Test Nature Res Cloak Cloth
	
	-- Cloth
	i(20353),	-- 63 Green Frost Boots
	i(20326),	-- 90 Epic Frost Boots
	i(20340),	-- 90 Green Frost Boots
	i(21339),	-- Doomcaller's Handwraps PH
	i(18747),	-- Item Properties Test
	i(12904),	-- Shawn's Super Special Swami Hat
	i(16151),	-- Test Arcane Res Feet Cloth
	i(16154),	-- Test Arcane Res Shoulders Cloth
	i(16152),	-- Test Arcane Res Waist Cloth
	i(16153),	-- Test Arcane Res Wrist Cloth
	i(16063),	-- Test Fire Res Hands Cloth
	i(16061),	-- Test Fire Res Shoulders Cloth
	i(16062),	-- Test Fire Res Waist Cloth
	i(16135),	-- Test Frost Res Feet Cloth
	i(16138),	-- Test Frost Res Head Cloth
	i(16136),	-- Test Frost Res Waist Cloth
	i(16137),	-- Test Frost Res Wrist Cloth
	i(16117),	-- Test Nature Res Hands Cloth
	i(16121),	-- Test Nature Res Head Cloth
	i(16118),	-- Test Nature Res Legs Cloth
	i(16122),	-- Test Nature Res Shoulders Cloth
	i(16120),	-- Test Nature Res Waist Cloth
	i(16119),	-- Test Nature Res Wrist Cloth
	i(16146),	-- Test Shadow Res Head Cloth
	i(16147),	-- Test Shadow Res Shoulders Cloth
	i(16145),	-- Test Shadow Res Waist Cloth
	
	-- Leather
	i(5968),	-- Rugged Boots
	i(14550),	-- Bladebane Armguards
	i(21594),	-- Bracers of the Fallen Son
	i(19743),	-- Cloaked Hood TEST
	i(19742),	-- Earthborn Kilt TEST
	i(16156),	-- Test Arcane Res Head Leather
	i(16155),	-- Test Arcane Res Waist Leather
	i(16065),	-- Test Fire Res Feet Leather
	i(16139),	-- Test Frost Res Head Leather
	i(16144),	-- Test Frost Res Shoulders Leather
	i(16140),	-- Test Nature Res Head Leather
	i(16126),	-- Test Nature Res Waist Leather
	i(16127),	-- Test Nature Res Wrist Leather
	i(16132),	-- Test Nature Res Wrist Mail
	i(16148),	-- Test Shadow Res Shoulders Leather
	i(16150),	-- Test Shadow Res Waist Leather
	i(7187),	-- VanCleef's Boots
	
	-- Mail
	i(2016),	-- Dusty Chain Armor
	i(2273),	-- Guerrilla Armor
	i(6730),	-- Ironforge Chain
	i(6733),	-- Ironforge Gauntlets
	i(7925),	-- Mithril Scale Gloves
	i(16664),	-- Ornate Bracers
	i(2867),	-- Rough Bronze Bracers
	i(17769),	-- Sagebrush Spaulders
	i(12616),	-- Savage Mail Boots
	i(12617),	-- Savage Mail Shoulders
	i(12615),	-- Savage Mail Tunic
	i(12258),	-- Serpent Clasp Belt
	i(16157),	-- Test Arcane Res Feet Mail
	i(16164),	-- Test Arcane Res Hands Mail
	i(16159),	-- Test Arcane Res Head Mail
	i(16165),	-- Test Arcane Res Legs Mail
	i(16163),	-- Test Arcane Res Waist Mail
	i(16158),	-- Test Arcane Res Wrist Mail
	i(16066),	-- Test Fire Res Feet Mail
	i(16064),	-- Test Fire Res Waist Mail
	i(16143),	-- Test Frost Res Shoulder Mail
	i(16142),	-- Test Frost Res Wrist Mail
	i(16129),	-- Test Nature Res Feet Mail
	i(16141),	-- Test Nature Res Head Mail
	i(16134),	-- Test Nature Res Shoulders Mail
	i(16131),	-- Test Nature Res Waist Mail
	i(16149),	-- Test Shadow Res Shoulder Mail
	
	-- Plate
	i(23034),	-- Nax PH Crit Plate Shoulders
	i(16160),	-- Test Arcane Res Shoulders Plate
	i(16162),	-- Test Frost Res Shoulders Plate
	i(16172),	-- Test Nature Res Hands Plate
	i(16161),	-- Test Shadow Res Hands Plate
	
	-- Shirt
	i(119),	-- Deprecated Rogue's Vest
	i(138),	-- Deprecated War Harness
	i(3148),	-- Deprecated Work Shirt
	
	-- Shield
	i(18342),	-- Quel'dorai Guard
	
	-- Dagger
	i(24071),	-- Bland Dagger
	i(5742),	-- Gemstone Dagger
	i(2664),	-- Spinner Fang
	i(3222),	-- Wicked Dagger
	
	-- One Handed Mace
	i(21127),	-- Ahn'Qiraj Mace PH
	i(16792),	-- Giant Club
	i(18800),	-- TEST 1H Amberseal Keeper
	
	-- Two Handed Mace
	i(12772),	-- Inlaid Thorium Hammer
	i(18881),	-- TEST Ragnaros Hammer
	i(19158),	-- TEST Sulfuras, Hand of Ragnaros
	
	-- One Handed Sword
	i(22805),	-- Naxxramas Sword 1H 1 PH
	i(18582),	-- The Twin Blades of Azzinoth

	-- Two Handed Sword
	i(913),		-- Huge Ogre Sword
	i(22814),	-- Naxxramas Sword 2H 2 PH
	i(18882),	-- TEST Level 80 Epic
	i(12764),	-- Thorium Greatsword
	
	-- Thrown
	i(21135),	-- Assassin's Throwing Axe

	-- Wand
	i(21124),	-- Ahn'Qiraj Wand PH
	
	-- Staff
	i(21125),	-- Ahn'Qiraj Staff PH
	i(19879),	-- Alex's Test Beatdown Staff
	i(21276),	-- Blessed Qiraji Naturalist Staff UNUSED
	i(20487),	-- Lok'delar, Stave of the Ancient Keepers DEP
	i(22391),	-- Monster - Staff, Lord Valthalak
	i(21101),	-- Staff of Spell Penetration - Fire (TEST)
	i(21102),	-- Staff of Spell Penetration - Frost (TEST)
	i(18801),	-- TEST 1H Benediction
	i(20372),	-- Test Staff 77 epic
	i(20370),	-- Test Staff 90 epic

	-- Polearm
	i(22817),	-- Naxxramas Polearm PH
	
	-- Bows
	i(5748),	-- Centaur Longbow
	
	-- Gun
	i(6255),	-- Fishing Pole (JEFFTEST)
	i(18763),	-- TEST GUN Alliance20 
	i(18765),	-- TEST GUN Horde50
	i(18764),	-- TEST GUN Raid

	-- Bow
	i(20488),	-- Rhok'delar, Longbow of the Ancient Keepers DEP

	-- Neck
	i(16125),	-- Test Arcane Res Neck
	i(16124),	-- Test Frost Res Neck
	i(16123),	-- Test Nature Res Neck
	i(17783),	-- Talisman of Binding Fragment
	
	-- Ring
	i(24358),	-- QATest +1000 Spell Dmg Ring
	i(18968),	-- Ring of Critical Testing
	i(18970),	-- Ring of Critical Testing 2
	i(18971),	-- Ring of Critical Testing 3
	i(18982),	-- Ring of Critical Testing 4
	i(20445),	-- Test Defense Ring +120
	i(20446),	-- Test Defense Ring +80
	i(16067),	-- Test Fire Res Ring
	i(16999),	-- Royal Seal of Alexis

	-- Quest
	i(11666),	-- PH Greater Arcane Amalgamation (AC/FR)
	i(11671),	-- PH Greater Arcane Amalgamation (AGI/FR)
	i(11664),	-- PH Greater Arcane Amalgamation (HP/FR)
	i(11673),	-- PH Greater Arcane Amalgamation (INT/FR)
	i(11663),	-- PH Greater Arcane Amalgamation (MANA/FR)
	i(11672),	-- PH Greater Arcane Amalgamation (SPI/FR)
	i(11670),	-- PH Greater Arcane Amalgamation (STA/FR)
	i(11667),	-- PH Greater Arcane Amalgamation (STR/FR)
	i(11683),	-- PH Legendary Arcane Amalgamation (Caster)
	i(11676),	-- PH Legendary Arcane Amalgamation (Melee)
	i(17409),	-- Encrusted Crystal Fragment
	i(17347),	-- Syndicate Man Tracker (MURP)
	i(18593),	-- Thorium Brotherhood Contract (OLD)
	i(18157),	-- Black Moro'gai Gem
	i(18155),	-- Blue Moro'gai Gem
	i(18158),	-- Gold Moro'gai Gem
	i(18156),	-- Green Moro'gai Gem
	i(18153),	-- Red Moro'gai Gem
	i(18159),	-- White Moro'gai Gem
	
	-- Bag
	i(21194),	-- D'Sak's Big Sack
	i(21193),	-- D'Sak's Sack
	i(21195),	-- D'Sak's Sacktastic
	i(21313),	-- D'Sak's Small bag
	i(21857),	-- Test Herb Bag
	i(22233),	-- Zigris' Footlocker
	
	-- Recipe
	i(5688),	-- Test Language Item
	
	-- Bind Type 1
	-- Invalid
	i(18595),	-- Blood Opal
	i(23794),	-- Permanent Sheen of Zanza
	i(23795),	-- Permanent Spirit of Zanza
	i(23796),	-- Permanent Swiftness of Zanza
	
	-- Held in Off Hand
	i(18316),	-- Obsidian Bauble
	i(19989),	-- Tome of Devouring Shadows
	
	-- Axes
	i(12779),	-- Rune Edge
	
	-- Cloak
	i(22230),	-- Frightmaw Hide
	i(16315),	-- Sergeant Major's Cape
	i(16336),	-- Sergeant Major's Cape
	i(16337),	-- Sergeant Major's Cape
	
	-- Cloth
	i(20706),	-- Cenarion Reservist's Pants
	i(17589),	-- General's Dreadweave Belt
	i(17587),	-- General's Dreadweave Bracers
	i(17619),	-- General's Satin Bracers
	i(17621),	-- General's Satin Cinch
	i(16538),	-- General's Silk Cuffs
	i(16537),	-- General's Silk Sash
	i(17565),	-- Knight-Captain's Dreadweave Belt
	i(17563),	-- Knight-Captain's Dreadweave Bracers
	i(17597),	-- Knight-Captain's Satin Cord
	i(17595),	-- Knight-Captain's Satin Cuffs
	i(16370),	-- Knight-Captain's Silk Cuffs
	i(16367),	-- Knight-Captain's Silk Sash
	i(17574),	-- Legionnaire's Dreadweave Belt
	i(17575),	-- Legionnaire's Dreadweave Bracers
	i(17615),	-- Legionnaire's Satin Cuffs
	i(17614),	-- Legionnaire's Satin Sash
	i(16488),	-- Legionnaire's Silk Belt
	i(4989),	-- Mage Dragon Robe
	i(17582),	-- Marshal's Dreadweave Cuffs
	i(17585),	-- Marshal's Dreadweave Sash
	i(17606),	-- Marshal's Satin Bracers
	i(17609),	-- Marshal's Satin Sash
	i(16438),	-- Marshal's Silk Bracers
	i(16439),	-- Marshal's Silk Sash
	i(6478),	-- Rat Stompers
	i(4990),	-- Scorched Bands
	i(12107),	-- Whispersilk Leggings
	i(13080),	-- Widow's Clutch
	
	-- Leather
	i(7950),	-- Armor of Thero-shan
	i(7952),	-- Boots of Thero-shan
	i(12104),	-- Brindlethorn Tunic
	i(5821),	-- Darkstalker Boots
	i(16556),	-- General's Dragonhide Belt
	i(16553),	-- General's Dragonhide Bracers
	i(16559),	-- General's Leather Armsplints
	i(16557),	-- General's Leather Girdle
	i(7948),	-- Girdle of Thero-shan
	i(7951),	-- Hands of Thero-shan
	i(16395),	-- Knight-Captain's Dragonhide Armsplints
	i(16399),	-- Knight-Captain's Dragonhide Girdle
	i(16398),	-- Knight-Captain's Leather Belt
	i(16394),	-- Knight-Captain's Leather Bracers
	i(16493),	-- Legionnaire's Dragonhide Armguards
	i(16495),	-- Legionnaire's Dragonhide Waistband
	i(16500),	-- Legionnaire's Leather Girdle
	i(7949),	-- Leggings of Thero-shan
	i(7953),	-- Mask of Thero-shan
	i(16445),	-- Marshal's Dragonhide Bracers
	i(16447),	-- Marshal's Dragonhide Waistguard
	i(16460),	-- Marshal's Leather Armsplints
	i(16458),	-- Marshal's Leather Cinch
	i(22273),	-- Moonshadow Hood
	i(19986),	-- Pirate's Eye Patch
	i(20524),	-- Shadowhide Leggings
	i(21613),	-- Wormhide Boots
	i(21614),	-- Wormhide Protector
	
	-- Mail
	i(21584),	-- Bracers of Eternal Reckoning
	i(13090),	-- Breastplate of the Chosen
	i(18320),	-- Demonheart Spaulders
	i(16572),	-- General's Chain Girdle
	i(16570),	-- General's Chain Wristguards
	i(16576),	-- General's Mail Bracers
	i(16575),	-- General's Mail Waistband
	i(18304),	-- Greenroot Mail
	i(5822),	-- Hedgeseed Gauntlets
	i(16402),	-- Knight-Captain's Chain Armguards
	i(16400),	-- Knight-Captain's Chain Girdle
	i(16517),	-- Legionnaire's Chain Bracers
	i(16529),	-- Legionnaire's Chain Girdle
	i(16461),	-- Marshal's Chain Bracers
	i(16464),	-- Marshal's Chain Girdle
	i(12105),	-- Pridemail Leggings
	i(21612),	-- Wormscale Stompers
	i(21588),	-- Wristguards of Elemental Fury
	
	-- Plate
	i(12106),	-- Boulderskin Breastplate
	i(16546),	-- General's Plate Armguards
	i(16547),	-- General's Plate Girdle
	i(16412),	-- Knight-Captain's Lamellar Armsplints
	i(16411),	-- Knight-Captain's Lamellar Cinch
	i(16469),	-- Marshal's Lamellar Armguards
	i(16470),	-- Marshal's Lamellar Belt
	i(16481),	-- Marshal's Plate Bracers
	i(16482),	-- Marshal's Plate Girdle
	i(21587),	-- Wristguards of Castigation
	
	-- Dagger
	i(17142),	-- Shard of the Defiler
	
	-- Shield
	i(20502),	-- Ironbark Shield
	i(18303),	-- Nimble Buckler
	
	-- Neck
	i(23058),	-- Life Channeling Necklace
	
	-- Ring
	i(17000),	-- Band of the Wraith
	i(4988),	-- Burning Obsidian Band
	i(17108),	-- Mark of Deflection
	
	-- Trinket
	i(13503),	-- Alchemists' Stone
	i(20525),	-- Earthen Sigil
	i(18355),	-- Ferra's Collar
	i(20084),	-- Hunting Net
	i(12805),	-- Orb of Fire
	i(18438),	-- Sergeant's Mark
	
	-- Recipe
	i(16073),	-- Artisan Cookbook
	i(16085),	-- Artisan First Aid - Heal Thyself
	i(16082),	-- Artisan Fishing - The Way of the Lure
	i(5130),	-- Knowledge: Dalaran Wizard Disguise
	i(5129),	-- Knowledge: Dark Iron Dwarf Disguise
	i(5126),	-- Knowledge: Defias Disguise
	i(5127),	-- Knowledge: South Seas Pirate Disguise
	i(5132),	-- Knowledge: Syndicate Disguise
	i(23689),	-- Manual: Crystal Infused Bandage
	i(23690),	-- Recipe: Crystal Flake Throat Lozenge
	i(5657),	-- Recipe: Instant Toxin
	i(1164),	-- Sam's Tome
	i(4144),	-- Tome of Polymorph: Cow
	
	-- Bind Type 2
	-- Invalid
	i(20583),	-- Sturdy Female Dwarf Mask
	i(20584),	-- Sturdy Female Gnome Mask
	i(20585),	-- Sturdy Female Human Mask
	i(20586),	-- Sturdy Female Nightelf Mask
	i(20587),	-- Sturdy Female Orc Mask
	i(20588),	-- Sturdy Female Tauren Mask
	i(20589),	-- Sturdy Female Troll Mask
	i(20590),	-- Sturdy Female Undead Mask
	i(20591),	-- Sturdy Male Dwarf Mask
	i(20592),	-- Sturdy Male Gnome Mask
	i(20593),	-- Sturdy Male Human Mask
	i(20594),	-- Sturdy Male Nightelf Mask
	i(20595),	-- Sturdy Male Orc Mask
	i(20596),	-- Sturdy Male Tauren Mask
	i(20597),	-- Sturdy Male Troll Mask
	i(20598),	-- Sturdy Male Undead Mask
	i(20936),	-- Qiraji Blessed Jewel
	i(20937),	-- Qiraji Encased Jewel
	i(20887),	-- Qiraji Engraved Jewel
	i(20883),	-- Qiraji Glyphed Jewel
	
	-- Cloak
	i(8195),	-- Nightscape Cloak
	
	-- Cloth
	i(1216),	-- Frost Bracers
	i(6243),	-- Green Woolen Robe
	i(18341),	-- Quel'dorai Sash
	i(10039),	-- Stormcloth Boots
	i(10011),	-- Stormcloth Gloves
	i(10032),	-- Stormcloth Headband
	i(10010),	-- Stormcloth Pants
	i(10038),	-- Stormcloth Shoulders
	i(10020),	-- Stormcloth Vest
	
	-- One Handed Axes
	i(5255),	-- Quilboar Tomahawk
	
	-- One Handed Sword
	i(4116),	-- Olmann Sewar
	
	-- Fist Weapons
	i(12795),	-- Blood Talon
	i(20005),	-- Devilsaur Claws
	i(20003),	-- Devilsaur Claws
	
	-- Staff
	i(3738),	-- Brewing Rod
	i(20522),	-- Feral Staff
	
	-- Two Handed Sword
	i(12469),	-- Mutilator
	
	-- Neck
	i(18023),	-- Blood Ruby Pendant
	i(7427),	-- Cerulean Talisman
	i(5005),	-- Emberspark Pendant
	i(5004),	-- Mark of the Kirin Tor
	i(7548),	-- Onyx Choker
	i(7467),	-- Vermilion Necklace
	i(7550),	-- Warrior's Honor
	
	-- Finger [NOTE: A number of these have new item ids and the old versions were removed.]
	i(7426),	-- Cerulean Ring
	i(5000),	-- Coral Band
	i(5010),	-- Inscribed Gold Ring
	i(7497),	-- Ivory Band
	i(7547),	-- Onyx Ring
	i(5743),	-- Prismstone Ring
	i(5008),	-- Quicksilver Ring
	i(7466),	-- Vermilion Band
	
	-- TBC
	-- #if AFTER TBC
	i(35530, {	-- Plans: Dawnsteel Shoulders
		["spellID"] = 0,
	}),
	i(35532, {	-- Plans: Swiftsteel Shoulders
		["spellID"] = 0,
	}),
	i(35555, {	-- Plans: Sunblessed Breastplate
		["spellID"] = 0,
	}),
	q(8489),	-- BETA An Intact Converter [Eversong Woods]
	q(8478),	-- BETA Choose Your Weapon [Eversong Woods]
	q(9357),	-- BETA Report to Aeldon Sunbrand [Eversong Woods]
	q(8896),	-- BETA The Dwarven Spy [Eversong Woods]
	-- #endif
};
i = oldI;
q = oldQ;
fp = oldFP;