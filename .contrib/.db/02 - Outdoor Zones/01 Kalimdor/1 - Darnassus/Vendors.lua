---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(DARNASSUS, {
			n(VENDORS, {
				n(4168, {	-- Elynna <Tailoring Supplies>
					["coord"] = { 64.6, 21.6, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6272),	-- Pattern: Blue Linen Robe
						i(6275),	-- Pattern: Greater Adept's Robe
						i(10311),	-- Pattern: Orange Martial Shirt
					},
				}),
				n(4223, {	-- Fyldan <Cooking Supplier>
					["coord"] = { 48.5, 21.6, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(21099),	-- Recipe: Smoked Sagefish
						i(21219),	-- Pattern: Orange Martial Shirt
					},
				}),
				n(4232, {	-- Glorandiir <Axe Merchant>
					["coord"] = { 64.2, 59.0, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(12249),	-- Merciless Axe
					},
				}),
				n(4173, {	-- Landria <Bow Merchant>
					["coord"] = { 63.3, 66.3, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(11303),	-- Fine Shortbow
						i(11306),	-- Sturdy Recurve
						i(11308),	-- Sylvan Shortbow
					},
				}),
				n(4730, {	-- Lelanai <Saber Handler>
					["coord"] = { 38.3, 15.3, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(8629),	-- Reins of the Striped Nightsaber
						i(8631),	-- Reins of the Striped Frostsaber
						i(8632),	-- Reins of the Spotted Frostsaber
						i(18766),	-- Reins of the Swift Frostsaber
						i(18767),	-- Reins of the Swift Mistsaber
						i(18902),	-- Reins of the Swift Stormsaber
					},
				}),
				n(4229, {	-- Mythrin'dir <General Trade Supplier>
					["coord"] = { 61.0, 17.7, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(11223),	-- Formula: Enchant Bracer - Deflection
						i(16217),	-- Formula: Enchant Shield - Greater Stamina
					},
				}),
				n(4225, {	-- Saenorion <Leatherworking Supplies>
					["coord"] = { 63.7, 22.3, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(7451),	-- Pattern: Green Whelp Bracers
						i(18949),	-- Pattern: Barbaric Bracers
					},
				}),
				n(4235, {	-- Turian <Thrown Weapons Merchant>
					["coord"] = { 62.7, 65.6, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(12247),	-- Broad Bladed Knife
					},
				}),
				n(4226, {	-- Ulthir <Alchemy Supplies>
					["coord"] = { 55.8, 24.5, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(5642),	-- Recipe: Free Action Potion
						i(5643),	-- Recipe: Great Rage Potion
						i(13477),	-- Recipe: Superior Mana Potion
					},
				}),
				n(4228, {	-- Vaean <Enchanting Supplies>
					["coord"] = { 58.6, 14.7, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						-- #if BEFORE CATA
						i(6342),	-- Formula: Enchant Chest - Minor Mana
						-- #endif
						i(22307),	-- Pattern: Enchanted Mageweave Pouch
					},
				}),
				n(4175, {	-- Vinasia <Cloth Armor Merchant>
					["coord"] = { 60.7, 72.5, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(12256),	-- Cindercloth Leggings
					},
				}),
			}),
		}),
	}),
};