---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(UNDERCITY, {
			n(VENDORS, {
				n(4604, {	-- Abigail Sawyer <Bow Merchant>
					["coord"] = { 54.8, 38.0, UNDERCITY },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(11303),   -- Fine Shortbow
						i(11306),	-- Sturdy Recurve
						i(11307),	-- Massive Longbow
					},
				}),
				n(4610, {	-- Algernon <Alchemy Supplies>
					["coord"] = { 51.8, 74.6, UNDERCITY },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(9301),    -- Recipe: Elixir of Shadow Power
						i(13477),	-- Recipe: Superior Mana Potion
					},
				}),
				n(4561, {	-- Daniel Bartlett <General Trade Supplier>
					["coord"] = { 64.8, 38.2, UNDERCITY },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(16217),   -- Formula: Enchant Shield - Greater Stamina
					},
				}),
				n(8403, {	-- Jeremiah Payson <Cockroach Vendor>
					["coord"] = { 67.8, 42.8, UNDERCITY },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(10393),   -- Cockroach
					},
				}),
				n(4589, {	-- Joseph Moore <Leatherworking Supplies>
					["coord"] = { 70.6, 58.8, UNDERCITY },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(7451),    -- Pattern: Green Whelp Bracers
						i(18949),   -- Pattern: Barbaric Bracers
					},
				}),
				n(4574, {	-- Lizbeth Cromwell <Fishing Supplier>
					["coord"] = { 82.1, 30.8, UNDERCITY },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6325),	-- Recipe: Brilliant Smallfish
						i(6328),	-- Recipe: Longjaw Mud Snapper
						i(6369),	-- Recipe: Rockscale Cod
						i(17062),	-- Recipe: Mithril Head Trout
					},
				}),
				n(4577, {	-- Millie Gregorian <Tailoring Supplies>
					["coord"] = { 70.8, 29.6, UNDERCITY },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(5772),	-- Pattern: Red Woolen Bag
						i(6275),	-- Pattern: Greater Adept's Robe
						i(10321),	-- Pattern: Tuxedo Shirt
						i(10323),	-- Pattern: Tuxedo Pants
						i(10326),	-- Pattern: Tuxedo Jacket
					},
				}),
				n(4553, {	-- Ronald Burch <Cooking Supplier>
					["coord"] = { 62.6, 43.6, UNDERCITY },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6330),	-- Recipe: Bristle Whisker Catfish
						i(6368),	-- Recipe: Rainbow Fin Albacore
						i(21099),	-- Recipe: Smoked Sagefish
						i(21219),	-- Recipe: Sagefish Delight
					},
				}),
				n(4617, {	-- Thaddeus Webb <Enchanting Supplies>
					["coord"] = { 62.0, 60.8, UNDERCITY },
					["races"] = HORDE_ONLY,
					["groups"] = {
						-- #if BEFORE CATA
						i(6342),	-- Formula: Enchant Chest - Minor Mana
						-- #endif
						i(22307),	-- Pattern: Enchanted Mageweave Pouch
					},
				}),
			}),
		}),
	}),
};