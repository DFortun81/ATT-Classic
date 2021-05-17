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
						i(18731, {	-- Pattern: Heavy Leather Ball
							["isLimited"] = true,
						}),
					},
				}),
				n(5163, {	-- Burbik Gearspanner <Trade Supplies>
					["coord"] = { 46.6, 27.2, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(21948, {	-- Design: Opal Necklace of Impact
							["isLimited"] = true,
							["u"] = TBC_PHASE_ONE,
						}),
						i(20975, {	-- Design: The Jade Eye
							["isLimited"] = true,
							["u"] = TBC_PHASE_ONE,
						}),
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
						i(18649, {	-- Schematic: Blue Firework
							["isLimited"] = true,
						}),
						i(7560, {	-- Schematic: Gnomish Universal Remote
							["isLimited"] = true,
						}),
						i(22729, {	-- Schematic: Steam Tonk Controller
							["isLimited"] = true,
							["u"] = TBC_PHASE_ONE,
						}),
						i(16041, {	-- Schematic: Thorium Grenade
							["isLimited"] = true,
						}),
						i(16042, {	-- Schematic: Thorium Widget
							["isLimited"] = true,
						}),
					},
				}),
				n(8681, {	-- Outfitter Eric <Speciality Tailoring Supplies>
					["coord"] = { 43.2, 29.2, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(10314, {	-- Pattern: Lavender Mageweave Shirt
							["isLimited"] = true,
						}),
						i(10317, {	-- Pattern: Pink Mageweave Shirt
							["isLimited"] = true,
						}),
						i(10326, {	-- Pattern: Tuxedo Jacket
							["isLimited"] = true,
						}),
						i(10323, {	-- Pattern: Tuxedo Pants
							["isLimited"] = true,
						}),
						i(10321, {	-- Pattern: Tuxedo Shirt
							["isLimited"] = true,
						}),
					},
				}),
				n(5122, {	-- Skolmin Goldfury <Bow Merchant>
					["coord"] = { 71.6, 66.2, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(11303, {	-- Fine Shortbow
							["isLimited"] = true,
						}),
						i(11307, {	-- Massive Longbow
							["isLimited"] = true,
						}),
						i(11306, {	-- Sturdy Recurve
							["isLimited"] = true,
						}),
					},
				}),
				n(5178, {	-- Soolie Berryfizz <Alchemy Supplies>
					["coord"] = { 66.6, 54.6, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(13478, {	-- Recipe: Elixir of Superior Defense
							["isLimited"] = true,
						}),
						i(5642, {	-- Recipe: Free Action Potion
							["isLimited"] = true,
						}),
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
						-- #if BEFORE CATA
						i(6342),	-- Formula: Enchant Chest - Minor Mana
						-- #endif
						i(6349, {	-- Formula: Enchant 2H Weapon - Lesser Intellect
							["isLimited"] = true,
						}),
						-- #if NOT CLASSIC
						i(20753),	-- Formula: Lesser Wizard Oil
						i(20752),	-- Formula: Minor Mana Oil
						i(20758),	-- Formula: Minor Wizard Oil
						-- #endif
						i(22307),	-- Pattern: Enchanted Mageweave Pouch
					},
				}),
			}),
		}),
	}),
};