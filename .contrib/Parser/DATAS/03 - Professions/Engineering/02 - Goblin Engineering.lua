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
				q(3526, {	-- Goblin Engineering
					["description"] = "Requires 200 Engineering to start this quest.",
					["lvl"] = 30,
					["races"] = HORDE_ONLY,
					["requireSkill"] = 202,	-- Engineering
					["qg"] = 4586,	-- Graham Van Talen <Journeyman Engineer>
					["coord"] = { 75.6, 74.6, UNDERCITY },
					["maps"] = { UNDERCITY },
					["altQuests"] = {
						3633,	-- Goblin Engineering
						3635,	-- Gnome Engineering
						3637,	-- Gnome Engineering
					},
					["cost"] = {
						{ "i", 10789, 1 },	-- Manual of Engineering Disciplines
					},
				}),
				q(3629, {	-- Goblin Engineering
					["description"] = "Requires 200 Engineering to start this quest.",
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["requireSkill"] = 202,	-- Engineering
					["qg"] = 5518,	-- Lilliam Sparkspindle <Expert Engineer>
					["coord"] = { 55.0, 8.6, STORMWIND_CITY },
					["maps"] = { STORMWIND_CITY },
					["altQuests"] = {
						3630,	-- Gnome Engineering
						3632,	-- Gnome Engineering
						3634,	-- Gnome Engineering
						4181,	-- Goblin Engineering
					},
					["cost"] = {
						{ "i", 10789, 1 },	-- Manual of Engineering Disciplines
					},
				}),
				q(3633, {	-- Goblin Engineering
					["description"] = "Requires 200 Engineering to start this quest.",
					["lvl"] = 30,
					["races"] = HORDE_ONLY,
					["requireSkill"] = 202,	-- Engineering
					["qg"] = 3494,	-- Tinkerwiz <Journeyman Engineer>
					["coord"] = { 62.6, 36.2, THE_BARRENS },
					["maps"] = { THE_BARRENS },
					["altQuests"] = {
						3526,	-- Goblin Engineering
						3635,	-- Gnome Engineering
						3637,	-- Gnome Engineering
					},
					["cost"] = {
						{ "i", 10789, 1 },	-- Manual of Engineering Disciplines
					},
				}),
				q(4181, {	-- Goblin Engineering
					["description"] = "Requires 200 Engineering to start this quest.",
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["requireSkill"] = 202,	-- Engineering
					["qg"] = 5174,	-- Springspindle Fizzlegear <Artisan Engineer>
					["coord"] = { 68.8, 45.2, IRONFORGE },
					["maps"] = { IRONFORGE },
					["altQuests"] = {
						3629,	-- Goblin Engineering
						3630,	-- Gnome Engineering
						3632,	-- Gnome Engineering
						3634,	-- Gnome Engineering
					},
					["cost"] = {
						{ "i", 10789, 1 },	-- Manual of Engineering Disciplines
					},
				}),
				q(3645, {	-- Membership Card Renewal
					["description"] = "Requires 200 Engineering to start this quest.",
					["repeatable"] = true,
					["lvl"] = 30,
					["requireSkill"] = 202,	-- Engineering
					["qg"] = 8126,	-- Nixx Sprocketspring <Master Goblin Engineer>
					["coord"] = { 54.4, 27.2, TANARIS },
					["maps"] = { TANARIS },
					["sourceQuest"] = 3639, -- Show Your Work
					["altQuests"] = {
						3645,	-- Membership Card Renewal
						3647,	-- Membership Card Renewal
					},
					["g"] = {
						i(10790), -- Gnome Engineer Membership Card
					},
				}),
				q(3639, {	-- Show Your Work
					["description"] = "Requires 200 Engineering to start this quest.",
					["lvl"] = 30,
					["requireSkill"] = 202,	-- Engineering
					["qg"] = 8126,	-- Nixx Sprocketspring <Master Goblin Engineer>
					["coord"] = { 54.4, 27.2, TANARIS },
					["maps"] = { TANARIS },
					["sourceQuest"] = 3638, -- The Pledge of Secrecy
					["altQuests"] = {
						3641,	-- Show Your Work
						3643,	-- Show Your Work
					},
					["cost"] = {
						{ "i", 4392, 2 },	-- Advanced Target Dummy
						{ "i", 4407, 1 },	-- Accurate Scope
						{ "i", 10559, 6 },	-- Mithril Tube
					},
				}),
				q(3638, {	-- The Pledge of Secrecy
					["description"] = "Requires 200 Engineering to start this quest.",
					["lvl"] = 30,
					["requireSkill"] = 202,	-- Engineering
					["qg"] = 8126,	-- Nixx Sprocketspring <Master Goblin Engineer>
					["coord"] = { 54.4, 27.2, TANARIS },
					["maps"] = { TANARIS },
					["sourceQuests"] = {
						3526, -- Goblin Engineering
						3629, -- Goblin Engineering
						3633, -- Goblin Engineering
						4181, -- Goblin Engineering
					},
					["altQuests"] = {
						3640,	-- The Pledge of Secrecy
						3642,	-- The Pledge of Secrecy
					},
					["cost"] = {
						{ "i", 10792, 1 },	-- Nixx's Pledge of Secrecy
					},
				}),
			}),
		},
	});
});