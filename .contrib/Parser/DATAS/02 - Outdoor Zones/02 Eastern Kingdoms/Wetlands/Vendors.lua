---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {	-- Eastern Kingdoms
		m(WETLANDS, {	-- Wetlands
			n(-2, {	-- Vendors
				n(1441, {	-- Brak Durnad <Weaponsmith>
					["groups"] = {
						i(4817),	-- Blessed Claymore
						i(4818),	-- Executioner's Sword
					},
				}),
				n(3180, {	-- Dark Iron Entrepreneur <Speciality Goods>
					["groups"] = {
						i(4824),	-- Blurred Axe
						i(4825),	-- Callous Axe
						i(4826),	-- Marauder Axe
						i(4830),	-- Saber Leggings
						i(4831),	-- Stalking Pants
						i(4832),	-- Mystic Sarong
						i(4833),	-- Glorious Shoulders
						i(4835),	-- Elite Shoulders
					},
				}),
				n(2682, {	-- Fradd Swiftgear <Engineering Supplies>
					["groups"] = {
						i(13309),	-- Schematic: Lovingly Crafted Boomstick
						i(14639),	-- Schematic: Minor Recombobulator
					},
				}),
				n(1454, {	-- Jennabink Powerseam <Tailoring Supplies & Specialty Goods>
					["coord"] = { 8.1, 55.8, Wetlands },
					["groups"] = {
						i(4827),	-- Wizard's Belt
						i(4828),	-- Nightwind Belt
						i(4829),	-- Dreamer's Belt			
						i(4790),	-- Inferno Cloak
						i(4792),	-- Spirit Cloak
						i(4793),	-- Sylvan Cloak						
						i(5772),	-- Pattern: Red Woolen Bag
						i(6275),	-- Pattern: Greater Adept's Robe
						i(7114),	-- Pattern: Azure Silk Gloves
						i(7290),	-- Pattern: Red Whelp Gloves
					},
				}),
				n(1459, {	-- Naela Trance <Bowyer>
					["coord"] = { 11.3, 58.4, Wetlands },
					["groups"] = {
						i(11304),	-- Fine Longbow
					},
				}),
				n(3178, {	-- Stuart Fleming <Fisherman>
					["groups"] = {
						i(6368),	-- Recipe: Rainbow Fin Albacore
						i(6369),	-- Recipe: Rockscale Cod
						i(17062),	-- Recipe: Mithril Head Trout
					},
				}),
				n(2679, {	-- Wenna Silkbeard <Special Goods Dealer>
					["groups"] = {
						i(4827),	-- Wizard's Belt
						i(4828),	-- Nightwind Belt
						i(4829),	-- Dreamer's Belt
						i(4830),	-- Saber Leggings
						i(4831),	-- Stalking Pants
						i(4832),	-- Mystic Sarong
						i(4833),	-- Glorious Shoulders
						i(4835),	-- Elite Shoulders
						i(7613),	-- Pattern: Green Leather Armor
					},
				})
			}),
		}),
	}),
};