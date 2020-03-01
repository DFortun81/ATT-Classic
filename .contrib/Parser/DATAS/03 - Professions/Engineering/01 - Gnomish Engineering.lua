profession(202, {	-- Engineering
	prof(20219, {	-- Gnomish Engineering
		["description"] = "These items can only be crafted by Engineers who have completed the Gnomish Engineering quest chain.\n\nNOTE: You may only have one of these specializations active per character. If you wish to finish your collection, you must level a second Engineer and complete the opposing specialization.",
		["sourceQuests"] = {
			3641,	-- Show Your Work
			3643,	-- Show Your Work
		},
		["groups"] = {
			{
				["name"] = "Devices",
				["categoryID"] = 2,
				["g"] = {
					{
						["name"] = "Gnomish Alarm-o-Bot",
						["recipeID"] = 23096
					},
					{
						["name"] = "Gnomish Battle Chicken",
						["recipeID"] = 12906
					},	
					{
						["name"] = "Gnomish Death Ray",
						["recipeID"] = 12759
					},
					{
						["name"] = "Gnomish Harm Prevention Belt",
						["recipeID"] = 12903
					},
					
					{
						["name"] = "Gnomish Mind Control Cap",
						["recipeID"] = 12907
					},
					{
						["name"] = "Gnomish Net-o-Matic Projector",
						["recipeID"] = 12902
					},
					{
						["name"] = "Gnomish Rocket Boots",
						["recipeID"] = 12905
					},
					{
						["name"] = "Gnomish Shrink Ray",
						["recipeID"] = 12899
					},
					{
						["name"] = "Lil' Smoky",
						["description"] = "While this recipe does not have a requirement for Gnomish Engineering, you cannot learn this recipe without Gnomish Engineering and switching to Gnomish from Goblin is not possible in Classic.",
						["recipeID"] = 15633
					},
					{
						["name"] = "Ultrasafe Transporter - Gadgetzan",
						["recipeID"] = 23489,
						["description"] = "Speak to Jhordy Lapforge in Gadgetzan at 52.17, 27.88 to learn this recipe.",
					},
					{
						["name"] = "World Enlarger",
						["recipeID"] = 23129
					}
				}
			},
			{
				["name"] = "Goggles",
				["categoryID"] = 5,
				["g"] = {
					{
						["name"] = "Gnomish Goggles",
						["recipeID"] = 12897
					}
				}
			},
			{
				["name"] = "Parts",
				["categoryID"] = 7,
				["g"] = {
					{
						["name"] = "Inlaid Mithril Cylinder Plans",
						["recipeID"] = 12895,
						["g"] = {
							i(10713, {	-- Plans: Inlaid Mithril Cylinder
								["description"] = "This recipe is crafted by Gnomish Engineers and given to Blacksmiths to learn so that the Blacksmith can craft the item needed by the Engineer.\n\nIf you are missing this recipe, ask a Gnomish Engineer to craft it for you.",
							}),
						},
					}
				}
			},
			n(QUESTS, {
				i(11423, {	-- Gnome Engineer's Renewal Gift
					["description"] = "If you destroy your Gnomish Engineer Membership Card, you can renew your membership for 2 Gold and will receive this gift in the mail in about a day.",
					["groups"] = {
						i(10603),	-- Schematic: Catseye Ultra Goggles
						i(11827),	-- Schematic: Lil' Smoky
						i(10606),	-- Schematic: Parachute Cloak
					},
				}),
				q(3630, {	-- Gnome Engineering
					["description"] = "Requires 200 Engineering to start this quest.",
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["requireSkill"] = 202,	-- Engineering
					["qg"] = 5518,	-- Lilliam Sparkspindle <Expert Engineer>
					["coord"] = { 55.0, 8.6, STORMWIND_CITY },
					["maps"] = { STORMWIND_CITY },
					["altQuests"] = {
						3629,	-- Goblin Engineering
						3632,	-- Gnome Engineering
						3634,	-- Gnome Engineering
						4181,	-- Goblin Engineering
					},
					["cost"] = {
						{ "i", 10789, 1 },	-- Manual of Engineering Disciplines
					},
				}),
				q(3632, {	-- Gnome Engineering
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
						3634,	-- Gnome Engineering
						4181,	-- Goblin Engineering
					},
					["cost"] = {
						{ "i", 10789, 1 },	-- Manual of Engineering Disciplines
					},
				}),
				q(3634, {	-- Gnome Engineering
					["description"] = "Requires 200 Engineering to start this quest.",
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["requireSkill"] = 202,	-- Engineering
					["qg"] = 3494,	-- Tinkerwiz <Journeyman Engineer>
					["coord"] = { 62.6, 36.2, THE_BARRENS },
					["maps"] = { THE_BARRENS },
					["altQuests"] = {
						3629,	-- Goblin Engineering
						3630,	-- Gnome Engineering
						3632,	-- Gnome Engineering
						4181,	-- Goblin Engineering
					},
					["cost"] = {
						{ "i", 10789, 1 },	-- Manual of Engineering Disciplines
					},
				}),
				q(3635, {	-- Gnome Engineering
					["description"] = "Requires 200 Engineering to start this quest.",
					["lvl"] = 30,
					["races"] = HORDE_ONLY,
					["requireSkill"] = 202,	-- Engineering
					["qg"] = 4586,	-- Graham Van Talen <Journeyman Engineer>
					["coord"] = { 75.6, 74.6, UNDERCITY },
					["maps"] = { UNDERCITY },
					["altQuests"] = {
						3526,	-- Goblin Engineering
						3633,	-- Goblin Engineering
						3637,	-- Gnome Engineering
					},
					["cost"] = {
						{ "i", 10789, 1 },	-- Manual of Engineering Disciplines
					},
				}),
				q(3637, {	-- Gnome Engineering
					["description"] = "Requires 200 Engineering to start this quest.",
					["lvl"] = 30,
					["races"] = HORDE_ONLY,
					["requireSkill"] = 202,	-- Engineering
					["qg"] = 3494,	-- Tinkerwiz <Journeyman Engineer>
					["coord"] = { 62.6, 36.2, THE_BARRENS },
					["maps"] = { THE_BARRENS },
					["altQuests"] = {
						3635,	-- Gnome Engineering
						3526,	-- Goblin Engineering
						3633,	-- Goblin Engineering
					},
					["cost"] = {
						{ "i", 10789, 1 },	-- Manual of Engineering Disciplines
					},
				}),
				q(3645, {	-- Membership Card Renewal
					["description"] = "Requires 200 Engineering to start this quest.",
					["repeatable"] = true,
					["lvl"] = 30,
					["races"] = HORDE_ONLY,
					["requireSkill"] = 202,	-- Engineering
					["qg"] = 7406,	-- Oglethorpe Obnoticus <Master Gnome Engineer>
					["coord"] = { 28.2, 76.2, STRANGLETHORN_VALE },
					["maps"] = { STRANGLETHORN_VALE },
					["sourceQuest"] = 3643,	-- Show Your Work
					["altQuests"] = {
						3647,	-- Membership Card Renewal
					},
					["g"] = {
						i(10790),	-- Gnome Engineer Membership Card
					},
				}),
				q(3647, {	-- Membership Card Renewal
					["description"] = "Requires 200 Engineering to start this quest.",
					["repeatable"] = true,
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["requireSkill"] = 202,	-- Engineering
					["qg"] = 7944,	-- Tinkmaster Overspark <Master Gnome Engineer>
					["coord"] = { 69.8, 50.2, IRONFORGE },
					["maps"] = { IRONFORGE },
					["sourceQuest"] = 3641,	-- Show Your Work
					["altQuests"] = {
						3645,	-- Membership Card Renewal
					},
					["g"] = {
						i(10790),	-- Gnome Engineer Membership Card
					},
				}),
				q(3640, {	-- The Pledge of Secrecy
					["description"] = "Requires 200 Engineering to start this quest.",
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["requireSkill"] = 202,	-- Engineering
					["qg"] = 7944,	-- Tinkmaster Overspark <Master Gnome Engineer>
					["coord"] = { 69.8, 50.2, IRONFORGE },
					["maps"] = { IRONFORGE },
					["sourceQuests"] = {
						3630,	-- Gnome Engineering
						3630,	-- Gnome Engineering
						3630,	-- Gnome Engineering
					},
					["altQuests"] = {
						3638,	-- The Pledge of Secrecy
					},
					["cost"] = {
						{ "i", 11283, 1 },	-- Overspark's Signed Pledge
					},
				}),
				q(3641, {	-- Show Your Work
					["description"] = "Requires 200 Engineering to start this quest.",
					["lvl"] = 30,
					["races"] = ALLIANCE_ONLY,
					["requireSkill"] = 202,	-- Engineering
					["qg"] = 7944,	-- Tinkmaster Overspark <Master Gnome Engineer>
					["coord"] = { 69.8, 50.2, IRONFORGE },
					["maps"] = { IRONFORGE },
					["sourceQuest"] = 3640,	-- The Pledge of Secrecy
					["altQuests"] = {
						3639,	-- Show Your Work
					},
					["cost"] = {
						{ "i", 4392, 2 },	-- Advanced Target Dummy
						{ "i", 4407, 1 },	-- Accurate Scope
						{ "i", 10559, 6 },	-- Mithril Tube
					},
					["g"] = {
						i(10790),	-- Gnome Engineer Membership Card
					},
				}),
				q(3642, {	-- The Pledge of Secrecy
					["description"] = "Requires 200 Engineering to start this quest.",
					["lvl"] = 30,
					["races"] = HORDE_ONLY,
					["requireSkill"] = 202,	-- Engineering
					["qg"] = 7406,	-- Oglethorpe Obnoticus <Master Gnome Engineer>
					["coord"] = { 28.2, 76.2, STRANGLETHORN_VALE },
					["maps"] = { STRANGLETHORN_VALE },
					["sourceQuests"] = {
						3635,	-- Gnome Engineering
						3637,	-- Gnome Engineering
					},
					["altQuests"] = {
						3638,	-- The Pledge of Secrecy
					},
					["cost"] = {
						{ "i", 10794, 1 },	-- Oglethorpe's Signed Pledge
					},
				}),
				q(3643, {	-- Show Your Work
					["description"] = "Requires 200 Engineering to start this quest.",
					["lvl"] = 30,
					["races"] = HORDE_ONLY,
					["requireSkill"] = 202,	-- Engineering
					["qg"] = 7406,	-- Oglethorpe Obnoticus <Master Gnome Engineer>
					["coord"] = { 28.2, 76.2, STRANGLETHORN_VALE },
					["maps"] = { STRANGLETHORN_VALE },
					["sourceQuest"] = 3642,	-- The Pledge of Secrecy
					["altQuests"] = {
						3639,	-- The Pledge of Secrecy
					},
					["cost"] = {
						{ "i", 4392, 2 },	-- Advanced Target Dummy
						{ "i", 4407, 1 },	-- Accurate Scope
						{ "i", 10559, 6 },	-- Mithril Tube
					},
					["g"] = {
						i(10790),	-- Gnome Engineer Membership Card
					},
				}),
			}),
		},
	});
});