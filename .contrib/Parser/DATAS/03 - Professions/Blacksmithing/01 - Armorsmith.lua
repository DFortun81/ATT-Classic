profession(BLACKSMITHING, {
	prof(9788, {	-- Armorsmith
		["description"] = "These items can only be crafted by Blacksmiths who have completed the Art of the Armorsmith quest chain.\n\nNOTE: You may only have one of these specializations active per character. If you wish to finish your collection, you must level several Blacksmiths and complete the opposing specialization(s).",
		["sourceQuests"] = {
			5283,	-- The Art of the Armorsmith [Alliance]
			5301,	-- The Art of the Armorsmith [Horde]
		},
		["groups"] = {
			{
				["name"] = "Helms",
				["categoryID"] = 23,
				["g"] = {
					un(PHASE_THREE, {
						["name"] = "Dark Iron Helm",
						["recipeID"] = 23636,
						["requireSkill"] = 9788,
					}),
					un(PHASE_THREE, {
						["name"] = "Enchanted Thorium Helm",
						["recipeID"] = 16742,
						["requireSkill"] = 9788,
					}),
					{
						["name"] = "Helm of the Great Chief",
						["recipeID"] = 16728,
						["requireSkill"] = 9788,
					},
					{
						["name"] = "Lionheart Helm",
						["recipeID"] = 16729,
						["requireSkill"] = 9788,
					},
					{
						["name"] = "Whitesoul Helm",
						["recipeID"] = 16724,
						["requireSkill"] = 9788,
					},
				},
			},
			{
				["name"] = "Shoulders",
				["categoryID"] = 24,
				["g"] = {
					un(TBC_PHASE_ONE, {
						["name"] = "Dawnbringer Shoulders",
						["recipeID"] = 16660,
						["requireSkill"] = 9788,
					}),
					{
						["name"] = "Fiery Chain Shoulders",
						["recipeID"] = 20873,
						["requireSkill"] = 9788,
					},
				},
			},
			{
				["name"] = "Bracers",
				["categoryID"] = 27,
				["g"] = {
					{
						["name"] = "Dark Iron Bracers",
						["recipeID"] = 20874,
						["requireSkill"] = 9788,
					},
				},
			},
			{
				["name"] = "Gauntlets",
				["categoryID"] = 26,
				["g"] = {
					un(PHASE_THREE, {
						["name"] = "Dark Iron Gauntlets",
						["recipeID"] = 23637,
						["requireSkill"] = 9788,
					}),
					{
						["name"] = "Fiery Plate Gauntlets",
						["recipeID"] = 16655,
						["requireSkill"] = 9788,
					},
					{
						["name"] = "Storm Gauntlets",
						["recipeID"] = 16661,
						["requireSkill"] = 9788,
					},
					{
						["name"] = "Stronghold Gauntlets",
						["recipeID"] = 16741,
						["requireSkill"] = 9788,
					},
					{
						["name"] = "Truesilver Gauntlets",
						["recipeID"] = 9954,
						["requireSkill"] = 9788,
					},
				},
			},
			{
				["name"] = "Chest",
				["categoryID"] = 25,
				["g"] = {
					{
						["name"] = "Dark Iron Plate",
						["recipeID"] = 15296,
						["requireSkill"] = 9788,
					},
					{
						["name"] = "Demon Forged Breastplate",
						["recipeID"] = 16667,
						["requireSkill"] = 9788,
					},
					un(PHASE_THREE, {
						["name"] = "Enchanted Thorium Breastplate",
						["recipeID"] = 16745,
						["requireSkill"] = 9788,
					}),
					{
						["name"] = "Invulnerable Mail",
						["recipeID"] = 16746,
						["requireSkill"] = 9788,
					},
					{
						["name"] = "Truesilver Breastplate",
						["recipeID"] = 9974,
						["requireSkill"] = 9788,
					},
					{
						["name"] = "Wildthorn Mail",
						["recipeID"] = 16650,
						["requireSkill"] = 9788,
					}
				},
			},
			{
				["name"] = "Belts",
				["categoryID"] = 28,
				["g"] = {
					{
						["name"] = "Fiery Chain Girdle",
						["recipeID"] = 20872,
						["requireSkill"] = 9788,
					},
				},
			},
			{
				["name"] = "Legs",
				["categoryID"] = 29,
				["g"] = {
					{
						["name"] = "Dark Iron Leggings",
						["recipeID"] = 20876,
						["requireSkill"] = 9788,
					},
					un(PHASE_THREE, {
						["name"] = "Enchanted Thorium Leggings",
						["recipeID"] = 16744,
						["requireSkill"] = 9788,
					}),
					un(PHASE_FIVE, {
						["name"] = "Titanic Leggings",
						["recipeID"] = 27829,
						["requireSkill"] = 9788,
					}),
				},
			},
			{
				["name"] = "Boots",
				["categoryID"] = 30,
				["g"] = {
					un(PHASE_FOUR, {
						["name"] = "Dark Iron Boots",
						["recipeID"] = 24399,
						["requireSkill"] = 9788,
					}),
				}
			},
		},
	}),
});