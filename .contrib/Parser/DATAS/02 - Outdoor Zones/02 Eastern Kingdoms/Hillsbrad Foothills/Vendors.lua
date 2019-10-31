---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {	-- Eastern Kingdoms
		m(HILLSBRAD_FOOTHILLS, {	-- Hillsbrad Foothills
			n(-2, {	-- Vendors
				n(2393, {	-- Christoph Jeffcoat <Tradesman>
					["races"] = HORDE_ONLY,
					["groups"] = {						
						i(5788),	-- Pattern: Thick Murloc Armor
						i(6054),	-- Recipe: Shadow Protection Potion
					},
				}),
				n(2397, {	-- Derak Nightfall <Cook>
					["races"] = HORDE_ONLY,
					["groups"] = {						
						i(6330),	-- Recipe: Bristle Whisker Catfish
						i(21099),	-- Recipe: Smoked Sagefish
						i(21219),	-- Recipe: Sagefish Delight
					},
				}),
				n(2698, {	-- George Candarte <Leatherworking Supplies>
					["races"] = HORDE_ONLY,
					["groups"] = {						
						i(7613),	-- Pattern: Green Leather Armor
					},
				}),
				n(3536, {	-- Kris Legace <Freewheeling Tradeswoman>
					["groups"] = {	
						i(4794),	-- Wolf Bracers
						i(4795),	-- Bear Bracers						
						i(4796),	-- Owl Bracers
						i(4830),	-- Saber Leggings
						i(4831),	-- Stalking Pants
						i(4832),	-- Mystic Sarong
					},
				}),
				n(2383, {	-- Lindea Rabonne <Tackle and Bait>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6330),	-- Recipe: Bristle Whisker Catfish
						i(6369),	-- Recipe: Rockscale Cod
						i(17062),	-- Recipe: Mithril Head Trout						
					},
					["coord"] = { 50.6, 61.0, HILLSBRAD_FOOTHILLS },
				}),
				n(2394, {	-- Mallen Swain <Tailoring Supplies>
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6274),	-- Pattern: Blue Overalls
						i(6401),	-- Pattern: Dark Silk Shirt						
					},
				}),
				n(2381, {	-- Micha Yance <Trade Goods>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4355),	-- Pattern: Icy Cloak
						i(5788),	-- Pattern: Thick Murloc Armor
						i(11163),	-- Formula: Enchant Bracer - Lesser Deflection
						i(21099),	-- Recipe: Smoked Sagefish
						i(21219),	-- Recipe: Sagefish Deligh
					},
					["coord"] = { 49.0, 55.2, HILLSBRAD_FOOTHILLS },
				}),
				n(2380, {	-- Nandar Branson <Alchemy Supplies>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6055),	-- Recipe: Fire Protection Potion
					},
					["coord"] = { 50.9, 57.1, HILLSBRAD_FOOTHILLS },
				}),
				n(3539, {	-- Ott <Weaponsmith>
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(4818),	-- Executioner's Sword
						i(4817),	-- Blessed Claymore
						i(4824),	-- Blurred Axe
						i(4825),	-- Callous Axe						
						i(4826),	-- Marauder Axe
						i(12247),	-- Broad Bladed Knife
						i(12249),	-- Merciless Axe
					},
				}),
				n(3543, {	-- Robert Aebischer <Superior Armorsmith>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4797),	-- Fiery Cloak					
						i(4798),	-- Heavy Runed Cloak
						i(4799),	-- Antiquated Cloak
						i(4800),	-- Mighty Chain Pants
						i(4816),	-- Legionnaire's Leggings
						i(4833),	-- Glorious Shoulders
						i(4835),	-- Elite Shoulders
					},
					["coord"] = { 51.2, 57.0, HILLSBRAD_FOOTHILLS },
				}),
				n(3537, {	-- Zixil <Merchant Supreme>
					["groups"] = {						
						i(4827),	-- Wizard's Belt
						i(4828),	-- Nightwind Belt
						i(4829),	-- Dreamer's Belt						
						i(4836),	-- Fireproof Orb
						i(4837),	-- Strength of Will						
						i(4838),	-- Orb of Power						
						i(5772),	-- Pattern: Red Woolen Bag
						i(6377),	-- Formula: Enchant Boots - Minor Agility
						i(7362),	-- Pattern: Earthen Leather Shoulders
						i(7561),	-- Schematic: Goblin Jumper Cables
					},
				}),
			}),	
		}),
	}),
};