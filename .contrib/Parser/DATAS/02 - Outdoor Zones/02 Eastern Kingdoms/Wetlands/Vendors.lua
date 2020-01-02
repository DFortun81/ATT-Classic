---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {	-- Eastern Kingdoms
		m(WETLANDS, {	-- Wetlands
			n(-2, {	-- Vendors
				n(1441, {	-- Brak Durnad <Weaponsmith>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4817),	-- Blessed Claymore
						i(4818),	-- Executioner's Sword
					},
					["coord"] = { 11.5, 59.6, WETLANDS },
				}),
				n(3180, {	-- Dark Iron Entrepreneur <Speciality Goods>
					["races"] = ALLIANCE_ONLY,
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
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(13309),	-- Schematic: Lovingly Crafted Boomstick
						i(14639),	-- Schematic: Minor Recombobulator
					},
					["coord"] = { 26.4, 25.8, WETLANDS },
				}),
				n(1454, {	-- Jennabink Powerseam <Tailoring Supplies & Specialty Goods>
					["races"] = ALLIANCE_ONLY,
					["coord"] = { 8.1, 55.8, WETLANDS },
					["groups"] = {
						i(4827),	-- Wizard's Belt
						i(4828),	-- Nightwind Belt
						i(4829),	-- Dreamer's Belt			
						i(4790),	-- Inferno Cloak
						i(4792),	-- Spirit Cloak
						i(4793),	-- Sylvan Cloak						
						i(5772),	-- Pattern: Red Woolen Bag
						i(6275),	-- Pattern: Greater Adept's Robe
						i(7290),	-- Pattern: Red Whelp Gloves
					},
					["description"] = "Enter the house at 8.3, 56.1 and go upstairs to access Jennabink Powerseam.",
				}),
				n(1459, {	-- Naela Trance <Bowyer>
					["races"] = ALLIANCE_ONLY,
					["coord"] = { 11.3, 58.4, WETLANDS },
					["groups"] = {
						i(11304),	-- Fine Longbow
					},
				}),
				n(3178, {	-- Stuart Fleming <Fisherman>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6368),	-- Recipe: Rainbow Fin Albacore
						i(6369),	-- Recipe: Rockscale Cod
						i(17062),	-- Recipe: Mithril Head Trout
					},
					["coord"] = { 8.0, 58.3, WETLANDS },
				}),
				n(1460, {	-- Unger Statforth <Horse Breeder>
					["races"] = ALLIANCE_ONLY,
					["coord"] = { 8.6, 54.4, WETLANDS },
					["maps"] = { WETLANDS },
					["groups"] = {
						i(2411),	-- Black Stallion Bridle
						i(2414),	-- Pinto Bridle
						i(5655),	-- Chestnut Mare Bridle
						i(5656),	-- Brown Horse Bridle
					},
				}),
				n(2679, {	-- Wenna Silkbeard <Special Goods Dealer>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4827),	-- Wizard's Belt
						i(4828),	-- Nightwind Belt
						i(4829),	-- Dreamer's Belt
						i(4830),	-- Saber Leggings
						i(4831),	-- Stalking Pants
						i(4832),	-- Mystic Sarong
						i(4833),	-- Glorious Shoulders
						i(4835),	-- Elite Shoulders
						i(7114),	-- Pattern: Azure Silk Gloves
						i(7290),	-- Pattern: Red Whelp Gloves
						i(7613),	-- Pattern: Green Leather Armor
					},
				})
			}),
		}),
	}),
};