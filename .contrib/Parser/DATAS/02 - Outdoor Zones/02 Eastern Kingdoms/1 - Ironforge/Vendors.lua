---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(IRONFORGE, {
			n(VENDORS, {
				n(5128, {	-- Bombus Finespindle <Leatherworking Supplies>
					["coord"] = { 40.0, 33.4, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(18731),	-- Pattern: Heavy Leather Ball
					},
				}),
				n(5160, {	-- Emrul Riknussun <Cooking Supplier>
					["coord"] = { 60.6, 38.2, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(21099),	-- Recipe: Smoked Sagefish
						i(21219),	-- Recipe: Sagefish Delight
					},
				}),
				n(5175, {	-- Gearcutter Cogspinner <Engineering Supplies>
					["coord"] = { 67.9, 42.6, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(7560),	-- Schematic: Gnomish Universal Remote
						i(16041),	-- Schematic: Thorium Grenade
						i(16042),	-- Schematic: Thorium Widget
						i(18649),	-- Schematic: Blue Firework						
					},
				}),
				n(8681, {	-- Outfitter Eric <Speciality Tailoring Supplies>
					["coord"] = { 43.2, 29.2, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(10314),	-- Pattern: Lavender Mageweave Shirt
						i(10317),	-- Pattern: Pink Mageweave Shirt
						i(10321),	-- Pattern: Tuxedo Shirt
						i(10323),	-- Pattern: Tuxedo Pants
						i(10326),	-- Pattern: Tuxedo Jacket
					},
				}),
				n(5122, {	-- Skolmin Goldfury <Bow Merchant>
					["coord"] = { 71.6, 66.2, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(11303),	-- Fine Shortbow
						i(11306),	-- Sturdy Recurve
						i(11307),	-- Massive Longbow
					},
				}),
				n(5178, {	-- Soolie Berryfizz <Alchemy Supplies>
					["coord"] = { 66.6, 54.6, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(5642),	-- Recipe: Free Action Potion
						i(13478),	-- Recipe: Elixir of Superior Defense
					},
				}),
				n(5162, {	-- Tansy Puddlefizz <Fishing Supplier>
					["coord"] = { 47.8, 6.6, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {						
						i(6326),	-- Recipe: Slitherskin Mackerel
						i(6328),	-- Recipe: Longjaw Mud Snapper
						i(6369),	-- Recipe: Rockscale Cod
						i(17062),	-- Recipe: Mithril Head Trout						
					},
				}),
				n(5158, {	-- Tilli Thistlefuzz <Enchanting Supplies>
					["coord"] = { 60.8, 44.2, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {						
						i(6342),	-- Formula: Enchant Chest - Minor Mana
						i(6349),	-- Formula: Enchant 2H Weapon - Lesser Intellect
						i(22307),	-- Pattern: Enchanted Mageweave Pouch
					},
				}),
			}),	
		}),
	}),
};