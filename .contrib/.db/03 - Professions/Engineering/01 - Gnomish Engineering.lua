profession(ENGINEERING, {
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
					}
				}
			},
			n(QUESTS, {
				q(3645, {	-- Membership Card Renewal
					["qg"] = 7406,	-- Oglethorpe Obnoticus <Master Gnome Engineer>
					["sourceQuest"] = 3643,	-- Show Your Work
					["description"] = "Requires 200 Engineering to start this quest.",
					["coord"] = { 28.2, 76.2, STRANGLETHORN_VALE },
					["requireSkill"] = ENGINEERING,
					["maps"] = { STRANGLETHORN_VALE },
					["cost"] = { { "g", 20000 } },	-- 2g
					["timeline"] = { "removed 4.0.3.2000" },
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 30,
					["g"] = {
						i(10790),	-- Gnome Engineer Membership Card
					},
				}),
				q(3647, {	-- Membership Card Renewal
					["qg"] = 7944,	-- Tinkmaster Overspark <Master Gnome Engineer>
					["sourceQuest"] = 3641,	-- Show Your Work
					["description"] = "Requires 200 Engineering to start this quest.",
					["coord"] = { 69.8, 50.2, IRONFORGE },
					["requireSkill"] = ENGINEERING,
					["maps"] = { IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = { { "g", 20000 } },	-- 2g
					["timeline"] = { "removed 4.0.3.2000" },
					["repeatable"] = true,
					["lvl"] = 30,
					["g"] = {
						i(10790),	-- Gnome Engineer Membership Card
					},
				}),
			}),
			n(REWARDS, {
				i(11423, {	-- Gnome Engineer's Renewal Gift
					["description"] = "If you destroy your Gnomish Engineer Membership Card, you can renew your membership for 2 Gold and will receive this gift in the mail in about a day.",
					["timeline"] = { "removed 4.0.3.2000" },
					["groups"] = {
						i(10603),	-- Schematic: Catseye Ultra Goggles
						i(11827),	-- Schematic: Lil' Smoky
						i(10606),	-- Schematic: Parachute Cloak
					},
				}),
			}),
		},
	});
});