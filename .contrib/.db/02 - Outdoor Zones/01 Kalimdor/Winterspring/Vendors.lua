---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(WINTERSPRING, {
			n(VENDORS, {
				n(11188, {	-- Evie Whirlbrew <Alchemy Supplies>
					["coord"] = { 60.8, 37.8, WINTERSPRING },
					["groups"] = {
						i(13480),	-- Recipe: Major Healing Potion
					},
				}),
				n(11187, {	-- Himmik <Food & Drink>
					["coord"] = { 61.2, 39.0, WINTERSPRING },
					["groups"] = {
						i(16110),	-- Recipe: Monster Omelet
					},
				}),
				n(10618, {	-- Rivern Frostwind <Wintersaber Trainer>
					["minReputation"] = { 589, EXALTED },	-- Wintersaber Trainers, Exalted.
					["coord"] = { 49.8, 9.8, WINTERSPRING },
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(13086), 	-- Reins of the Winterspring Frostsaber (MOUNT!)
					},
				}),
				n(11189, {	-- Qia <Trade Goods Supplies>
					["coord"] = { 61.2, 37.2, WINTERSPRING },
					["groups"] = {
						i(14468),	-- Pattern: Runecloth Bag
						i(14481),	-- Pattern: Runecloth Gloves
						i(14526),	-- Pattern: Mooncloth
						i(15740),	-- Pattern: Frostsaber Boots
						i(16221),	-- Formula: Enchant Chest - Major Health
					},
				}),
				n(16015, {	-- Vi'el <Exotic Reagent Merchant>
					["coord"] = { 58.9, 78.4, WINTERSPRING },
					["groups"] = {
						{
							["itemID"] = 21939,	-- Fel Elemental Rod
							["questID"] = 8928,	-- A Shifty Merchant
							["cost"] = {
								{ "g", 400000 },	-- 40g
							},
						},
					},
				}),
				n(11185, {	-- Xizzer Fizzbolt <Engineering Supplies>
					["coord"] = { 60.8, 38.6, WINTERSPRING },
					["groups"] = {
						i(32381, {	-- Schematic: Fused Wiring
							["spellID"] = 39895,	-- Fused Wiring
							["requireSkill"] = ENGINEERING,
							["isLimited"] = true,
							-- #if AFTER MOP
							["u"] = REMOVED_FROM_GAME,
							-- #else
							["u"] = TBC_PHASE_ONE,
							-- #endif
						}),
						i(16046),	-- Schematic: Masterwork Target Dummy
						i(16047),	-- Schematic: Thorium Tube
						i(16050),	-- Schematic: Delicate Arcanite Converter
						i(18656),	-- Schematic: Powerful Seaforium Charge
						i(18652),	-- Schematic: Gyrofreeze Ice Reflector
					},
				}),
			}),
		}),
	}),
};