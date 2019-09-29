---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {	-- Kalimdor
		m(WINTERSPRING, {	-- Winterspring
			n(-2, {	-- Vendors
				n(11188, {	-- Evie Whirlbrew <Alchemy Supplies>
					["groups"] = {
						i(13480),	-- Recipe: Major Healing Potion		
					},
				}),
				n(11187, {	-- Himmik <Food & Drink>
					["groups"] = {
						i(16110),	-- Recipe: Monster Omelet	
					},
				}),
				n(11189, {	-- Qia <Trade Goods Supplies>
					["groups"] = {
						i(14468),	-- Pattern: Runecloth Bag
						i(14481),	-- Pattern: Runecloth Gloves	
						i(14526),	-- Pattern: Mooncloth
						i(15740),	-- Pattern: Frostsaber Boots
						i(16221),	-- Formula: Enchant Chest - Major Health						
					},
				}),
				n(11185, {	-- Xizzer Fizzbolt <Engineering Supplies>
					["groups"] = {						
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