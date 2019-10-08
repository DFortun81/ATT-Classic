--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------
_.Holidays =
{
	n(-47, {	-- Lunar Festival
		filter(200, {	-- Recipes
			n(-2, {	-- Vendors
				i(21730),	-- Schematic: Blue Rocket Cluster
				i(21737),	-- Schematic: Cluster Launcher
				i(21738),	-- Schematic: Firework Launcher
				i(21731),	-- Schematic: Green Rocket Cluster
				i(21727),	-- Schematic: Large Blue Rocket
				i(21733),	-- Schematic: Large Blue Rocket Cluster
				i(21728),	-- Schematic: Large Green Rocket
				i(21734),	-- Schematic: Large Green Rocket Cluster
				i(21729),	-- Schematic: Large Red Rocket
				i(21735),	-- Schematic: Large Red Rocket Cluster
				i(21732),	-- Schematic: Red Rocket Cluster
				i(21724),	-- Schematic: Small Blue Rocket
				i(21725),	-- Schematic: Small Green Rocket
				i(21726),	-- Schematic: Small Red Rocket
			}),
		}),
		n(-17, {	-- Quests
			q(8878, {	-- Festive Recipes
				["lvl"] = 50,
				["g"] = {
					i(21722),	-- Pattern: Festival Dress
					i(21723),	-- Pattern: Festive Red Pant Suit
				},
			}),
		}),
	}),
};