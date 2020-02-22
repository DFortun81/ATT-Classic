---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(ORGRIMMAR, {	-- Orgrimmar
			n(-2, {	-- Vendors
				n(3364, {	-- Borya <Tailoring Supplies>
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(5772),	-- Pattern: Red Woolen Bag
						i(6270),	-- Pattern: Blue Linen Vest
						i(6274),	-- Pattern: Blue Overalls
						i(10317),	-- Pattern: Pink Mageweave Shirt
						i(10314),	-- Pattern: Lavender Mageweave Shirt
					},
				}),
				n(3316, {	-- Handor <Cloth & Leather Armor Merchant>
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(12256),	-- Cindercloth Leggings
					},
				}),
				n(3410, {	-- Jin'sora <Bow Merchant>
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(11303),	-- Fine Shortbow
						i(11306),	-- Sturdy Recurve
						i(11307),	-- Massive Longbow
					},
				}),
				n(3346, {	-- Kithas <Enchanting Supplies>
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6342),	-- Formula: Enchant Chest - Minor Mana
						i(6346),	-- Formula: Enchant Chest - Lesser Mana
						i(6349),	-- Formula: Enchant 2H Weapon - Lesser Intellect
						i(22307),	-- Pattern: Enchanted Mageweave Pouch
					},
				}),
				n(3348, {	-- Kor'geld <Alchemy Supplies>
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(5642),	-- Recipe: Free Action Potion
						i(13478),	-- Recipe: Elixir of Superior Defense
					},
				}),
				n(3348, {	-- Kor'geld <Alchemy Supplies>
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6368),	-- Recipe: Rainbow Fin Albacore
						i(6369),	-- Recipe: Rockscale Cod
						i(17062),	-- Recipe: Mithril Head Trout
					},
				}),
				n(3362, {	-- Ogunaro Wolfrunner <Kennel Master>
					["races"] = HORDE_ONLY,
					["coord"] = { 69.4, 12.4, ORGRIMMAR },
					["maps"] = { ORGRIMMAR },
					["groups"] = {
						i(1132),	-- Horn of the Timber Wolf
						i(5665),	-- Horn of the Dire Wolf
						i(5668),	-- Horn of the Brown Wolf
						i(18796),	-- Horn of the Swift Brown Wolf
						i(18797),	-- Horn of the Swift Timber Wolf
						i(18798),	-- Horn of the Swift Gray Wolf
					},
				}),
				n(3413, {	-- Sovik <Engineering Supplies>
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(16041),	-- Schematic: Thorium Grenade
						i(16042),	-- Schematic: Thorium Widget
						i(18647),	-- Schematic: Red Firework
					},
				}),
				n(3356, {	-- Sumi <Blacksmithing Supplier>
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(12162),	-- Plans: Hardened Iron Shortsword
					},
				}),
				n(3366, {	-- Tamar <Leatherworking Supplies>
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(18731),	-- Pattern: Heavy Leather Ball
					},
				}),
				n(3315, {	-- Tor'phan <Cloth & Leather Armor Merchant>
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(12255),	-- Pale Leggings
					},
				}),
				n(3400, {	-- Xen'to <Cooking Supplier>
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(21099),	-- Recipe: Smoked Sagefish
						i(21219),	-- Recipe: Sagefish Delight
					},
				}),
			}),	
		}),
	}),
};