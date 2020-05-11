_.ItemDB = {};
local i = function(itemID, skillID)
	_.ItemDB[itemID] = { ["requireSkill"] = skillID };
end

-- Gnomish Engineering
i(18654, 20219);		-- Schematic: Gnomish Alarm-o-Bot
i(18661, 20219);		-- Schematic: World Enlarger
i(18653, 20222);		-- Schematic: Goblin Jumper Cables XL

-- Armorsmithing
i(20040, 9788);			-- Plans: Dark Iron Boots
i(17051, 9788);			-- Plans: Dark Iron Bracers
i(19207, 9788);			-- Plans: Dark Iron Gauntlets
i(19206, 9788);			-- Plans: Dark Iron Helm
i(17052, 9788);			-- Plans: Dark Iron Leggings
i(11612, 9788);			-- Plans: Dark Iron Plate
i(12698, 9788);			-- Plans: Dawnbringer Shoulders
i(12696, 9788);			-- Plans: Demon Forged Breastplate
i(12727, 9788);			-- Plans: Enchanted Thorium Breastplate
i(12725, 9788);			-- Plans: Enchanted Thorium Helm
i(12726, 9788);			-- Plans: Enchanted Thorium Leggings
i(17049, 9788);			-- Plans: Fiery Chain Girdle
i(17053, 9788);			-- Plans: Fiery Chain Shoulders
i(12699, 9788);			-- Plans: Fiery Chain Gauntlets
i(12716, 9788);			-- Plans: Helm of the Great Chief
i(12728, 9788);			-- Plans: Invulnerable Mail
i(12717, 9788);			-- Plans: Lionheart Helm
i(12703, 9788);			-- Plans: Storm Gauntlets
i(12720, 9788);			-- Plans: Stronghold Gauntlets
i(22388, 9788);			-- Plans: Titanic Leggings
i(12711, 9788);			-- Plans: Whitesoul Helm
i(12691, 9788);			-- Plans: Wildthorn Mail
-- Weaponsmithing
i(19208, 9787);			-- Plans: Black Amnesty
i(19209, 9787);			-- Plans: Blackfury
i(12817, 9787);			-- Plans: Bleakwood Hew
i(12831, 9787);			-- Plans: Blood Talon
i(11610, 9787);			-- Plans: Dark Iron Pulverizer
i(11611, 9787);			-- Plans: Dark Iron Sunderer
i(12832, 9787);			-- Plans: Darkspear
i(12839, 9787);			-- Plans: Heartseeker
-- Master Axesmith
i(12835, 17041);		-- Plans: Annihilator
i(12838, 17041);		-- Plans: Arcanite Reaper
i(17060, 17041);		-- Plans: Dark Iron Destroyer
i(12821, 17041);		-- Plans: Dawn's Edge
i(19212, 17041);		-- Plans: Nightfall
-- Master Hammersmith
i(19210, 17040);		-- Plans: Ebon Hand
i(12824, 17040);		-- Plans: Enchanted Battlehammer
i(12833, 17040);		-- Plans: Hammer of the Titans
i(12837, 17040);		-- Plans: Masterwork Stormhammer
i(22390, 17040);		-- Plans: Persuader
i(12827, 17040);		-- Plans: Serenity
-- Master Swordsmith
i(12834, 17039);		-- Plans: Arcanite Champion
i(19211, 17039);		-- Plans: Blackguard
i(12825, 17039);		-- Plans: Blazing Rapier
i(12830, 17039);		-- Plans: Corruption
i(17059, 17039);		-- Plans: Dark Iron Reaver
i(12836, 17039);		-- Plans: Frostguard
i(22389, 17039);		-- Plans: Sageblade

-- Dragonscale Leatherworking
i(18517, 10656);		-- Pattern: Chromatic Cloak
i(19331, 10656);		-- Pattern: Chromatic Gauntlets
i(17025, 10656);		-- Pattern: Black Dragonscale Boots
i(15759, 10656);		-- Pattern: Black Dragonscale Breastplate
i(15781, 10656);		-- Pattern: Black Dragonscale Leggings
i(15770, 10656);		-- Pattern: Black Dragonscale Shoulders
i(15751, 10656);		-- Pattern: Blue Dragonscale Breastplate
i(15763, 10656);		-- Pattern: Blue Dragonscale Shoulders
i(20382, 10656);		-- Pattern: Dreamscale Breastplate
i(15730, 10656);		-- Pattern: Red Dragonscale Breastplate
i(15726, 10656);		-- Pattern: Green Dragonscale Breastplate
i(15733, 10656);		-- Pattern: Green Dragonscale Leggings
-- Elemental Leatherworking
i(15771, 10658);		-- Pattern: Living Breastplate
i(15752, 10658);		-- Pattern: Living Leggings
i(15734, 10658);		-- Pattern: Living Shoulders
i(19333, 10658);		-- Pattern: Molten Belt
i(17023, 10658);		-- Pattern: Molten Helm
i(18519, 10658);		-- Pattern: Shifting Cloak
i(15753, 10658);		-- Pattern: Stormshroud Armor
i(21548, 10658);		-- Pattern: Stormshroud Gloves
i(15741, 10658);		-- Pattern: Stormshroud Pants
i(15764, 10658);		-- Pattern: Stormshroud Shoulders
i(15749, 10658);		-- Pattern: Volcanic Breastplate
i(15732, 10658);		-- Pattern: Volcanic Leggings
i(15775, 10658);		-- Pattern: Volcanic Shoulders
-- Tribal Leatherworking
i(15737, 10660);		-- Pattern: Chimeric Boots
i(15729, 10660);		-- Pattern: Chimeric Gloves
i(15746, 10660);		-- Pattern: Chimeric Leggings
i(15755, 10660);		-- Pattern: Chimeric Vest
i(19332, 10660);		-- Pattern: Corehound Belt
i(17022, 10660);		-- Pattern: Corehound Boots
i(15758, 10660);		-- Pattern: Devilsaur Gauntlets
i(15772, 10660);		-- Pattern: Devilsaur Leggings
i(15740, 10660);		-- Pattern: Frostsaber Boots
i(15761, 10660);		-- Pattern: Frostsaber Gloves
i(15747, 10660);		-- Pattern: Frostsaber Leggings
i(15779, 10660);		-- Pattern: Frostsaber Tunic
i(18518, 10660);		-- Pattern: Hide of the Wild
i(15760, 10660);		-- Pattern: Ironfeather Breastplate
i(15735, 10660);		-- Pattern: Ironfeather Shoulders
i(20253, 10660);		-- Pattern: Warbear Harness
i(15742, 10660);		-- Pattern: Warbear Harness
i(20254, 10660);		-- Pattern: Warbear Woolies
i(15754, 10660);		-- Pattern: Warbear Woolies