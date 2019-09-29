---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {	-- Eastern Kingdoms
		m(UNDERCITY, {	-- Undercity
			n(-2, {	-- Vendors
				n(4604, {	-- Abigail Sawyer <Bow Merchant>
					["groups"] = {
						i(11303),   -- Fine Shortbow
						i(11306),	-- Sturdy Recurve
						i(11307),	-- Massive Longbow
					},
				}),
				n(4610, {	-- Algernon <Alchemy Supplies>
					["groups"] = {
						i(9301),    -- Recipe: Elixir of Shadow Power
						i(13477),	-- Recipe: Superior Mana Potion
					},
				}),
				n(4561, {	-- Daniel Bartlett <General Trade Supplier>
					["groups"] = {
						i(16217),   -- Formula: Enchant Shield - Greater Stamina
					},
				}),
				n(8403, {	-- Jeremiah Payson <Cockroach Vendor>
					["groups"] = {
						i(10393),   -- Cockroach
					},
				}),
				n(4589, {	-- Joseph Moore <Leatherworking Supplies>
					["groups"] = {
						i(7451),    -- Pattern: Green Whelp Bracers
						i(18949),   -- Pattern: Barbaric Bracers
					},
				}),
				n(4574, {	-- Lizbeth Cromwell <Fishing Supplier>
					["groups"] = {						
						i(6325),	-- Recipe: Brilliant Smallfish
						i(6328),	-- Recipe: Longjaw Mud Snapper
						i(6369),	-- Recipe: Rockscale Cod
						i(17062),	-- Recipe: Mithril Head Trout						
					},
				}),
				n(4577, {	-- Millie Gregorian <Tailoring Supplies>
					["groups"] = {
						i(5772),	-- Pattern: Red Woolen Bag
						i(6275),	-- Pattern: Greater Adept's Robe
						i(10321),	-- Pattern: Tuxedo Shirt
						i(10323),	-- Pattern: Tuxedo Pants
						i(10326),	-- Pattern: Tuxedo Jacket
					},
				}),
				n(4553, {	-- Ronald Burch <Cooking Supplier>
					["groups"] = {						
						i(6330),	-- Recipe: Bristle Whisker Catfish
						i(6368),	-- Recipe: Rainbow Fin Albacore
						i(21099),	-- Recipe: Smoked Sagefish
						i(21219),	-- Recipe: Sagefish Delight
					},
				}),
				n(4617, {	-- Thaddeus Webb <Enchanting Supplies>
					["groups"] = {						
						i(6342),	-- Formula: Enchant Chest - Minor Mana
						i(22307),	-- Pattern: Enchanted Mageweave Pouch						
					},
				}),
			}),	
		}),
	}),
};