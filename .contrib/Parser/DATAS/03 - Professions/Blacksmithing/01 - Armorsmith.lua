profession(164, {	-- Blacksmithing
	prof(9788, {	-- Armorsmith
		["description"] = "These items can only be crafted by Blacksmiths who have completed the Art of the Armorsmith quest chain.\n\nNOTE: You may only have one of these specializations active per character. If you wish to finish your collection, you must level several Blacksmiths and complete the opposing specialization(s).",
		["sourceQuests"] = {
			5283,	-- The Art of the Armorsmith [Alliance]
			5301,	-- The Art of the Armorsmith [Horde]
		},
		["groups"] = {
			{
				["name"] = "Chest",
				["categoryID"] = 25,
				["g"] = {
					{
						["name"] = "Truesilver Breastplate",
						["recipeID"] = 9974,
						["requireSkill"] = 9788,
					},
				},
			},
			{
				["name"] = "Gauntlets",
				["categoryID"] = 26,
				["g"] = {
					{
						["name"] = "Truesilver Gauntlets",
						["recipeID"] = 9954,
						["requireSkill"] = 9788,
					},
				},
			},
		},
	}),
});