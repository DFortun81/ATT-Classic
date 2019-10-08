---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {	-- Kalimdor
		m(FERALAS, {	-- Feralas
			n(-2, {	-- Vendors
				n(6576, {	-- Brienna Starglow <Tailoring Supplies>
					["groups"] = {
						i(7089),	-- Pattern: Azure Silk Cloak
					},
				}),
				n(8158, {	-- Bronk <Alchemy Supplies>
					["groups"] = {
						i(6057),	-- Recipe: Nature Protection Potion
						i(9302),	-- Recipe: Ghost Dye
					},
				}),
				n(9548, {	-- Cawind Trueaim <Gunsmith & Bowyer>
					["groups"] = {
						i(11308),	-- Sylvan Shortbow
					},
				}),
				n(7854, {	-- Jangdor Swiftstrider <Leatherworking Supplies>
					["groups"] = {
						i(7451),	-- Pattern: Green Whelp Bracers
						i(8385),	-- Pattern: Turtle Scale Gloves
						i(8409),	-- Pattern: Nightscape Shoulders
						i(15734),	-- Pattern: Living Shoulders
					},
				}),
				n(7852, {	-- Pratt McGrubben <Leatherworking Supplies>
					["groups"] = {
						i(7451),	-- Pattern: Green Whelp Bracers
						i(8385),	-- Pattern: Turtle Scale Gloves
						i(15734),	-- Pattern: Living Shoulders
					},
				}),
				n(8145, {	-- Sheendra Tallgrass <Trade Supplies>
					["groups"] = {
						i(12229),	-- Recipe: Hot Wolf Ribs
						i(13947),	-- Recipe: Lobster Stew
						i(13948),	-- Recipe: Mightfish Steak
						i(13949),	-- Recipe: Baked Salmon
					},
				}),
				n(7947, {	-- Vivianna <Trade Supplies>
					["groups"] = {
						i(12229),	-- Recipe: Hot Wolf Ribs
						i(13947),	-- Recipe: Lobster Stew
						i(13948),	-- Recipe: Mightfish Steak
						i(13949),	-- Recipe: Baked Salmon
					},
				}),
				n(8159, {	-- Worb Strongstitch <Light Armor Merchant>
					["groups"] = {
						i(12253),	-- Brilliant Red Cloak
						i(12254),	-- Well Oiled Cloak
					},
				}),
				n(14637, {	-- Zorbin Fandazzle
					["description"] = "Must complete quests |cFFFFD700Still With The Zapped Giants|r and |cFFFFD700Even More Fuel For The Zapping|r before he will sell to you.",
					["groups"] = {
						i(19027),	-- Schematic: Snake Burst Firework
					},
				}),
			}),	
		}),
	}),
};