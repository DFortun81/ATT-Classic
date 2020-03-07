---------------------------------------------------------------------------
--         N E V E R       I M P L E M E N T E D       M O D U L E      	--
---------------------------------------------------------------------------
-- Everything in this file hasn't been implemented yet.
local oldI, oldQ = i, q;
i = function(...) return un(1, oldI(...)); end
q = function(...) return un(1, oldQ(...)); end
_.NeverImplemented =
{
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
	i(22729),	-- Schematic: Steam Tonk Controller
	q(6842),	-- "<UNUSED>" quest
	q(7069),	-- "<UNUSED>" quest
	q(55296),	-- This quest was reported as missing on Discord, but has no information related to it similar to 6842 and 7069.
	q(3366),	-- The Glowing Shard [Quests #6981 and #3366 look identical, but WoWHead doesn't have much info on 3366]
	
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
	
	-- Felwood Quests that were never added.
	q(5208),	-- <NYI> <TXT> The Blessing of Evil
	q(5207),	-- <NYI> <TXT> The True Summoner
	q(5209),	-- <UNUSED>
	q(7741, {	-- Praise from the Emerald Circle <NYI> <TXT>
		i(19065),	-- Emerald Circle
	}),
	
	-- Mulgore
	q(774),	-- <UNUSED>
	
	-- Scourge Invasion (Unused Quests)
	q(9296),	-- reuse
	q(9297),	-- reuse
	q(9298),	-- reuse
	
	-- Bind Type 0
	-- Invalid (Filter Type 0)
	i(17968),	-- Charged Scale of Onyxia
	i(17967),	-- Refined Scale of Onyxia
	i(3895),	-- TEST Legendary
	i(22316),	-- Test Relic
	
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
	
	-- Mail
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
	
	-- Dagger
	i(24071),	-- Bland Dagger
	
	-- One Handed Mace
	i(21127),	-- Ahn'Qiraj Mace PH
	i(18800),	-- TEST 1H Amberseal Keeper
	
	-- Two Handed Mace
	i(18881),	-- TEST Ragnaros Hammer
	i(19158),	-- TEST Sulfuras, Hand of Ragnaros
	
	-- One Handed Sword
	i(22805),	-- Naxxramas Sword 1H 1 PH
	i(18582),	-- The Twin Blades of Azzinoth

	-- Two Handed Sword
	i(22814),	-- Naxxramas Sword 2H 2 PH
	i(18882),	-- TEST Level 80 Epic

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
	
	-- Ring
	i(24358),	-- QATest +1000 Spell Dmg Ring
	i(18968),	-- Ring of Critical Testing
	i(18970),	-- Ring of Critical Testing 2
	i(18971),	-- Ring of Critical Testing 3
	i(18982),	-- Ring of Critical Testing 4
	i(20445),	-- Test Defense Ring +120
	i(20446),	-- Test Defense Ring +80
	i(16067),	-- Test Fire Res Ring

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
	i(17347),	-- Syndicate Man Tracker (MURP)
	i(18593),	-- Thorium Brotherhood Contract (OLD)
	
	-- Bag
	i(21194),	-- D'Sak's Big Sack
	i(21193),	-- D'Sak's Sack
	i(21195),	-- D'Sak's Sacktastic
	i(21313),	-- D'Sak's Small bag
	i(21857),	-- Test Herb Bag
	
	-- Recipe
	i(5688),	-- Test Language Item
	
	
	-- Bind Type 1
	
	-- Bind Type 2
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
	
	-- 1H Axes
	i(5255),	-- Quilboar Tomahawk
	
	-- Bind Type 3
	
	-- Bind Type 4
};
i = oldI;
q = oldQ;