---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {	-- Eastern Kingdoms
		m(DUSKWOOD, {	-- Duskwood
			n(-2, {	-- Vendors
				n(844, {	-- Antonio Perelli <Traveling Salesman>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4777),	-- Ironwood Maul
						i(4778),	-- Heavy Spiked Mace	
						i(4794),	-- Wolf Bracers
						i(4795),	-- Bear Bracers						
						i(4796),	-- Owl Bracers
						i(4817),	-- Blessed Claymore	
						i(4818),	-- Executioner's Sword
					},
				}),
				n(228, {	-- Avette Fellwood <Bowyer>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(11304),	-- Fine Longbow
					},
				}),
				n(2481, {	-- Bliztik <Alchemy Supplies>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6068),	-- Recipe: Shadow Oil
					},
					["coord"] = { 18.0, 54.4, DUSKWOOD },
					["description"] = "Enter the building at 18.0, 55.2 and go upstairs to find Bliztik.",
				}),
				n(2668, {	-- Danielle Zipstitch <Tailoring Supplies>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(14627),	-- Pattern: Bright Yellow Shirt
					},
				}),
				n(225, {	-- Gavin Gnarltree <Weaponsmith>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(12247),	-- Broad Bladed Knife
						i(12249),	-- Merciless Axe
					},
					["coord"] = { 73.7, 49.9, DUSKWOOD },
				}),
				n(3134, {	-- Kzixx <Rare Goods>
					["groups"] = {
						i(4827),	-- Wizard's Belt						
						i(4828),	-- Nightwind Belt
						i(4829),	-- Dreamer's Belt
						i(4836),	-- Fireproof Orb
						i(4837),	-- Strength of Will
						i(4838),	-- Orb of Power
						i(6053),	-- Recipe: Holy Protection Potion
						i(7561),	-- Schematic: Goblin Jumper Cables
					},
				}),
				n(226, {	-- Morg Gnarltree <Armorer>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4797),	-- Fiery Cloak					
						i(4798),	-- Heavy Runed Cloak
						i(4799),	-- Antiquated Cloak
						i(4800),	-- Mighty Chain Pants
						i(4816),	-- Legionnaire's Leggings
					},
					["coord"] = { 73.9, 48.9, DUSKWOOD },
				}),
				n(2669, {	-- Sheri Zipstitch <Tailoring Supplies>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6401),	-- Pattern: Dark Silk Shirt				
						i(6275),	-- Pattern: Greater Adept's Robe
					},
				}),
			}),	
		}),
	}),
};