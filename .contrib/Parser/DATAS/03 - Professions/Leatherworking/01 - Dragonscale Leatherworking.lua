profession(LEATHERWORKING, {
	prof(10656, {	-- Dragonscale Leatherworking
		["description"] = "These items can only be crafted by Leatherworkers who have completed the associated quest.\n\nNOTE: You may only have one of these specializations active per character. If you wish to finish your collection, you must level several Leatherworkers and complete the opposing specialization(s).",
		["sourceQuests"] = {
			5141,	-- Dragonscale Leatherworking [Alliance]
			5145,	-- Dragonscale Leatherworking [Horde]
		},
		["groups"] = {
			{
				["name"] = "Shoulders",
				["categoryID"] = 50,
				["g"] = {
					{
						["name"] = "Black Dragonscale Shoulders",
						["recipeID"] = 19094,
						["requireSkill"] = 10656,
					},
					{
						["name"] = "Blue Dragonscale Shoulders",
						["recipeID"] = 19089,
						["requireSkill"] = 10656,
					},
				}
			},
			{
				["name"] = "Chest",
				["categoryID"] = 51,
				["g"] = {
					{
						["name"] = "Black Dragonscale Breastplate",
						["recipeID"] = 19085,
						["requireSkill"] = 10656,
					},
					{
						["name"] = "Blue Dragonscale Breastplate",
						["recipeID"] = 19077,
						["requireSkill"] = 10656,
					},
					{
						["name"] = "Dragonscale Breastplate",
						["recipeID"] = 10650,
						["requireSkill"] = 10656,
					},
					{
						["name"] = "Dreamscale Breastplate",
						["recipeID"] = 24703,
						["requireSkill"] = 10656,
						["u"] = 3, 	-- Not Available Yet!
					},
					{
						["name"] = "Green Dragonscale Breastplate",
						["recipeID"] = 19050,
						["requireSkill"] = 10656,
					},
					{
						["name"] = "Red Dragonscale Breastplate",
						["recipeID"] = 19054,
						["requireSkill"] = 10656,
					},
				}
			},
			{
				["name"] = "Gloves",
				["categoryID"] = 53,
				["g"] = {
					{
						["name"] = "Chromatic Gauntlets",
						["recipeID"] = 23708,
						["requireSkill"] = 10656,
					},
					{
						["name"] = "Dragonscale Gauntlets",
						["recipeID"] = 10619,
						["requireSkill"] = 10656,
					},
					{
						["name"] = "Green Dragonscale Gauntlets",
						["recipeID"] = 24655,
						["requireSkill"] = 10656,
					},
				}
			},
			{
				["name"] = "Pants",
				["categoryID"] = 55,
				["g"] = {
					{
						["name"] = "Black Dragonscale Leggings",
						["recipeID"] = 19107,
						["requireSkill"] = 10656,
					},
					{
						["name"] = "Blue Dragonscale Leggings",
						["recipeID"] = 24654,
						["requireSkill"] = 10656,
					},
					{
						["name"] = "Green Dragonscale Leggings",
						["recipeID"] = 19060,
						["requireSkill"] = 10656,
					},
				}
			},
			{
				["name"] = "Boots",
				["categoryID"] = 56,
				["g"] = {
					{
						["name"] = "Black Dragonscale Boots",
						["recipeID"] = 20855,
						["requireSkill"] = 10656,
					},
				}
			},
			{
				["name"] = "Cloaks",
				["categoryID"] = 57,
				["g"] = {
					{
						["name"] = "Chromatic Cloak",
						["recipeID"] = 22926,
						["requireSkill"] = 10656,
					},
				}
			},
		},
	}),
});