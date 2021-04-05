profession(BLACKSMITHING, {
	prof(9787, {	-- Weaponsmith
		["description"] = "These items can only be crafted by Blacksmiths who have completed the Way of the Weaponsmith quest chain.\n\nNOTE: You may only have one of these specializations active per character. If you wish to finish your collection, you must level several Blacksmiths and complete the opposing specialization(s).",
		["sourceQuests"] = {
			5284,	-- The Way of the Weaponsmith [Alliance]
			5302,	-- The Way of the Weaponsmith [Horde]
		},
		["groups"] = {
			prof(17041, {	-- Master Axesmith
				["description"] = "These items can only be crafted by Master Axesmith specialized Weaponsmiths.",
				["groups"] = {
					{
						["name"] = "Annihilator",
						["recipeID"] = 16991,
						["requireSkill"] = 17041,
					},
					{
						["name"] = "Arcanite Reaper",
						["recipeID"] = 16994,
						["requireSkill"] = 17041,
					},
					{
						["name"] = "Dark Iron Destroyer",
						["recipeID"] = 20897,
						["requireSkill"] = 17041,
					},
					{
						["name"] = "Dawn's Edge",
						["recipeID"] = 16970,
						["requireSkill"] = 17041,
					},
					{
						["name"] = "Nightfall",
						["recipeID"] = 23653,
						["requireSkill"] = 17041,
					},
				},
			}),
			prof(17040, {	-- Master Hammersmith
				["description"] = "These items can only be crafted by Master Hammersmith specialized Weaponsmiths.",
				["groups"] = {
					un(PHASE_THREE, {
						["name"] = "Ebon Hand",
						["recipeID"] = 23650,
						["requireSkill"] = 17040,
					}),
					{
						["name"] = "Enchanted Battlehammer",
						["recipeID"] = 16973,
						["requireSkill"] = 17040,
					},
					{
						["name"] = "Hammer of the Titans",
						["recipeID"] = 16988,
						["requireSkill"] = 17040,
					},
					{
						["name"] = "Masterwork Stormhammer",
						["recipeID"] = 16993,
						["requireSkill"] = 17040,
					},
					un(PHASE_FIVE, {
						["name"] = "Persuader",
						["recipeID"] = 27830,
						["requireSkill"] = 17040,
					}),
					{
						["name"] = "Serenity",
						["recipeID"] = 16983,
						["requireSkill"] = 17040,
					},
				},
			}),
			prof(17039, {	-- Master Swordsmith
				["description"] = "These items can only be crafted by Master Swordsmith specialized Weaponsmiths.",
				["groups"] = {
					{
						["name"] = "Arcanite Champion",
						["recipeID"] = 16990,
						["requireSkill"] = 17039,
					},
					un(PHASE_THREE, {
						["name"] = "Blackguard",
						["recipeID"] = 23652,
						["requireSkill"] = 17039,
					}),
					{
						["name"] = "Blazing Rapier",
						["recipeID"] = 16978,
						["requireSkill"] = 17039,
					},
					{
						["name"] = "Corruption",
						["recipeID"] = 16985,
						["requireSkill"] = 17039,
					},
					{
						["name"] = "Dark Iron Reaver",
						["recipeID"] = 20890,
						["requireSkill"] = 17039,
					},
					{
						["name"] = "Frostguard",
						["recipeID"] = 16992,
						["requireSkill"] = 17039,
					},
					un(PHASE_FIVE, {
						["name"] = "Sageblade",
						["recipeID"] = 27832,
						["requireSkill"] = 17039,
					}),
				},
			}),
			{
				["name"] = "Weapons",
				["description"] = "These can be crafted by any Weaponsmith.",
				["categoryID"] = 32,
				["g"] = {
					un(PHASE_THREE, {
						["name"] = "Black Amnesty",
						["recipeID"] = 23638,
						["requireSkill"] = 9787,
					}),
					un(PHASE_THREE, {
						["name"] = "Blackfury",
						["recipeID"] = 23639,
						["requireSkill"] = 9787,
					}),
					un(NEVER_IMPLEMENTED, {
						["name"] = "Bleakwood Hew",
						["recipeID"] = 16965,
						["requireSkill"] = 9787,
					}),
					{
						["name"] = "Blight",
						["recipeID"] = 10011,
						["requireSkill"] = 9787,
					},
					un(NEVER_IMPLEMENTED, {
						["name"] = "Blood Talon",
						["recipeID"] = 16986,
						["requireSkill"] = 9787,
					}),
					{
						["name"] = "Dark Iron Pulverizer",
						["recipeID"] = 15292,
						["requireSkill"] = 9787,
					},
					{
						["name"] = "Dark Iron Sunderer",
						["recipeID"] = 15294,
						["requireSkill"] = 9787,
					},
					un(NEVER_IMPLEMENTED, {
						["name"] = "Darkspear",
						["recipeID"] = 16987,
						["requireSkill"] = 9787,
					}),
					{
						["name"] = "Heartseeker",
						["recipeID"] = 16995,
						["requireSkill"] = 9787,
					},
					{
						["name"] = "Phantom Blade",
						["recipeID"] = 10007,
						["requireSkill"] = 9787,
					},
					{
						["name"] = "The Shatterer",
						["recipeID"] = 10003,
						["requireSkill"] = 9787,
					},
					{
						["name"] = "Truesilver Champion",
						["recipeID"] = 10015,
						["requireSkill"] = 9787,
					},
				}
			},
		},
	}),
});