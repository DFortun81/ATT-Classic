profession(LEATHERWORKING, {
	prof(10658, {	-- Elemental Leatherworking
		["description"] = "These items can only be crafted by Leatherworkers who have completed the associated quest.\n\nNOTE: You may only have one of these specializations active per character. If you wish to finish your collection, you must level several Leatherworkers and complete the opposing specialization(s).",
		["sourceQuests"] = {
			5144,	-- Elemental Leatherworking [Alliance]
			5146,	-- Elemental Leatherworking [Horde]
		},
		["groups"] = {
			{
				["name"] = "Helms",
				["categoryID"] = 49,
				["g"] = {
					{
						["name"] = "Helm of Fire",
						["recipeID"] = 10632,
						["requireSkill"] = 10658,
					},
					{
						["name"] = "Molten Helm",
						["recipeID"] = 20854,
						["requireSkill"] = 10658,
					},
				},
			},
			{
				["name"] = "Shoulders",
				["categoryID"] = 50,
				["g"] = {
					{
						["name"] = "Living Shoulders",
						["recipeID"] = 19061,
						["requireSkill"] = 10658,
					},
					{
						["name"] = "Stormshroud Shoulders",
						["recipeID"] = 19090,
						["requireSkill"] = 10658,
					},
					{
						["name"] = "Volcanic Shoulders",
						["recipeID"] = 19101,
						["requireSkill"] = 10658,
					},
				}
			},
			{
				["name"] = "Chest",
				["categoryID"] = 51,
				["g"] = {
					{
						["name"] = "Living Breastplate",
						["recipeID"] = 19095,
						["requireSkill"] = 10658,
					},
					{
						["name"] = "Stormshroud Armor",
						["recipeID"] = 19079,
						["requireSkill"] = 10658,
					},
					{
						["name"] = "Volcanic Breastplate",
						["recipeID"] = 19076,
						["requireSkill"] = 10658,
					},
				}
			},
			{
				["name"] = "Gloves",
				["categoryID"] = 53,
				["g"] = {
					{
						["name"] = "Gauntlets of the Sea",
						["recipeID"] = 10630,
						["requireSkill"] = 10658,
					},
					{
						["name"] = "Stormshroud Gloves",
						["recipeID"] = 26279,
						["requireSkill"] = 10658,
					},
				},
			},
			{
				["name"] = "Belts",
				["categoryID"] = 54,
				["g"] = {
					un(PHASE_THREE, {
						["name"] = "Molten Belt",
						["recipeID"] = 23710,
						["requireSkill"] = 10658,
					}),
				},
			},
			{
				["name"] = "Pants",
				["categoryID"] = 55,
				["g"] = {
					{
						["name"] = "Living Leggings",
						["recipeID"] = 19078,
						["requireSkill"] = 10658,
					},
					{
						["name"] = "Stormshroud Pants",
						["recipeID"] = 19067,
						["requireSkill"] = 10658,
					},
					{
						["name"] = "Volcanic Leggings",
						["recipeID"] = 19059,
						["requireSkill"] = 10658,
					},
				}
			},
			{
				["name"] = "Cloaks",
				["categoryID"] = 57,
				["g"] = {
					un(PHASE_ONE_DIRE_MAUL, {
						["name"] = "Shifting Cloak",
						["recipeID"] = 22928,
						["requireSkill"] = 10658,
					}),
				}
			},
		},
	}),
});