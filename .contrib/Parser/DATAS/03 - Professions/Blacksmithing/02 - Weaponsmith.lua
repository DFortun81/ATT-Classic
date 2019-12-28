profession(164, {	-- Blacksmithing
	prof(9787, {	-- Weaponsmith
		["description"] = "These items can only be crafted by Blacksmiths who have completed the Way of the Weaponsmith quest chain.\n\nNOTE: You may only have one of these specializations active per character. If you wish to finish your collection, you must level several Blacksmiths and complete the opposing specialization(s).",
		["sourceQuests"] = {
			5284,	-- The Way of the Weaponsmith [Alliance]
			5302,	-- The Way of the Weaponsmith [Horde]
		},
		["groups"] = {
			{
				["name"] = "Weapons",
				["categoryID"] = 32,
				["g"] = {
					{
						["name"] = "Blight",
						["recipeID"] = 10011,
						["requireSkill"] = 9787
					},
					{
						["name"] = "Phantom Blade",
						["recipeID"] = 10007,
						["requireSkill"] = 9787
					},
					{
						["name"] = "The Shatterer",
						["recipeID"] = 10003,
						["requireSkill"] = 9787
					},
					{
						["name"] = "Truesilver Champion",
						["recipeID"] = 10015,
						["requireSkill"] = 9787
					},
				}
			},
		},
	}),
});