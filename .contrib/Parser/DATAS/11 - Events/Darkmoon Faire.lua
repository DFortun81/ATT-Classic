--------------------------------------------
--       E V E N T S    M O D U L E       --
--------------------------------------------
_.WorldEvents = 
{
	faction(909, {	-- Darkmoon Faire
		["icon"] = asset("dmf"),
		["maps"] = { ELWYNN_FOREST, MULGORE },
		["groups"] = {
			n(QUESTS, {
				q(7885,  {	-- Armor Kits
					["qg"] = 14833,  -- Chronos <He Who Never Forgets!>
					["coords"] = {
						{ 43.5, 71.1, ELWYNN_FOREST },
						{ 36.2, 35.2, MULGORE },
					},
					["repeatable"] = true,
					["cost"] = {
						{ "i", 15564, 8 },	-- Rugged Armor Kit
					},
					["lvl"] = 40,
					["g"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(7892,  {	-- Big Black Mace
					["qg"] = 14832,  -- Kerri Hicks <The Strongest Woman Alive!>
					["coords"] = {
						{ 40.5, 69.9, ELWYNN_FOREST },
						{ 37.8, 39.8, MULGORE },
					},
					["repeatable"] = true,
					["cost"] = {
						{ "i", 7945, 1 },	-- Big Black Mace
					},
					["lvl"] = 30,
					["g"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(7881,  {	-- Carnival Boots
					["qg"] = 14833,  -- Chronos <He Who Never Forgets!>
					["coords"] = {
						{ 43.5, 71.1, ELWYNN_FOREST },
						{ 36.2, 35.2, MULGORE },
					},
					["repeatable"] = true,
					["cost"] = {
						{ "i", 2309, 3 },	-- Embossed Leather Boots
					},
					["g"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(7882,  {	-- Carnival Jerkins
					["qg"] = 14833,  -- Chronos <He Who Never Forgets!>
					["coords"] = {
						{ 43.5, 71.1, ELWYNN_FOREST },
						{ 36.2, 35.2, MULGORE },
					},
					["repeatable"] = true,
					["cost"] = {
						{ "i", 2314, 3 },	-- Toughened Leather Armor
					},
					["lvl"] = 10,
					["g"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(7889,  {	-- Coarse Weightstone
					["qg"] = 14832,  -- Kerri Hicks <The Strongest Woman Alive!>
					["coords"] = {
						{ 40.5, 69.9, ELWYNN_FOREST },
						{ 37.8, 39.8, MULGORE },
					},
					["repeatable"] = true,
					["cost"] = {
						{ "i", 3240, 10 },	-- Coarse Weightstone
					},
					["g"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(7894,  {	-- Copper Modulator
					["qg"] = 14841,  -- Rinling
					["coords"] = {
						{ 41.7, 70.7, ELWYNN_FOREST },
						{ 37.1, 37.2, MULGORE },
					},
					["repeatable"] = true,
					["cost"] = {
						{ "i", 4363, 5 },	-- Copper Modulator
					},
					["g"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(7884,  {	-- Crocolisk Boy and the Bearded Murloc
					["qg"] = 14833,  -- Chronos <He Who Never Forgets!>
					["coords"] = {
						{ 43.5, 71.1, ELWYNN_FOREST },
						{ 36.2, 35.2, MULGORE },
					},
					["repeatable"] = true,
					["cost"] = {
						{ "i", 8185, 1 },	-- Turtle Scale Leggings
					},
					["lvl"] = 30,
					["g"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(7907,  {	-- Darkmoon Beast Deck
					["provider"] = { "i", 19228 },  -- Beasts Deck
					["repeatable"] = true,
					["cost"] = {
						{ "i", 19228, 1 },	-- Beasts Deck
					},
					["g"] = {
						i(19288),	-- Darkmoon Card: Blue Dragon
					},
				}),
				q(7929,  {	-- Darkmoon Elementals Deck
					["provider"] = { "i", 19267 },  -- Elementals Deck
					["repeatable"] = true,
					["cost"] = {
						{ "i", 19267, 1 },	-- Elementals Deck
					},
					["g"] = {
						i(19289),	-- Darkmoon Card: Maelstrom
					},
				}),
				q(7927,  {	-- Darkmoon Portals Deck
					["provider"] = { "i", 19277 },  -- Portals Deck
					["repeatable"] = true,
					["cost"] = {
						{ "i", 19277, 1 },	-- Portals Deck
					},
					["g"] = {
						i(19290),	-- Darkmoon Card: Twisting Nether
					},
				}),
				q(7928,  {	-- Darkmoon Warlords Deck
					["provider"] = { "i", 19257 },  -- Warlords Deck
					["repeatable"] = true,
					["cost"] = {
						{ "i", 19257, 1 },	-- Warlords Deck
					},
					["g"] = {
						i(19287),	-- Darkmoon Card: Heroism
					},
				}),
				q(7903,  {	-- Evil Bat Eyes
					["qg"] = 14829,  -- Yebb Neblegear
					["coords"] = {
						{ 40.2, 69.7, ELWYNN_FOREST },
						{ 37.5, 39.6, MULGORE },
					},
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11404, 10 },	-- Evil Bat Eye
					},
					["lvl"] = 40,
					["g"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(8222,  {	-- Glowing Scorpid Blood
					["qg"] = 14829,  -- Yebb Neblegear
					["coords"] = {
						{ 40.2, 69.7, ELWYNN_FOREST },
						{ 37.5, 39.6, MULGORE },
					},
					["repeatable"] = true,
					["cost"] = {
						{ "i", 19933, 10 },	-- Glowing Scorpid Blood
					},
					["lvl"] = 40,
					["g"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(7896,  {	-- Green Fireworks
					["qg"] = 14841,  -- Rinling
					["coords"] = {
						{ 41.7, 70.7, ELWYNN_FOREST },
						{ 37.1, 37.2, MULGORE },
					},
					["repeatable"] = true,
					["cost"] = {
						{ "i", 9313, 36 },	-- Green Firework
					},
					["lvl"] = 20,
					["g"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(7891,  {	-- Green Iron Bracers
					["qg"] = 14832,  -- Kerri Hicks <The Strongest Woman Alive!>
					["coords"] = {
						{ 40.5, 69.9, ELWYNN_FOREST },
						{ 37.8, 39.8, MULGORE },
					},
					["repeatable"] = true,
					["cost"] = {
						{ "i", 3835, 3 },	-- Green Iron Bracers
					},
					["lvl"] = 20,
					["g"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(7890,  {	-- Heavy Grinding Stone
					["qg"] = 14832,  -- Kerri Hicks <The Strongest Woman Alive!>
					["coords"] = {
						{ 40.5, 69.9, ELWYNN_FOREST },
						{ 37.8, 39.8, MULGORE },
					},
					["repeatable"] = true,
					["cost"] = {
						{ "i", 3486, 7 },	-- Heavy Grinding Stone
					},
					["lvl"] = 10,
					["g"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(7897,  {	-- Mechanical Repair Kits
					["qg"] = 14841,  -- Rinling
					["coords"] = {
						{ 41.7, 70.7, ELWYNN_FOREST },
						{ 37.1, 37.2, MULGORE },
					},
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11590, 6 },	-- Mechanical Repair Kit
					},
					["lvl"] = 30,
					["g"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(7941,  {	-- More Armor Kits
					["qg"] = 14833,  -- Chronos <He Who Never Forgets!>
					["coords"] = {
						{ 43.5, 71.1, ELWYNN_FOREST },
						{ 36.2, 35.2, MULGORE },
					},
					["sourceQuest"] = 7885,	-- Armor Kits
					["repeatable"] = true,
					["cost"] = {
						{ "i", 15564, 8 },	-- Rugged Armor Kit
					},
					["lvl"] = 40,
					["g"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(7943,  {	-- More Bat Eyes
					["qg"] = 14829,  -- Yebb Neblegear
					["coords"] = {
						{ 40.2, 69.7, ELWYNN_FOREST },
						{ 37.5, 39.6, MULGORE },
					},
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11404, 10 },	-- Evil Bat Eye
					},
					["lvl"] = 40,
					["g"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(7939,  {	-- More Dense Grinding Stones
					["qg"] = 14832,  -- Kerri Hicks <The Strongest Woman Alive!>
					["sourceQuest"] = 7893,	-- Rituals of Strength
					["coords"] = {
						{ 40.5, 69.9, ELWYNN_FOREST },
						{ 37.8, 39.8, MULGORE },
					},
					["repeatable"] = true,
					["cost"] = {
						{ "i", 12644, 8 },	-- Dense Grinding Stone
					},
					["lvl"] = 40,
					["g"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(8223,  {	-- More Glowing Scorpid Blood
					["qg"] = 14829,  -- Yebb Neblegear
					["sourceQuest"] = 8222,	-- Glowing Scorpid Blood
					["coords"] = {
						{ 40.2, 69.7, ELWYNN_FOREST },
						{ 37.5, 39.6, MULGORE },
					},
					["repeatable"] = true,
					["cost"] = {
						{ "i", 19933, 10 },	-- Glowing Scorpid Blood
					},
					["lvl"] = 40,
					["g"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(7942,  {	-- More Thorium Widgets
					["qg"] = 14841,  -- Rinling
					["sourceQuest"] = 7898,	-- Thorium Widget
					["coords"] = {
						{ 41.7, 70.7, ELWYNN_FOREST },
						{ 37.1, 37.2, MULGORE },
					},
					["repeatable"] = true,
					["cost"] = {
						{ "i", 15994, 6 },	-- Thorium Widget
					},
					["lvl"] = 40,
					["g"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(7893,  {	-- Rituals of Strength
					["qg"] = 14832,  -- Kerri Hicks <The Strongest Woman Alive!>
					["coords"] = {
						{ 40.5, 69.9, ELWYNN_FOREST },
						{ 37.8, 39.8, MULGORE },
					},
					["repeatable"] = true,
					["cost"] = {
						{ "i", 12644, 8 },	-- Dense Grinding Stone
					},
					["lvl"] = 40,
					["g"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(7899,  {	-- Small Furry Paws
					["qg"] = 14829,  -- Yebb Neblegear
					["coords"] = {
						{ 40.2, 69.7, ELWYNN_FOREST },
						{ 37.5, 39.6, MULGORE },
					},
					["repeatable"] = true,
					["cost"] = {
						{ "i", 5134, 5 },	-- Small Furry Paw
					},
					["g"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(7901,  {	-- Soft Bushy Tails
					["qg"] = 14829,  -- Yebb Neblegear
					["coords"] = {
						{ 40.2, 69.7, ELWYNN_FOREST },
						{ 37.5, 39.6, MULGORE },
					},
					["repeatable"] = true,
					["cost"] = {
						{ "i", 4582, 5 },	-- Soft Bushy Tail
					},
					["lvl"] = 20,
					["g"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(7946,  {	-- Spawn of Jubjub
					["qg"] = 14871,  -- Morja
					["description"] = "You need to throw down a Dark Iron Ale mug near her and wait for the jubling to come hopping to it, then she'll offer this quest.",
					["cost"] = {
						{ "i", 11325, 2 },	-- Dark Iron Ale Mug
					},
					["lvl"] = 10,
					["g"] = {
						i(19462, {	-- Unhatched Jubling Egg
							i(19450),	-- A Jubling's Tiny Home
						}),
					},
				}),
				q(7905, {	-- The Darkmoon Faire
					["qg"] = 14842,	-- Melnan Darkstone <Darkmoon Faire Barker>
					["coord"] = { 29.2, 68.4, IRONFORGE },
					["maps"] = { IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["cost"] = {
						{ "i", 19338, 1 },	-- Free Ticket Voucher
					},
					["lvl"] = 6,
					["groups"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(7926, {	-- The Darkmoon Faire
					["qg"] = 14843,	-- Kruban Darkblade
					["coord"] = { 52.2, 66, ORGRIMMAR },
					["maps"] = { ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["cost"] = {
						{ "i", 19338, 1 },	-- Free Ticket Voucher
					},
					["lvl"] = 6,
					["g"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(7883,  {	-- The World's Largest Gnome!
					["qg"] = 14833,  -- Chronos <He Who Never Forgets!>
					["coords"] = {
						{ 43.5, 71.1, ELWYNN_FOREST },
						{ 36.2, 35.2, MULGORE },
					},
					["repeatable"] = true,
					["cost"] = {
						{ "i", 5739, 3 },	-- Barbaric Harness
					},
					["lvl"] = 20,
					["g"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(7898,  {	-- Thorium Widgets
					["qg"] = 14841,  -- Rinling
					["coords"] = {
						{ 41.7, 70.7, ELWYNN_FOREST },
						{ 37.1, 37.2, MULGORE },
					},
					["repeatable"] = true,
					["cost"] = {
						{ "i", 15994, 6 },	-- Thorium Widget
					},
					["lvl"] = 40,
					["g"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(7900,  {	-- Torn Bear Pelts
					["qg"] = 14829,  -- Yebb Neblegear
					["coords"] = {
						{ 40.2, 69.7, ELWYNN_FOREST },
						{ 37.5, 39.6, MULGORE },
					},
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11407, 5 },	-- Torn Bear Pelt
					},
					["lvl"] = 10,
					["g"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(7902,  {	-- Vibrant Plumes
					["qg"] = 14829,  -- Yebb Neblegear
					["coords"] = {
						{ 40.2, 69.7, ELWYNN_FOREST },
						{ 37.5, 39.6, MULGORE },
					},
					["repeatable"] = true,
					["cost"] = {
						{ "i", 5117, 5 },	-- Vibrant Plume
					},
					["lvl"] = 30,
					["g"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(7895,  {	-- Whirring Bronze Gizmo
					["qg"] = 14829,  -- Yebb Neblegear
					["coords"] = {
						{ 40.2, 69.7, ELWYNN_FOREST },
						{ 37.5, 39.6, MULGORE },
					},
					["repeatable"] = true,
					["cost"] = {
						{ "i", 4375, 7 },	-- Whirring Bronze Gizmo
					},
					["lvl"] = 10,
					["g"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(7937,  {	-- Your Fortune Awaits You...
					["provider"] = { "i", 19423 },	-- Sayge's Fortune #23
					["cr"] = 14822,	-- Sayge
					["lvl"] = 10,
					["g"] = {
						i(19425),	-- Mysterious Lockbox
					},
				}),
				q(7938,  {	-- Your Fortune Awaits You...
					["provider"] = { "i", 19424 },	-- Sayge's Fortune #24
					["cr"] = 14822,	-- Sayge
					["lvl"] = 10,
					["g"] = {
						i(19425),	-- Mysterious Lockbox
					},
				}),
				q(7944,  {	-- Your Fortune Awaits You...
					["provider"] = { "i", 19443 },	-- Sayge's Fortune #25
					["cr"] = 14822,	-- Sayge
					["lvl"] = 10,
					["g"] = {
						i(19425),	-- Mysterious Lockbox
					},
				}),
				q(7945,  {	-- Your Fortune Awaits You...
					["provider"] = { "i", 19452 },	-- Sayge's Fortune #27
					["cr"] = 14822,	-- Sayge
					["lvl"] = 10,
					["g"] = {
						i(19425),	-- Mysterious Lockbox
					},
				}),
			}),
			n(REWARDS, {
				i(19422, {	-- Darkmoon Faire Fortune
					["description"] = "This is a reward from completing the Sayge's Fortune. The answers you select to get your buff do not affect the contents of this container.",
					["cr"] = 14822,	-- Sayge
					["groups"] = {
						i(19229),	-- Sayge's Fortune #1
						i(19256),	-- Sayge's Fortune #2
						i(19238),	-- Sayge's Fortune #3
						i(19239),	-- Sayge's Fortune #4
						i(19240),	-- Sayge's Fortune #5
						i(19241),	-- Sayge's Fortune #6
						i(19242),	-- Sayge's Fortune #7
						i(19243),	-- Sayge's Fortune #8
						i(19244),	-- Sayge's Fortune #9
						i(19245),	-- Sayge's Fortune #10
						i(19246),	-- Sayge's Fortune #11
						i(19247),	-- Sayge's Fortune #12
						i(19248),	-- Sayge's Fortune #13
						i(19249),	-- Sayge's Fortune #14
						i(19250),	-- Sayge's Fortune #15
						i(19251),	-- Sayge's Fortune #16
						i(19253),	-- Sayge's Fortune #17
						i(19252),	-- Sayge's Fortune #18
						i(19237),	-- Sayge's Fortune #19
						i(19266),	-- Sayge's Fortune #20
						i(19254),	-- Sayge's Fortune #21
						i(19255),	-- Sayge's Fortune #22
						i(19423, {	-- Sayge's Fortune #23
							["questID"] = 7937,	-- Your Fortune Awaits You...
						}),
						i(19424, {	-- Sayge's Fortune #24
							["questID"] = 7938,	-- Your Fortune Awaits You...
						}),
						i(19443, {	-- Sayge's Fortune #25
							["questID"] = 7944,	-- Your Fortune Awaits You...
						}),
						i(19451),	-- Sayge's Fortune #26
						i(19452, {	-- Sayge's Fortune #27
							["questID"] = 7945,	-- Your Fortune Awaits You...
						}),
						i(19453),	-- Sayge's Fortune #28
						i(19454),	-- Sayge's Fortune #29
					},
				}),
			}),
			n(VENDORS, {
				n(14860, {	-- Flik
					["coords"] = {
						{ 36.4, 36.0, MULGORE },
						{ 37.6, 39.6, MULGORE },
						{ 42.8, 66.6, ELWYNN_FOREST },
						{ 41.4, 69.8, ELWYNN_FOREST },
						{ 43.6, 71.0, ELWYNN_FOREST },
					},
					["groups"] = {
						i(18662),	-- Heavy Leather Ball
						i(11026),	-- Tree Frog Box
						i(11027),	-- Wood Frog Box
					},
				}),
				n(14828, {	-- Gelvas Grimegate <Darkmoon Faire Ticket Redemption>
					["coords"] = {
						{ 37.3, 37.7, MULGORE },
						{ 41.6, 68.8, ELWYNN_FOREST },
					},
					["groups"] = {
						i(19295),	-- Darkmoon Flower
						i(19298),	-- Minor Darkmoon Prize
						i(19292),	-- Last Month's Mutton
						i(19297),	-- Lesser Darkmoon Prize
						i(19296),	-- Greater Darkmoon Prize
						i(19291),	-- Darkmoon Storage Box
						i(19293),	-- Last Year's Mutton
						i(19491),	-- Amulet of the Darkmoon
						i(19426),	-- Orb of the Darkmoon
					},
				}),
				n(14846, {	-- Lhara <Darkmoon Faire Exotic Goods>
					["coords"] = {
						{ 36.4, 38.0, MULGORE },
						{ 41.2, 69.8, ELWYNN_FOREST },
					},
					["groups"] = {
						i(12251),	-- Big Stick
						i(12248),	-- Daring Dirk
						i(19303),	-- Darkmoon Necklace
						i(19302),	-- Darkmoon Ring
						i(11305),	-- Dense Shortbow
						i(11303),	-- Fine Shortbow
						i(11306),	-- Sturdy Recurve
						i(11308),	-- Sylvan Shortbow
					},
				}),
			}),
		},
	}),
};