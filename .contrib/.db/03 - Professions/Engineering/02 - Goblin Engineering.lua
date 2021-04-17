profession(ENGINEERING, {
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
						["qg"] = 14742,	-- Zap Farflinger
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
					}
				}
			},
			n(QUESTS, {
				q(3644, {	-- Membership Card Renewal
					["qg"] = 8126,	-- Nixx Sprocketspring <Master Goblin Engineer>
					["sourceQuest"] = 3639,	-- Show Your Work
					["description"] = "Requires 200 Engineering to start this quest.",
					["coord"] = { 54.4, 27.2, TANARIS },
					["requireSkill"] = ENGINEERING,
					["maps"] = { TANARIS },
					["cost"] = { { "g", 20000 } },	-- 2g
					["timeline"] = { "removed 4.0.3.2000" },
					["repeatable"] = true,
					["lvl"] = 30,
					["g"] = {
						i(10791),	-- Goblin Engineer Membership Card
					},
				}),
				q(3646, {	-- Membership Card Renewal
					["qg"] = 8738,	-- Vazario Linkgrease <Goblin Engineering Trainer>
					["sourceQuest"] = 3639,	-- Show Your Work
					["description"] = "Requires 200 Engineering to start this quest.",
					["coord"] = { 62.6, 36.2, THE_BARRENS },
					["requireSkill"] = ENGINEERING,
					["maps"] = { THE_BARRENS },
					["cost"] = { { "g", 20000 } },	-- 2g
					["timeline"] = { "removed 4.0.3.2000" },
					["repeatable"] = true,
					["lvl"] = 30,
					["g"] = {
						i(10791),	-- Goblin Engineer Membership Card
					},
				}),
				q(3639, {	-- Show Your Work
					["qg"] = 8126,	-- Nixx Sprocketspring <Master Goblin Engineer>
					["sourceQuest"] = 3638,	-- The Pledge of Secrecy
					["altQuests"] = {
						3641,	-- Show Your Work
						3643,	-- Show Your Work
					},
					["description"] = "Requires 200 Engineering to start this quest.",
					["coord"] = { 54.4, 27.2, TANARIS },
					["requireSkill"] = ENGINEERING,
					["maps"] = { TANARIS },
					["timeline"] = { "removed 4.0.3.2000" },
					["cost"] = {
						{ "i", 4392, 2 },	-- Advanced Target Dummy
						{ "i", 4407, 1 },	-- Accurate Scope
						{ "i", 10559, 6 },	-- Mithril Tube
					},
					["lvl"] = 30,
				}),
				q(3638, {	-- The Pledge of Secrecy
					["qg"] = 8126,	-- Nixx Sprocketspring <Master Goblin Engineer>
					["sourceQuests"] = {
						3526,	-- Goblin Engineering
						3629,	-- Goblin Engineering
						3633,	-- Goblin Engineering
						4181,	-- Goblin Engineering
					},
					["altQuests"] = {
						3640,	-- The Pledge of Secrecy
						3642,	-- The Pledge of Secrecy
					},
					["description"] = "Requires 200 Engineering to start this quest.",
					["coord"] = { 54.4, 27.2, TANARIS },
					["requireSkill"] = ENGINEERING,
					["maps"] = { TANARIS },
					["timeline"] = { "removed 4.0.3.2000" },
					["cost"] = {
						{ "i", 10792, 1 },	-- Nixx's Pledge of Secrecy
					},
					["lvl"] = 30,
				}),
			}),
			n(REWARDS, {
				i(11422, {	-- Goblin Engineer's Renewal Gift
					["description"] = "If you destroy your Goblin Engineer Membership Card, you can renew your membership for 2 Gold and will receive this gift in the mail in about a day.",
					["timeline"] = { "removed 4.0.3.2000" },
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