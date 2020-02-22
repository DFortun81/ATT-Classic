---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(REDRIDGE_MOUNTAINS, {
			n(VENDORS, {
				n(777, {	-- Amy Davenport <Tradeswoman>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(5772),	-- Pattern: Red Woolen Bag
						i(20576),	-- Pattern: Black Whelp Tunic
					},
				}),
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
					["coord"] = { 29.1, 47.4, REDRIDGE_MOUNTAINS },
				}),
				n(3097, {	-- Bernard Brubaker <Leather Armor Merchant>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {	
						i(4794),	-- Wolf Bracers
						i(4795),	-- Bear Bracers						
						i(4796),	-- Owl Bracers
					},
				}),
				n(3096, {	-- Captured Servant of Azora <Specialist Tailoring Supplies>
					["groups"] = {
						i(4790),	-- Inferno Cloak
						i(4792),	-- Spirit Cloak
						i(4793),	-- Sylvan Cloak
					},
					["coord"] = { 74.5, 79.6, REDRIDGE_MOUNTAINS },
				}),
				n(2697, {	-- Clyde Ranthal <Leatherworking Supplies>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(7289),	-- Pattern: Black Whelp Cloak
					},
				}),
				n(3091, {	-- Franklin Hamar <Tailoring Supplies>
					["races"] = ALLIANCE_ONLY,				
					["groups"] = {										
						i(4781),	-- Whispering Vest
						i(4782),	-- Solstice Robe
						i(4786),	-- Wise Man's Belt
					},
					["coord"] = { 27.2, 45.4, REDRIDGE_MOUNTAINS },
					["description"] = "Franklin Hamar is located on the 2nd floor of the Lakeshire Inn.",
				}),
				n(3085, {	-- Gloria Femmel <Cooking Supplies>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(21099),	-- Recipe: Smoked Sagefish
						i(21219),	-- Recipe: Sagefish Delight
					},
					["coord"] = { 26.7, 43.6, REDRIDGE_MOUNTAINS },
					["description"] = "Gloria Femmel is located on the first floor of the Lakeshire Inn.",
				}),
				n(793, {	-- Kara Adams <Shield Crafter>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4820),	-- Guardian Buckler					
						i(4821),	-- Bear Buckler
						i(4822),	-- Owl's Disk
					},
				}),				
			}),	
		}),
	}),
};