-- TODO: Crieve NOTE: This file looks awful.
-- Add Vendors
-- https://classic.wowhead.com/npc=12783/lieutenant-karter
-- https://classic.wowhead.com/npc=12796/raider-bork
_.PvP =
{
	n(-30, {	-- Alliance
		["races"] = ALLIANCE_ONLY,
		["groups"] = {
			n(QUESTS, {
				q(8371, {	-- Concerted Efforts
					["qg"] = 15351,	-- Alliance Brigadier General
					["coords"] = {
						{ 39.4, 82.2, ALTERAC_MOUNTAINS },
						{ 45.6, 45.8, ARATHI_HIGHLANDS },
						{ 61.8, 83.8, ASHENVALE },
						{ 57.8, 34.6, DARNASSUS },
						{ 69.8, 90, IRONFORGE },
						{ 79.4, 18, STORMWIND_CITY },
					},
					["maps"] = {
						ALTERAC_MOUNTAINS,
						ARATHI_HIGHLANDS,
						ASHENVALE,
						DARNASSUS,
						IRONFORGE,
						STORMWIND_CITY,
					},
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 20560, 3 },	-- Alterac Valley Mark of Honor
						{ "i", 20559, 3 },	-- Arathi Basin Mark of Honor
						{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
					},
					["lvl"] = 51,
				}),
				q(8385, {	-- Concerted Efforts
					["qg"] = 15351,	-- Alliance Brigadier General
					["sourceQuest"] = 8371,	-- Concerted Efforts
					["coords"] = {
						{ 39.4, 82.2, ALTERAC_MOUNTAINS },
						{ 45.6, 45.8, ARATHI_HIGHLANDS },
						{ 61.8, 83.8, ASHENVALE },
						{ 57.8, 34.6, DARNASSUS },
						{ 69.8, 90, IRONFORGE },
						{ 79.4, 18, STORMWIND_CITY },
					},
					["maps"] = {
						ALTERAC_MOUNTAINS,
						ARATHI_HIGHLANDS,
						ASHENVALE,
						DARNASSUS,
						IRONFORGE,
						STORMWIND_CITY,
					},
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 20560, 3 },	-- Alterac Valley Mark of Honor
						{ "i", 20559, 3 },	-- Arathi Basin Mark of Honor
						{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
					},
					["lvl"] = 51,
				}),
			}),
			n(VENDORS, {
				n(12777, {	-- Captain Dirgehammer <Armor Quartermaster>
					["description"] = "Found within the Champion's Hall in Stormwind.",
					["maps"] = { STORMWIND_CITY },
					["groups"] = {
						i(23291, {	-- Knight-Lieutenant's Silk Walkers
							["classes"] = { MAGE },
						}),
						i(23275, {	-- Knight-Lieutenant's Lamellar Sabatons
							["classes"] = { PALADIN },
						}),
						i(23287, {	-- Knight-Lieutenant's Plate Greaves
							["classes"] = { WARRIOR },
						}),
						i(23281, {	-- Knight-Lieutenant's Dragonhide Treads
							["classes"] = { DRUID },
						}),
						i(23283, {	-- Knight-Lieutenant's Dreadweave Walkers
							["classes"] = { WARLOCK },
						}),
						i(23278, {	-- Knight-Lieutenant's Chain Greaves
							["classes"] = { HUNTER },
						}),
						i(23285, {	-- Knight-Lieutenant's Leather Walkers
							["classes"] = { ROGUE },
						}),
						i(23289, {	-- Knight-Lieutenant's Satin Walkers
							["classes"] = { PRIEST },
						}),
						i(16369, {	-- Knight-Lieutenant's Silk Boots
							["classes"] = { MAGE },
						}),
						i(16409, {	-- Knight-Lieutenant's Lamellar Sabatons
							["classes"] = { PALADIN },
						}),
						i(16405, {	-- Knight-Lieutenant's Plate Boots
							["classes"] = { WARRIOR },
						}),
						i(16392, {	-- Knight-Lieutenant's Leather Boots
							["classes"] = { ROGUE },
						}),
						i(17562, {	-- Knight-Lieutenant's Dreadweave Boots
							["classes"] = { WARLOCK },
						}),
						i(16393, {	-- Knight-Lieutenant's Dragonhide Footwraps
							["classes"] = { DRUID },
						}),
						i(17594, {	-- Knight-Lieutenant's Satin Boots
							["classes"] = { PRIEST },
						}),
						i(16401, {	-- Knight-Lieutenant's Chain Boots
							["classes"] = { HUNTER },
						}),
						i(16403, {	-- Knight-Lieutenant's Chain Gauntlets
							["classes"] = { HUNTER },
						}),
						i(23279, {	-- Knight-Lieutenant's Chain Vices
							["classes"] = { HUNTER },
						}),
						i(16397, {	-- Knight-Lieutenant's Dragonhide Gloves
							["classes"] = { DRUID },
						}),
						i(23280, {	-- Knight-Lieutenant's Dragonhide Grips
							["classes"] = { DRUID },
						}),
						i(17564, {	-- Knight-Lieutenant's Dreadweave Gloves
							["classes"] = { WARLOCK },
						}),
						i(23282, {	-- Knight-Lieutenant's Dreadweave Handwraps
							["classes"] = { WARLOCK },
						}),
						i(23274, {	-- Knight-Lieutenant's Lamellar Gauntlets (60)
							["classes"] = { PALADIN },
						}),
						i(16410, {	-- Knight-Lieutenant's Lamellar Gauntlets (58)
							["classes"] = { PALADIN },
						}),
						i(16396, {	-- Knight-Lieutenant's Leather Gauntlets
							["classes"] = { ROGUE },
						}),
						i(23284, {	-- Knight-Lieutenant's Leather Grips
							["classes"] = { ROGUE },
						}),
						i(23286, {	-- Knight-Lieutenant's Plate Gauntlets (60)
							["classes"] = { WARRIOR },
						}),
						i(16406, {	-- Knight-Lieutenant's Plate Gauntlets (58)
							["classes"] = { WARRIOR },
						}),
						i(17596, {	-- Knight-Lieutenant's Satin Gloves
							["classes"] = { PRIEST },
						}),
						i(23288, {	-- Knight-Lieutenant's Satin Handwraps
							["classes"] = { PRIEST },
						}),
						i(16391, {	-- Knight-Lieutenant's Silk Gloves
							["classes"] = { MAGE },
						}),
						i(23290, {	-- Knight-Lieutenant's Silk Handwraps
							["classes"] = { MAGE },
						}),
						i(23292, {	-- Knight-Captain's Chain Hauberk (60)
							["classes"] = { HUNTER },
						}),
						i(16425, {	-- Knight-Captain's Chain Hauberk (58)
							["classes"] = { HUNTER },
						}),
						i(23294, {	-- Knight-Captain's Dragonhide Chestpiece
							["classes"] = { DRUID },
						}),
						i(16421, {	-- Knight-Captain's Dragonhide Tunic
							["classes"] = { DRUID },
						}),
						i(17568, {	-- Knight-Captain's Dreadweave Robe
							["classes"] = { WARLOCK },
						}),
						i(23297, {	-- Knight-Captain's Dreadweave Tunic
							["classes"] = { WARLOCK },
						}),
						i(23272, {	-- Knight-Captain's Lamellar Breastplate (60)
							["classes"] = { PALADIN },
						}),
						i(16433, {	-- Knight-Captain's Lamellar Breastplate (58)
							["classes"] = { PALADIN },
						}),
						i(16417, {	-- Knight-Captain's Leather Armor
							["classes"] = { ROGUE },
						}),
						i(23298, {	-- Knight-Captain's Leather Chestpiece
							["classes"] = { ROGUE },
						}),
						i(16430, {	-- Knight-Captain's Plate Chestguard
							["classes"] = { WARRIOR },
						}),
						i(23300, {	-- Knight-Captain's Plate Hauberk
							["classes"] = { WARRIOR },
						}),
						i(17600, {	-- Knight-Captain's Satin Robes
							["classes"] = { PRIEST },
						}),
						i(23303, {	-- Knight-Captain's Satin Tunic
							["classes"] = { PRIEST },
						}),
						i(16413, {	-- Knight-Captain's Silk Raiment
							["classes"] = { MAGE },
						}),
						i(23305, {	-- Knight-Captain's Silk Tunic
							["classes"] = { MAGE },
						}),
						i(16426, {	-- Knight-Captain's Chain Leggings
							["classes"] = { HUNTER },
						}),
						i(23293, {	-- Knight-Captain's Chain Legguards
							["classes"] = { HUNTER },
						}),
						i(16422, {	-- Knight-Captain's Dragonhide Leggings
							["classes"] = { DRUID },
						}),
						i(23295, {	-- Knight-Captain's Dragonhide Leggings
							["classes"] = { DRUID },
						}),
						i(17567, {	-- Knight-Captain's Dreadweave Leggings
							["classes"] = { WARLOCK },
						}),
						i(23296, {	-- Knight-Captain's Dreadweave Legguards
							["classes"] = { WARLOCK },
						}),
						i(23273, {	-- Knight-Captain's Lamellar Leggings
							["classes"] = { PALADIN },
						}),
						i(16435, {	-- Knight-Captain's Lamellar Leggings
							["classes"] = { PALADIN },
						}),
						i(23299, {	-- Knight-Captain's Leather Legguards
							["classes"] = { ROGUE },
						}),
						i(16419, {	-- Knight-Captain's Leather Legguards
							["classes"] = { ROGUE },
						}),
						i(23301, {	-- Knight-Captain's Plate Leggings
							["classes"] = { WARRIOR },
						}),
						i(16431, {	-- Knight-Captain's Plate Leggings
							["classes"] = { WARRIOR },
						}),
						i(17599, {	-- Knight-Captain's Satin Leggings
							["classes"] = { PRIEST },
						}),
						i(23302, {	-- Knight-Captain's Satin Legguards
							["classes"] = { PRIEST },
						}),
						i(16414, {	-- Knight-Captain's Silk Leggings
							["classes"] = { MAGE },
						}),
						i(23304, {	-- Knight-Captain's Silk Legguards
							["classes"] = { MAGE },
						}),
						i(23306, {	-- Lieutenant Commander's Chain Helm
							["classes"] = { HUNTER },
						}),
						i(16428, {	-- Lieutenant Commander's Chain Helmet
							["classes"] = { HUNTER },
						}),
						i(16416, {	-- Lieutenant Commander's Crown
							["classes"] = { MAGE },
						}),
						i(17598, {	-- Lieutenant Commander's Diadem
							["classes"] = { PRIEST },
						}),
						i(23308, {	-- Lieutenant Commander's Dragonhide Headguard
							["classes"] = { DRUID },
						}),
						i(16424, {	-- Lieutenant Commander's Dragonhide Shroud
							["classes"] = { DRUID },
						}),
						i(23310, {	-- Lieutenant Commander's Dreadweave Cowl
							["classes"] = { WARLOCK },
						}),
						i(17566, {	-- Lieutenant Commander's Headguard
							["classes"] = { WARLOCK },
						}),
						i(23276, {	-- Lieutenant Commander's Lamellar Headguard
							["classes"] = { PALADIN },
						}),
						i(16434, {	-- Lieutenant Commander's Lamellar Headguard
							["classes"] = { PALADIN },
						}),
						i(23312, {	-- Lieutenant Commander's Leather Helm
							["classes"] = { ROGUE },
						}),
						i(16418, {	-- Lieutenant Commander's Leather Veil
							["classes"] = { ROGUE },
						}),
						i(23314, {	-- Lieutenant Commander's Plate Helm
							["classes"] = { WARRIOR },
						}),
						i(16429, {	-- Lieutenant Commander's Plate Helm
							["classes"] = { WARRIOR },
						}),
						i(23316, {	-- Lieutenant Commander's Satin Hood
							["classes"] = { PRIEST },
						}),
						i(23318, {	-- Lieutenant Commander's Silk Cowl
							["classes"] = { MAGE },
						}),
						i(16427, {	-- Lieutenant Commander's Chain Pauldrons
							["classes"] = { HUNTER },
						}),
						i(23307, {	-- Lieutenant Commander's Chain Shoulders
							["classes"] = { HUNTER },
						}),
						i(16423, {	-- Lieutenant Commander's Dragonhide Epaulets
							["classes"] = { DRUID },
						}),
						i(23309, {	-- Lieutenant Commander's Dragonhide Shoulders
							["classes"] = { DRUID },
						}),
						i(17569, {	-- Lieutenant Commander's Dreadweave Mantle
							["classes"] = { WARLOCK },
						}),
						i(23311, {	-- Lieutenant Commander's Dreadweave Spaulders
							["classes"] = { WARLOCK },
						}),
						i(16436, {	-- Lieutenant Commander's Lamellar Shoulders
							["classes"] = { PALADIN },
						}),
						i(23277, {	-- Lieutenant Commander's Lamellar Shoulders
							["classes"] = { PALADIN },
						}),
						i(23313, {	-- Lieutenant Commander's Leather Shoulders
							["classes"] = { ROGUE },
						}),
						i(16420, {	-- Lieutenant Commander's Leather Spaulders
							["classes"] = { ROGUE },
						}),
						i(16432, {	-- Lieutenant Commander's Plate Pauldrons
							["classes"] = { WARRIOR },
						}),
						i(23315, {	-- Lieutenant Commander's Plate Shoulders
							["classes"] = { WARRIOR },
						}),
						i(17601, {	-- Lieutenant Commander's Satin Amice
							["classes"] = { PRIEST },
						}),
						i(23317, {	-- Lieutenant Commander's Satin Mantle
							["classes"] = { PRIEST },
						}),
						i(23319, {	-- Lieutenant Commander's Silk Mantle
							["classes"] = { MAGE },
						}),
						i(16415, {	-- Lieutenant Commander's Silk Spaulders
							["classes"] = { MAGE },
						}),
						i(16463, {	-- Marshal's Chain Grips
							["classes"] = { HUNTER },
						}),
						i(16484, {	-- Marshal's Plate Gauntlets
							["classes"] = { WARRIOR },
						}),
						i(16448, {	-- Marshal's Dragonhide Gauntlets
							["classes"] = { DRUID },
						}),
						i(16454, {	-- Marshal's Leather Handgrips
							["classes"] = { ROGUE },
						}),
						i(16440, {	-- Marshal's Silk Gloves
							["classes"] = { MAGE },
						}),
						i(17608, {	-- Marshal's Satin Gloves
							["classes"] = { PRIEST },
						}),
						i(16471, {	-- Marshal's Lamellar Gloves
							["classes"] = { PALADIN },
						}),
						i(17584, {	-- Marshal's Dreadweave Gloves
							["classes"] = { WARLOCK },
						}),
						i(16467, {	-- Marshal's Chain Legguards
							["classes"] = { HUNTER },
						}),
						i(16450, {	-- Marshal's Dragonhide Legguards
							["classes"] = { DRUID },
						}),
						i(17579, {	-- Marshal's Dreadweave Leggings
							["classes"] = { WARLOCK },
						}),
						i(16475, {	-- Marshal's Lamellar Legplates
							["classes"] = { PALADIN },
						}),
						i(16456, {	-- Marshal's Leather Leggings
							["classes"] = { ROGUE },
						}),
						i(16479, {	-- Marshal's Plate Legguards
							["classes"] = { WARRIOR },
						}),
						i(17603, {	-- Marshal's Satin Pants
							["classes"] = { PRIEST },
						}),
						i(16442, {	-- Marshal's Silk Leggings
							["classes"] = { MAGE },
						}),
						i(16483, {	-- Marshal's Plate Boots
							["classes"] = { WARRIOR },
						}),
						i(16459, {	-- Marshal's Dragonhide Boots
							["classes"] = { DRUID },
						}),
						i(16437, {	-- Marshal's Silk Footwraps
							["classes"] = { MAGE },
						}),
						i(16462, {	-- Marshal's Chain Boots
							["classes"] = { HUNTER },
						}),
						i(16472, {	-- Marshal's Lamellar Boots
							["classes"] = { PALADIN },
						}),
						i(16446, {	-- Marshal's Leather Footguards
							["classes"] = { ROGUE },
						}),
						i(17583, {	-- Marshal's Dreadweave Boots
							["classes"] = { WARLOCK },
						}),
						i(17607, {	-- Marshal's Satin Sandals
							["classes"] = { PRIEST },
						}),
						i(16465, {	-- Field Marshal's Chain Helm
							["classes"] = { HUNTER },
						});
						i(17578, {	-- Field Marshal's Coronal
							["classes"] = { WARLOCK },
						});
						i(16441, {	-- Field Marshal's Coronet
							["classes"] = { MAGE },
						});
						i(16451, {	-- Field Marshal's Dragonhide Helmet
							["classes"] = { DRUID },
						});
						i(17602, {	-- Field Marshal's Headdress
							["classes"] = { PRIEST },
						});
						i(16474, {	-- Field Marshal's Lamellar Faceguard
							["classes"] = { PALADIN },
						});
						i(16455, {	-- Field Marshal's Leather Mask
							["classes"] = { ROGUE },
						});
						i(16478, {	-- Field Marshal's Plate Helm
							["classes"] = { WARRIOR },
						});
						i(16466, {	-- Field Marshal's Chain Breastplate
							["classes"] = { HUNTER },
						}),
						i(16452, {	-- Field Marshal's Dragonhide Breastplate
							["classes"] = { DRUID },
						}),
						i(17581, {	-- Field Marshal's Dreadweave Robe
							["classes"] = { WARLOCK },
						}),
						i(16473, {	-- Field Marshal's Lamellar Chestplate
							["classes"] = { PALADIN },
						}),
						i(16453, {	-- Field Marshal's Leather Chestpiece
							["classes"] = { ROGUE },
						}),
						i(16477, {	-- Field Marshal's Plate Armor
							["classes"] = { WARRIOR },
						}),
						i(17605, {	-- Field Marshal's Satin Vestments
							["classes"] = { PRIEST },
						}),
						i(16443, {	-- Field Marshal's Silk Vestments
							["classes"] = { MAGE },
						}),
						i(16468, {	-- Field Marshal's Chain Spaulders
							["classes"] = { HUNTER },
						}),
						i(16449, {	-- Field Marshal's Dragonhide Spaulders
							["classes"] = { DRUID },
						}),
						i(17580, {	-- Field Marshal's Dreadweave Shoulders
							["classes"] = { WARLOCK },
						}),
						i(16476, {	-- Field Marshal's Lamellar Pauldrons
							["classes"] = { PALADIN },
						}),
						i(16457, {	-- Field Marshal's Leather Epaulets
							["classes"] = { ROGUE },
						}),
						i(16480, {	-- Field Marshal's Plate Shoulderguards
							["classes"] = { WARRIOR },
						}),
						i(17604, {	-- Field Marshal's Satin Mantle
							["classes"] = { PRIEST },
						}),
						i(16444, {	-- Field Marshal's Silk Spaulders
							["classes"] = { MAGE },
						}),
					},
				}),
				n(12782, {	-- Captain O'Neal <Weapons Quartermaster>
					["description"] = "Found within the Champion's Hall in Stormwind.",
					["maps"] = { STORMWIND_CITY },
					["groups"] = {
						i(18825),	-- Grand Marshal's Aegis
						i(18867),	-- Grand Marshal's Battle Hammer
						i(18833),	-- Grand Marshal's Bullseye
						i(18876),	-- Grand Marshal's Claymore
						i(23455),	-- Grand Marshal's Demolisher
						i(18838),	-- Grand Marshal's Dirk
						i(18869),	-- Grand Marshal's Glaive
						i(18855),	-- Grand Marshal's Hand Cannon
						i(18827),	-- Grand Marshal's Handaxe
						i(18847),	-- Grand Marshal's Left Hand Blade
						i(12584),	-- Grand Marshal's Longsword
						i(23451),	-- Grand Marshal's Mageblade
						i(18865),	-- Grand Marshal's Punisher
						i(18836),	-- Grand Marshal's Repeater
						i(18843),	-- Grand Marshal's Right Hand Blade
						i(18873),	-- Grand Marshal's Stave
						i(18830),	-- Grand Marshal's Sunderer
						i(23456),	-- Grand Marshal's Swiftblade
						i(23452),	-- Grand Marshal's Tome of Power
						i(23453),	-- Grand Marshal's Tome of Restoration
						i(23454),	-- Grand Marshal's Warhammer
					},
				}),
				n(12783, {	-- Lieutenant Karter <Mount Vendor>
					["description"] = "Found within the Champion's Hall in Stormwind.",
					["maps"] = { STORMWIND_CITY },
					["groups"] = {
						i(18241),	-- Black War Steed Bridle
						i(18244),	-- Black War Ram
						i(18243),	-- Black Battlestrider
						i(18242),	-- Reins of the Black War Tiger
					},
				}),
				n(12781, {	-- Master Sergeant Biggins <Officer Accessories Quartermaster>
					["description"] = "Found within the Champion's Hall in Stormwind.",
					["maps"] = { STORMWIND_CITY },
					["groups"] = {
						i(18606),	-- Alliance Battle Standard
						i(15198),	-- Knight's Colors
						i(18839),	-- Combat Healing Potion
						i(18841),	-- Combat Mana Potion
					},
				}),
				n(12805, {	-- Officer Areyn <Accessories Quartermaster>
					["coord"] = { 73.8, 53.4, STORMWIND_CITY },
					["maps"] = { STORMWIND_CITY },
					["groups"] = {
						i(18664),	-- A Treatise on Military Ranks
						i(15196),	-- Private's Tabard
						i(18854, {	-- Insignia of the Alliance
							["classes"] = { WARRIOR },
						}),
						i(18857, {	-- Insignia of the Alliance
							["classes"] = { ROGUE },
						}),
						i(18862, {	-- Insignia of the Alliance
							["classes"] = { PRIEST },
						}),
						i(18859, {	-- Insignia of the Alliance
							["classes"] = { MAGE },
						}),
						i(18858, {	-- Insignia of the Alliance
							["classes"] = { WARLOCK },
						}),
						i(18863, {	-- Insignia of the Alliance
							["classes"] = { DRUID },
						}),
						i(18864, {	-- Insignia of the Alliance
							["classes"] = { PALADIN },
						}),
						i(18856, {	-- Insignia of the Alliance
							["classes"] = { HUNTER },
						}),
						i(16342),	-- Sergeant's Cape (58)
						i(18440),	-- Sergeant's Cape (45)
						i(18441),	-- Sergeant's Cape (30)
						i(18443),	-- Master Sergeant's Insignia (58)
						i(18444),	-- Master Sergeant's Insignia (45)
						i(18442),	-- Master Sergeant's Insignia (30)
						i(18449, {	-- Sergeant Major's Chain Armguards (45)
							["classes"] = { HUNTER },
						}),
						i(18455, {	-- Sergeant Major's Dragonhide Armsplints (45)
							["classes"] = { DRUID },
						}),
						i(18453, {	-- Sergeant Major's Leather Armsplints (45)
							["classes"] = { ROGUE },
						}),
						i(18447, {	-- Sergeant Major's Plate Wristguards (45)
							["classes"] = { PALADIN, WARRIOR },
						}),
						i(18457, {	-- Sergeant Major's Silk Cuffs (45)
							["classes"] = { MAGE, PRIEST, WARLOCK },
						}),
						i(18448, {	-- Sergeant Major's Chain Armguards (58)
							["classes"] = { HUNTER },
						}),
						i(18454, {	-- Sergeant Major's Dragonhide Armsplints (58)
							["classes"] = { DRUID },
						}),
						i(18452, {	-- Sergeant Major's Leather Armsplints (58)
							["classes"] = { ROGUE },
						}),
						i(18445, {	-- Sergeant Major's Plate Wristguards (58)
							["classes"] = { PALADIN, WARRIOR },
						}),
						i(18456, {	-- Sergeant Major's Silk Cuffs (58)
							["classes"] = { MAGE, PRIEST, WARLOCK },
						}),
					},
				}),
			}),
		},
	}),
	n(-31, {	-- Horde
		["races"] = HORDE_ONLY,
		["groups"] = {
			n(VENDORS, {
				n(12793, {	-- Brave Stonehide <Officer Accessories Quartermaster>
					["description"] = "Found within the Champion's Hall in Orgrimmar.",
					["maps"] = { ORGRIMMAR },
					["groups"] = {
						i(18607),	-- Horde Battle Standard
						i(15199),	-- Stone Guard's Herald
						i(18839),	-- Combat Healing Potion
						i(18841),	-- Combat Mana Potion
					},
				}),
				n(12792, {	-- Lady Palanseer <Armor Quartermaster>
					["description"] = "Found within the Champion's Hall in Orgrimmar.",
					["maps"] = { ORGRIMMAR },
					["groups"] = {
						i(22860, {	-- Blood Guard's Silk Walkers (60)
							["classes"] = { MAGE },
						}),
						i(22858, {	-- Blood Guard's Plate Greaves (60)
							["classes"] = { WARRIOR },
						}),
						i(22857, {	-- Blood Guard's Mail Greaves (60)
							["classes"] = { SHAMAN },
						}),
						i(22855, {	-- Blood Guard's Dreadweave Walkers (60)
							["classes"] = { WARLOCK },
						}),
						i(22859, {	-- Blood Guard's Satin Walkers (60)
							["classes"] = { PRIEST },
						}),
						i(22852, {	-- Blood Guard's Dragonhide Treads (60)
							["classes"] = { DRUID },
						}),
						i(22856, {	-- Blood Guard's Leather Walkers (60)
							["classes"] = { ROGUE },
						}),
						i(22843, {	-- Blood Guard's Chain Greaves (60)
							["classes"] = { HUNTER },
						}),
						i(16485, {	-- Blood Guard's Silk Footwraps (58)
							["classes"] = { MAGE },
						}),
						i(17576, {	-- Blood Guard's Dreadweave Boots (58)
							["classes"] = { WARLOCK },
						}),
						i(16509, {	-- Blood Guard's Plate Boots (58)
							["classes"] = { WARRIOR },
						}),
						i(16531, {	-- Blood Guard's Chain Boots (58)
							["classes"] = { HUNTER },
						}),
						i(17616, {	-- Blood Guard's Satin Boots (58)
							["classes"] = { PRIEST },
						}),
						i(16518, {	-- Blood Guard's Mail Walkers (58)
							["classes"] = { SHAMAN },
						}),
						i(16498, {	-- Blood Guard's Leather Treads (58)
							["classes"] = { ROGUE },
						}),
						i(16494, {	-- Blood Guard's Dragonhide Boots (58)
							["classes"] = { DRUID },
						}),
						i(16530, {	-- Blood Guard's Chain Gauntlets
							["classes"] = { HUNTER },
						}),
						i(22862, {	-- Blood Guard's Chain Vices
							["classes"] = { HUNTER },
						}),
						i(16496, {	-- Blood Guard's Dragonhide Gauntlets
							["classes"] = { DRUID },
						}),
						i(22863, {	-- Blood Guard's Dragonhide Grips
							["classes"] = { DRUID },
						}),
						i(17577, {	-- Blood Guard's Dreadweave Gloves
							["classes"] = { WARLOCK },
						}),
						i(22865, {	-- Blood Guard's Dreadweave Handwraps
							["classes"] = { WARLOCK },
						}),
						i(22864, {	-- Blood Guard's Leather Grips
							["classes"] = { ROGUE },
						}),
						i(16499, {	-- Blood Guard's Leather Vices
							["classes"] = { ROGUE },
						}),
						i(16519, {	-- Blood Guard's Mail Grips
							["classes"] = { SHAMAN },
						}),
						i(22867, {	-- Blood Guard's Mail Vices
							["classes"] = { SHAMAN },
						}),
						i(22868, {	-- Blood Guard's Plate Gauntlets
							["classes"] = { WARRIOR },
						}),
						i(16510, {	-- Blood Guard's Plate Gloves
							["classes"] = { WARRIOR },
						}),
						i(17617, {	-- Blood Guard's Satin Gloves
							["classes"] = { PRIEST },
						}),
						i(22869, {	-- Blood Guard's Satin Handwraps
							["classes"] = { PRIEST },
						}),
						i(16487, {	-- Blood Guard's Silk Gloves
							["classes"] = { MAGE },
						}),
						i(22870, {	-- Blood Guard's Silk Handwraps
							["classes"] = { MAGE },
						}),
						i(16525, {	-- Legionnaire's Chain Breastplate
							["classes"] = {HUNTER },
						}),
						i(22874, {	-- Legionnaire's Chain Hauberk
							["classes"] = { HUNTER },
						}),
						i(16504, {	-- Legionnaire's Dragonhide Breastplate
							["classes"] = { DRUID },
						}),
						i(22877, {	-- Legionnaire's Dragonhide Chestpiece
							["classes"] = { DRUID },
						}),
						i(17572, {	-- Legionnaire's Dreadweave Robe
							["classes"] = { WARLOCK },
						}),
						i(22884, {	-- Legionnaire's Dreadweave Tunic
							["classes"] = { WARLOCK },
						}),
						i(22879, {	-- Legionnaire's Leather Chestpiece
							["classes"] = { ROGUE },
						}),
						i(16505, {	-- Legionnaire's Leather Hauberk
							["classes"] = { ROGUE },
						}),
						i(16522, {	-- Legionnaire's Mail Chestpiece
							["classes"] = { SHAMAN },
						}),
						i(22876, {	-- Legionnaire's Mail Hauberk
							["classes"] = { SHAMAN },
						}),
						i(16513, {	-- Legionnaire's Plate Armor
							["classes"] = { WARRIOR },
						}),
						i(22872, {	-- Legionnaire's Plate Hauberk
							["classes"] = { WARRIOR },
						}),
						i(22885, {	-- Legionnaire's Satin Tunic
							["classes"] = { PRIEST },
						}),
						i(17612, {	-- Legionnaire's Satin Vestments
							["classes"] = { PRIEST },
						}),
						i(16491, {	-- Legionnaire's Silk Robes
							["classes"] = { MAGE },
						}),
						i(22886, {	-- Legionnaire's Silk Tunic
							["classes"] = { MAGE },
						}),
						i(16527, {	-- Legionnaire's Chain Leggings
							["classes"] = { HUNTER },
						}),
						i(22875, {	-- Legionnaire's Chain Legguards
							["classes"] = { HUNTER },
						}),
						i(22878, {	-- Legionnaire's Dragonhide Leggings
							["classes"] = { DRUID },
						}),
						i(16502, {	-- Legionnaire's Dragonhide Trousers
							["classes"] = { DRUID },
						}),
						i(17571, {	-- Legionnaire's Dreadweave Leggings
							["classes"] = { WARLOCK },
						}),
						i(22881, {	-- Legionnaire's Dreadweave Legguards
							["classes"] = { WARLOCK },
						}),
						i(16508, {	-- Legionnaire's Leather Leggings
							["classes"] = { ROGUE },
						}),
						i(22880, {	-- Legionnaire's Leather Legguards
							["classes"] = { ROGUE },
						}),
						i(16523, {	-- Legionnaire's Mail Leggings
							["classes"] = { SHAMAN },
						}),
						i(22887, {	-- Legionnaire's Mail Legguards
							["classes"] = { SHAMAN },
						}),
						i(22873, {	-- Legionnaire's Plate Leggings
							["classes"] = { WARRIOR },
						}),
						i(16515, {	-- Legionnaire's Plate Legguards
							["classes"] = { WARRIOR },
						}),
						i(22882, {	-- Legionnaire's Satin Legguards
							["classes"] = { PRIEST },
						}),
						i(17611, {	-- Legionnaire's Satin Trousers
							["classes"] = { PRIEST },
						}),
						i(22883, {	-- Legionnaire's Silk Legguards
							["classes"] = { MAGE },
						}),
						i(16490, {	-- Legionnaire's Silk Pants
							["classes"] = { MAGE },
						}),
						i(16526, {	-- Champion's Chain Headguard
							["classes"] = { HUNTER },
						}),
						i(23251, {	-- Champion's Chain Helm
							["classes"] = { HUNTER },
						}),
						i(23253, {	-- Champion's Dragonhide Headguard
							["classes"] = { DRUID },
						}),
						i(16503, {	-- Champion's Dragonhide Helm
							["classes"] = { DRUID },
						}),
						i(23255, {	-- Champion's Dreadweave Cowl
							["classes"] = { WARLOCK },
						}),
						i(17570, {	-- Champion's Dreadweave Hood
							["classes"] = { WARLOCK },
						}),
						i(16506, {	-- Champion's Leather Headguard
							["classes"] = { ROGUE },
						}),
						i(23257, {	-- Champion's Leather Helm
							["classes"] = { ROGUE },
						}),
						i(23259, {	-- Champion's Mail Headguard
							["classes"] = { SHAMAN },
						}),
						i(16521, {	-- Champion's Mail Helm
							["classes"] = { SHAMAN },
						}),
						i(16514, {	-- Champion's Plate Headguard
							["classes"] = { WARRIOR },
						}),
						i(23244, {	-- Champion's Plate Helm
							["classes"] = { WARRIOR },
						}),
						i(17610, {	-- Champion's Satin Cowl
							["classes"] = { PRIEST },
						}),
						i(23261, {	-- Champion's Satin Hood
							["classes"] = { PRIEST },
						}),
						i(23263, {	-- Champion's Silk Cowl
							["classes"] = { MAGE },
						}),
						i(16489, {	-- Champion's Silk Hood
							["classes"] = { MAGE },
						}),
						i(23264, {	-- Champion's Silk Mantle
							["classes"] = { MAGE },
						}),
						i(23256, {	-- Champion's Dreadweave Spaulders
							["classes"] = { WARLOCK },
						}),
						i(23243, {	-- Champion's Plate Shoulders
							["classes"] = { WARRIOR },
						}),
						i(23258, {	-- Champion's Leather Shoulders
							["classes"] = { ROGUE },
						}),
						i(17573, {	-- Champion's Dreadweave Shoulders
							["classes"] = { WARLOCK },
						}),
						i(16516, {	-- Champion's Plate Pauldrons
							["classes"] = { WARRIOR },
						}),
						i(16492, {	-- Champion's Silk Shoulderpads
							["classes"] = { MAGE },
						}),
						i(23260, {	-- Champion's Mail Pauldrons
							["classes"] = { SHAMAN },
						}),
						i(16528, {	-- Champion's Chain Pauldrons
							["classes"] = { HUNTER },
						}),
						i(23254, {	-- Champion's Dragonhide Shoulders
							["classes"] = { DRUID },
						}),
						i(17613, {	-- Champion's Satin Shoulderpads
							["classes"] = { PRIEST },
						}),
						i(16524, {	-- Champion's Mail Shoulders
							["classes"] = { SHAMAN },
						}),
						i(16507, {	-- Champion's Leather Mantle
							["classes"] = { ROGUE },
						}),
						i(16501, {	-- Champion's Dragonhide Spaulders
							["classes"] = { DRUID },
						}),
						i(23262, {	-- Champion's Satin Mantle
							["classes"] = { PRIEST },
						}),
						i(23252, {	-- Champion's Chain Shoulders
							["classes"] = { HUNTER },
						}),
						i(16571, {	-- General's Chain Gloves
							["classes"] = { HUNTER },
						}),
						i(16555, {	-- General's Dragonhide Gloves
							["classes"] = { DRUID },
						}),
						i(17588, {	-- General's Dreadweave Gloves
							["classes"] = { WARLOCK },
						}),
						i(16560, {	-- General's Leather Mitts
							["classes"] = { ROGUE },
						}),
						i(16574, {	-- General's Mail Gauntlets
							["classes"] = { SHAMAN },
						}),
						i(16548, {	-- General's Plate Gauntlets
							["classes"] = { WARRIOR },
						}),
						i(17620, {	-- General's Satin Gloves
							["classes"] = { PRIEST },
						}),
						i(16540, {	-- General's Silk Handguards
							["classes"] = { MAGE },
						}),
						i(16567, {	-- General's Chain Legguards
							["classes"] = { HUNTER },
						}),
						i(16552, {	-- General's Dragonhide Leggings
							["classes"] = { DRUID },
						}),
						i(17593, {	-- General's Dreadweave Pants
							["classes"] = { WARLOCK },
						}),
						i(16564, {	-- General's Leather Legguards
							["classes"] = { ROGUE },
						}),
						i(16579, {	-- General's Mail Leggings
							["classes"] = { SHAMAN },
						}),
						i(16543, {	-- General's Plate Leggings
							["classes"] = { WARRIOR },
						}),
						i(17625, {	-- General's Satin Leggings
							["classes"] = { PRIEST },
						}),
						i(16534, {	-- General's Silk Trousers
							["classes"] = { MAGE },
						}),
						i(16569, {	-- General's Chain Boots
							["classes"] = { HUNTER },
						}),
						i(16554, {	-- General's Dragonhide Boots
							["classes"] = { DRUID },
						}),
						i(17586, {	-- General's Dreadweave Boots
							["classes"] = { WARLOCK },
						}),
						i(16558, {	-- General's Leather Treads
							["classes"] = { ROGUE },
						}),
						i(16573, {	-- General's Mail Boots
							["classes"] = { SHAMAN },
						}),
						i(16545, {	-- General's Plate Boots
							["classes"] = { WARRIOR },
						}),
						i(17618, {	-- General's Satin Boots
							["classes"] = { PRIEST },
						}),
						i(16539, {	-- General's Silk Boots
							["classes"] = { MAGE },
						}),
						i(16566, {	-- Warlord's Chain Helmet
							["classes"] = { HUNTER },
						}),
						i(16550, {	-- Warlord's Dragonhide Helmet
							["classes"] = { DRUID },
						}),
						i(17591, {	-- Warlord's Dreadweave Hood
							["classes"] = { WARLOCK },
						}),
						i(16561, {	-- Warlord's Leather Helm
							["classes"] = { ROGUE },
						}),
						i(16578, {	-- Warlord's Mail Helm
							["classes"] = { SHAMAN },
						}),
						i(16542, {	-- Warlord's Plate Headpiece
							["classes"] = { WARRIOR },
						}),
						i(17623, {	-- Warlord's Satin Cowl
							["classes"] = { PRIEST },
						}),
						i(16533, {	-- Warlord's Silk Cowl
							["classes"] = { MAGE },
						}),
						i(16565, {	-- Warlord's Chain Chestpiece
							["classes"] = { HUNTER },
						}),
						i(16549, {	-- Warlord's Dragonhide Hauberk
							["classes"] = { DRUID },
						}),
						i(17592, {	-- Warlord's Dreadweave Robe
							["classes"] = { WARLOCK },
						}),
						i(16563, {	-- Warlord's Leather Breastplate
							["classes"] = { ROGUE },
						}),
						i(16577, {	-- Warlord's Mail Armor
							["classes"] = { SHAMAN },
						}),
						i(16541, {	-- Warlord's Plate Armor
							["classes"] = { WARRIOR },
						}),
						i(17624, {	-- Warlord's Satin Robes
							["classes"] = { PRIEST },
						}),
						i(16535, {	-- Warlord's Silk Raiment
							["classes"] = { MAGE },
						}),
						i(16568, {	-- Warlord's Chain Shoulders
							["classes"] = { HUNTER },
						}),
						i(16551, {	-- Warlord's Dragonhide Epaulets
							["classes"] = { DRUID },
						}),
						i(17590, {	-- Warlord's Dreadweave Mantle
							["classes"] = { WARLOCK },
						}),
						i(16562, {	-- Warlord's Leather Spaulders
							["classes"] = { ROGUE },
						}),
						i(16580, {	-- Warlord's Mail Spaulders
							["classes"] = { SHAMAN },
						}),
						i(16544, {	-- Warlord's Plate Shoulders
							["classes"] = { WARRIOR },
						}),
						i(17622, {	-- Warlord's Satin Mantle
							["classes"] = { PRIEST },
						}),
						i(16536, {	-- Warlord's Silk Amice
							["classes"] = { MAGE },
						}),
					},
				}),
				n(12796, {	-- Raider Bork <Mount Quartermaster>
					["description"] = "Found within the Champion's Hall in Orgrimmar.",
					["maps"] = { ORGRIMMAR },
					["groups"] = {
						i(18247),	-- Black War Kodo
						i(18245),	-- Horn of the Black War Wolf
						i(18248),	-- Red Skeletal Warhorse
						i(18246),	-- Whistle of the Black War Raptor
					},
				}),
				n(12799, {	-- Sergeant Ba'sha <Accessories Quartermaster>
					["coord"] = { 41.6, 68.6, ORGRIMMAR },
					["maps"] = { ORGRIMMAR },
					["groups"] = {
						i(15197),	-- Scout's Tabard
						i(18834, {	-- Insignia of the Horde
							["classes"] = { WARRIOR },
						}),
						i(18849, {	-- Insignia of the Horde
							["classes"] = { ROGUE },
						}),
						i(18846, {	-- Insignia of the Horde
							["classes"] = { HUNTER },
						}),
						i(18851, {	-- Insignia of the Horde
							["classes"] = { PRIEST },
						}),
						i(18853, {	-- Insignia of the Horde
							["classes"] = { DRUID },
						}),
						i(18850, {	-- Insignia of the Horde
							["classes"] = { MAGE },
						}),
						i(18852, {	-- Insignia of the Horde
							["classes"] = { WARLOCK },
						}),
						i(18845, {	-- Insignia of the Horde
							["classes"] = { SHAMAN },
						}),
						i(18461),	-- Sergeant's Cloak (58)
						i(16341),	-- Sergeant's Cloak (45)
						i(18427),	-- Sergeant's Cloak (30)
						i(16335),	-- Senior Sergeant's Insignia (58)
						i(18428),	-- Senior Sergeant's Insignia (45)
						i(15200),	-- Senior Sergeant's Insignia (30)
						i(16486, {	-- First Sergeant's Silk Cuffs (58)
							["classes"] = { MAGE, PRIEST, WARLOCK },
						}),
						i(18434, {	-- First Sergeant's Dragonhide Armguards (58)
							["classes"] = { DRUID },
						}),
						i(18429, {	-- First Sergeant's Plate Bracers (58)
							["classes"] = { WARRIOR },
						}),
						i(16532, {	-- First Sergeant's Mail Wristguards (58)
							["classes"] = { HUNTER, SHAMAN },
						}),
						i(16497, {	-- First Sergeant's Leather Armguards (58)
							["classes"] = { ROGUE },
						}),
						i(18437, {	-- First Sergeant's Silk Cuffs (45)
							["classes"] = { MAGE, PRIEST, WARLOCK },
						}),
						i(18430, {	-- First Sergeant's Plate Bracers (45)
							["classes"] = { WARRIOR },
						}),
						i(18432, {	-- First Sergeant's Mail Wristguards (45)
							["classes"] = { HUNTER, SHAMAN },
						}),
						i(18436, {	-- First Sergeant's Dragonhide Armguards (45)
							["classes"] = { DRUID },
						}),
						i(18435, {	-- First Sergeant's Leather Armguards (45)
							["classes"] = { ROGUE },
						}),
					},
				}),
				n(14581, {	-- Sergeant Thunderhorn <Weapons Quartermaster>
					["description"] = "Found within the Champion's Hall in Orgrimmar.",
					["maps"] = { ORGRIMMAR },
					["groups"] = {
						i(18831),	-- High Warlord's Battle Axe
						i(23464),	-- High Warlord's Battle Mace
						i(16345),	-- High Warlord's Blade
						i(18866),	-- High Warlord's Bludgeon
						i(18828),	-- High Warlord's Cleaver
						i(18837),	-- High Warlord's Crossbow
						i(23465),	-- High Warlord's Destroyer
						i(18877),	-- High Warlord's Greatsword
						i(18848),	-- High Warlord's Left Claw
						i(18871),	-- High Warlord's Pig Sticker
						i(18868),	-- High Warlord's Pulverizer
						i(23467),	-- High Warlord's Quickblade
						i(18840),	-- High Warlord's Razor
						i(18835),	-- High Warlord's Recurve
						i(18844),	-- High Warlord's Right Claw
						i(18826),	-- High Warlord's Shield Wall
						i(23466),	-- High Warlord's Spellblade
						i(18860),	-- High Warlord's Street Sweeper
						i(23468),	-- High Warlord's Tome of Destruction
						i(23469),	-- High Warlord's Tome of Mending
						i(18874),	-- High Warlord's War Staff
					},
				}),
			}),
		},
	}),
};