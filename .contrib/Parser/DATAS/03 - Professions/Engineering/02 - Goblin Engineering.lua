profession(202, {	-- Engineering
	prof(20222, {	-- Goblin Engineering
		["description"] = "These items can only be crafted by Engineers who have completed the Goblin Engineering quest chain.\n\nNOTE: You may only have one of these specializations active per character. If you wish to finish your collection, you must level a second Engineer and complete the opposing specialization.",
		["sourceQuest"] = 3639,	-- Show Your Work
		["cost"] = {
			{ "i", 10791, 1 },	-- Goblin Engineer Membership Card
		},
		["groups"] = {
			{
				["name"] = "Devices",
				["categoryID"] = 2,
				["g"] = {
					{
						["name"] = "Dimensional Ripper - Everlook",
						["recipeID"] = 23486,
						["description"] = "Speak to Zap Farflinger in Winterspring at 59.6, 49.8 to learn this recipe.",
						["qg"] = 14742,	--  Zap Farflinger
						["coord"] = { 59.6, 49.8, WINTERSPRING },
					},
					{
						["name"] = "Goblin Construction Helmet",
						["recipeID"] = 12718
					},
					{
						["name"] = "Goblin Jumper Cables XL",
						["recipeID"] = 23078
					},
					{
						["name"] = "Goblin Mining Helmet",
						["recipeID"] = 12717
					},
					{
						["name"] = "Goblin Rocket Boots",
						["recipeID"] = 8895
					},
					{
						["name"] = "Goblin Rocket Helmet",
						["recipeID"] = 12758
					},
					{
						["name"] = "Pet Bombling",
						["description"] = "While this recipe does not have a requirement for Goblin Engineering, you cannot learn this recipe without Goblin Engineering and switching to Goblin from Gnomish is not possible in Classic.",
						["recipeID"] = 15628
					},
				}
			},
			{
				["name"] = "Explosives",
				["categoryID"] = 3,
				["g"] = {
					{
						["name"] = "Goblin Bomb Dispenser",
						["recipeID"] = 12755
					},
					{
						["name"] = "Goblin Dragon Gun",
						["recipeID"] = 12908
					},
					{
						["name"] = "Goblin Mortar",
						["recipeID"] = 12716
					},
					{
						["name"] = "Goblin Sapper Charge",
						["recipeID"] = 12760
					},
					{
						["name"] = "The Big One",
						["recipeID"] = 12754
					},
					{
						["name"] = "The Mortar: Reloaded",
						["recipeID"] = 13240
					},
				}
			},
			{
				["name"] = "Parts",
				["categoryID"] = 7,
				["g"] = {
					{
						["name"] = "Goblin Rocket Fuel Recipe",
						["recipeID"] = 12715,
						["g"] = {
							i(10644, {	-- Recipe: Goblin Rocket Fuel (Engineers make the recipe for alchemists)
								["description"] = "This recipe is crafted by Goblin Engineers and given to Alchemists to learn so that the Alchemist can craft the item needed by the Engineer.\n\nIf you are missing this recipe, ask a Goblin Engineer to craft it for you.",
							}),
						},
					}
				}
			},
			n(-17, {	-- Quests
				i(11422, {	-- Goblin Engineer's Renewal Gift
					["description"] = "If you destroy your Goblin Engineer Membership Card, you can renew your membership for 2 Gold and will receive this gift in the mail in about a day.",
					["groups"] = {
						i(4417),	-- Schematic: Large Seaforium Charge
						i(11828),	-- Schematic: Pet Bombling
						i(4416),	-- Schematic: Goblin Land Mine
					},
				}),
			}),
		},
	});
});