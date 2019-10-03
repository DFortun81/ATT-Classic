---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {	-- Eastern Kingdoms
		m(IRONFORGE, {	-- Ironforge
			n(-2, {	-- Vendors
				n(5128, {	-- Bombus Finespindle <Leatherworking Supplies>
					["groups"] = {
						i(18731),	-- Pattern: Heavy Leather Ball
					},
				}),
				n(5160, {	-- Emrul Riknussun <Cooking Supplier>
					["groups"] = {
						i(21099),	-- Recipe: Smoked Sagefish
						i(21219),	-- Recipe: Sagefish Delight
					},
				}),
				n(5175, {	-- Gearcutter Cogspinner <Engineering Supplies>
					["groups"] = {
						i(7560),	-- Schematic: Gnomish Universal Remote
						i(16041),	-- Schematic: Thorium Grenade
						i(16042),	-- Schematic: Thorium Widget
						i(18649),	-- Schematic: Blue Firework						
					},
				}),
				n(8681, {	-- Outfitter Eric <Speciality Tailoring Supplies>
					["groups"] = {
						i(10314),	-- Pattern: Lavender Mageweave Shirt
						i(10317),	-- Pattern: Pink Mageweave Shirt
						i(10321),	-- Pattern: Tuxedo Shirt
						i(10323),	-- Pattern: Tuxedo Pants
						i(10326),	-- Pattern: Tuxedo Jacket
					},
				}),
				n(5122, {	-- Skolmin Goldfury <Bow Merchant>
					["groups"] = {
						i(11303),	-- Fine Shortbow
						i(11306),	-- Sturdy Recurve
						i(11307),	-- Massive Longbow
					},
				}),
				n(5178, {	-- Soolie Berryfizz <Alchemy Supplies>
					["groups"] = {
						i(5642),	-- Recipe: Free Action Potion
						i(13478),	-- Recipe: Elixir of Superior Defense
					},
				}),
				n(5162, {	-- Tansy Puddlefizz <Fishing Supplier>
					["groups"] = {						
						i(6326),	-- Recipe: Slitherskin Mackerel
						i(6328),	-- Recipe: Longjaw Mud Snapper
						i(6369),	-- Recipe: Rockscale Cod
						i(17062),	-- Recipe: Mithril Head Trout						
					},
				}),
				n(5158, {	-- Tilli Thistlefuzz <Enchanting Supplies>
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