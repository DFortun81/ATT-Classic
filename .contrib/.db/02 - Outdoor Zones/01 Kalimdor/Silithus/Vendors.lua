---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(SILITHUS, {
			n(VENDORS, {
				n(15293, {	-- Aendel Windspear
					["coord"] = { 62.6, 49.8, SILITHUS },
					["groups"] = {
						un(PHASE_FIVE_CATCH_UP, i(22769)),	-- Pattern: Bramblewood Belt
						un(PHASE_FIVE_CATCH_UP, i(22770)),	-- Pattern: Bramblewood Boots
						un(PHASE_FIVE_CATCH_UP, i(22771)),	-- Pattern: Bramblewood Helm
						un(PHASE_FOUR, i(20382)),	-- Pattern: Dreamscale Breastplate
						un(PHASE_FOUR, i(20509)),	-- Pattern: Sandstalker Bracers
						un(PHASE_FOUR, i(20511)),	-- Pattern: Sandstalker Breastplate
						un(PHASE_FOUR, i(20510)),	-- Pattern: Sandstalker Gauntlets
						un(PHASE_FOUR, i(20506)),	-- Pattern: Spitfire Bracers
						un(PHASE_FOUR, i(20508)),	-- Pattern: Spitfire Breastplate
						un(PHASE_FOUR, i(20507)),	-- Pattern: Spitfire Gauntlets
					},
				}),
				n(15419, {	-- Kania <Enchanting Supplies>
					["coord"] = { 52.0, 39.7, SILITHUS },
					["groups"] = bubbleDown({ ["u"] = PHASE_FIVE }, {
						-- #if BEFORE CATA
						i(6342),	-- Formula: Enchant Chest - Minor Mana
						-- #endif
						i(20732),	-- Formula: Enchant Cloak - Greater Fire Resistance
						i(20733),	-- Formula: Enchant Cloak - Greater Nature Resistance
						i(20754),	-- Formula: Lesser Mana Oil
						i(20753),	-- Formula: Lesser Wizard Oil
						i(20752),	-- Formula: Minor Mana Oil
						i(20758),	-- Formula: Minor Wizard Oil
						i(20755),	-- Formula: Wizard Oil
						i(22308),	-- Pattern: Enchanted Runecloth Bag
					}),
				}),
				n(15179, {	-- Mishta <General Trade Goods Vendor>
					["coord"] = { 49.8, 36.4, SILITHUS },
					["groups"] = {
						un(PHASE_FIVE, i(22310)),	-- Pattern: Cenarion Herb Bag
						un(PHASE_FIVE_CATCH_UP, i(22683)),	-- Pattern: Gaea's Embrace
						un(PHASE_FIVE, i(22312)),	-- Pattern: Satchel of Cenarius
						un(PHASE_FIVE_CATCH_UP, i(22773)),	-- Pattern: Sylvan Crown
						un(PHASE_FIVE_CATCH_UP, i(22772)),	-- Pattern: Sylvan Shoulders
						un(PHASE_FIVE_CATCH_UP, i(22774)),	-- Pattern: Sylvan Vest
					},
				}),
				n(15176, {	-- Vargus <Blacksmith>
					["coord"] = { 51.2, 38.8, SILITHUS },
					["groups"] = {
						un(PHASE_FIVE, i(22209)),	-- Plans: Heavy Obsidian Belt
						un(PHASE_FIVE_CATCH_UP, i(22768)),	-- Plans: Ironvine Belt
						un(PHASE_FIVE_CATCH_UP, i(22766)),	-- Plans: Ironvine Breastplate
						un(PHASE_FIVE_CATCH_UP, i(22767)),	-- Plans: Ironvine Gloves
						un(PHASE_FIVE, i(22214)),	-- Plans: Light Obsidian Belt
					},
				}),
				n(12956, {	-- Zannok Hidepiercer <Leatherworking Supplies>
					["coord"] = { 81.8, 17.8, SILITHUS },
					["groups"] = {
						i(15724),	-- Pattern: Heavy Scorpid Bracers
						i(15762),	-- Pattern: Heavy Scorpid Helm
					},
				}),
			}),
		}),
	}),
};