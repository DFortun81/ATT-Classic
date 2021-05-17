--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------
-- Note: This is up here to prevent the unobtainable flag from getting put on the following items:
local HEAVY_LEATHER_BALL = i(18662);
local DENSE_SHORTBOW = i(11305);
local DARING_DIRK = i(12248);
local BIG_STICK = i(12251);
local SLYVAN_SHORTBOW = i(11308);
local STURDY_RECURVE = i(11306);
local FINE_SHORTBOW = i(11303);
local TIER_ONE_MAX_REPUTATION = { 909, NEUTRAL + 500 };	-- Darkmoon Faire, must be less than 500 over Neutral
local TIER_TWO_MAX_REPUTATION = { 909, NEUTRAL + 1100 };	-- Darkmoon Faire, must be less than 1100 over Neutral
local TIER_THREE_MAX_REPUTATION = { 909, NEUTRAL + 1700 };	-- Darkmoon Faire, must be less than 1700 over Neutral
local TIER_FOUR_MAX_REPUTATION = { 909, NEUTRAL + 2500 };	-- Darkmoon Faire, must be less than 2500 over Neutral
local TIER_FIVE_MAX_REPUTATION = { 909, FRIENDLY + 2000 };	-- Darkmoon Faire, must be less than 3000 over Friendly
local DECK_MAX_REPUTATION = { 909, EXALTED + 999 };	-- Darkmoon Faire, must be less than Exalted 999/1000.

-- This is what every online guide ever says, but they're incorrect.
-- The "More" quests appear to be infinitely repeatable, with 0 reputation gains.
-- local TIER_FIVE_MAX_REPUTATION = { 909, HONORED - 1 };	-- Darkmoon Faire, must be less than Honored

_.Holidays = bubbleDown({ ["u"] = DARKMOON_FAIRE },
{
	faction(909, {	-- Darkmoon Faire
		["icon"] = asset("dmf"),
		["maps"] = { ELWYNN_FOREST, MULGORE },
		["groups"] = {
			n(QUESTS, {
				q(7930, {	-- 5 Tickets - Darkmoon Flower
					["qg"] = 14828,  -- Gelvas Grimegate <Darkmoon Faire Ticket Redemption>
					["coords"] = {
						{ 37.3, 37.7, MULGORE },
						{ 41.6, 68.8, ELWYNN_FOREST },
					},
					["repeatable"] = true,
					["cost"] = {
						{ "i", 19182, 5 },	-- Darkmoon Faire Prize Ticket
					},
					["lvl"] = 6,
					["g"] = {
						i(19295),	-- Darkmoon Flower
					},
				}),
				q(7931, {	-- 5 Tickets - Minor Darkmoon Prize
					["qg"] = 14828,  -- Gelvas Grimegate <Darkmoon Faire Ticket Redemption>
					["coords"] = {
						{ 37.3, 37.7, MULGORE },
						{ 41.6, 68.8, ELWYNN_FOREST },
					},
					["repeatable"] = true,
					["cost"] = {
						{ "i", 19182, 5 },	-- Darkmoon Faire Prize Ticket
					},
					["lvl"] = 15,
					["g"] = {
						i(19298),	-- Minor Darkmoon Prize
					},
				}),
				q(7935, {	-- 10 Tickets - Last Month's Mutton
					["qg"] = 14828,  -- Gelvas Grimegate <Darkmoon Faire Ticket Redemption>
					["coords"] = {
						{ 37.3, 37.7, MULGORE },
						{ 41.6, 68.8, ELWYNN_FOREST },
					},
					["repeatable"] = true,
					["cost"] = {
						{ "i", 19182, 10 },	-- Darkmoon Faire Prize Ticket
					},
					["g"] = {
						i(19292),	-- Last Month's Mutton
					},
				}),
				q(7932, {	-- 12 Tickets - Lesser Darkmoon Prize
					["qg"] = 14828,  -- Gelvas Grimegate <Darkmoon Faire Ticket Redemption>
					["coords"] = {
						{ 37.3, 37.7, MULGORE },
						{ 41.6, 68.8, ELWYNN_FOREST },
					},
					["repeatable"] = true,
					["cost"] = {
						{ "i", 19182, 12 },	-- Darkmoon Faire Prize Ticket
					},
					["g"] = {
						i(19297),	-- Lesser Darkmoon Prize
					},
				}),
				q(7933, {	-- 40 Tickets - Greater Darkmoon Prize
					["qg"] = 14828,  -- Gelvas Grimegate <Darkmoon Faire Ticket Redemption>
					["coords"] = {
						{ 37.3, 37.7, MULGORE },
						{ 41.6, 68.8, ELWYNN_FOREST },
					},
					["repeatable"] = true,
					["cost"] = {
						{ "i", 19182, 40 },	-- Darkmoon Faire Prize Ticket
					},
					["g"] = {
						i(19296),	-- Greater Darkmoon Prize
					},
				}),
				q(7934, {	-- 50 Tickets - Darkmoon Storage Box
					["qg"] = 14828,  -- Gelvas Grimegate <Darkmoon Faire Ticket Redemption>
					["coords"] = {
						{ 37.3, 37.7, MULGORE },
						{ 41.6, 68.8, ELWYNN_FOREST },
					},
					["repeatable"] = true,
					["cost"] = {
						{ "i", 19182, 50 },	-- Darkmoon Faire Prize Ticket
					},
					["g"] = {
						i(19291),	-- Darkmoon Storage Box
					},
				}),
				q(7936, {	-- 50 Tickets - Last Year's Mutton
					["qg"] = 14828,  -- Gelvas Grimegate <Darkmoon Faire Ticket Redemption>
					["coords"] = {
						{ 37.3, 37.7, MULGORE },
						{ 41.6, 68.8, ELWYNN_FOREST },
					},
					["repeatable"] = true,
					["cost"] = {
						{ "i", 19182, 50 },	-- Darkmoon Faire Prize Ticket
					},
					["g"] = {
						i(19293),	-- Last Year's Mutton
					},
				}),
				q(7981, {	-- 1200 Tickets - Amulet of the Darkmoon
					["qg"] = 14828,  -- Gelvas Grimegate <Darkmoon Faire Ticket Redemption>
					["coords"] = {
						{ 37.3, 37.7, MULGORE },
						{ 41.6, 68.8, ELWYNN_FOREST },
					},
					["repeatable"] = true,
					["cost"] = {
						{ "i", 19182, 1200 },	-- Darkmoon Faire Prize Ticket
					},
					["g"] = {
						i(19491),	-- Amulet of the Darkmoon
					},
				}),
				q(7940, {	-- 1200 Tickets - Orb of the Darkmoon
					["qg"] = 14828,  -- Gelvas Grimegate <Darkmoon Faire Ticket Redemption>
					["coords"] = {
						{ 37.3, 37.7, MULGORE },
						{ 41.6, 68.8, ELWYNN_FOREST },
					},
					["repeatable"] = true,
					["cost"] = {
						{ "i", 19182, 1200 },	-- Darkmoon Faire Prize Ticket
					},
					["g"] = {
						i(19426),	-- Orb of the Darkmoon
					},
				}),
				q(7885,  {	-- Armor Kits [Tier 5]
					["qg"] = 14833,  -- Chronos <He Who Never Forgets!>
					["coords"] = {
						{ 43.5, 71.1, ELWYNN_FOREST },
						{ 36.2, 35.2, MULGORE },
					},
					["maxReputation"] = TIER_FIVE_MAX_REPUTATION,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 15564, 8 },	-- Rugged Armor Kit
					},
					["lvl"] = 40,
					["g"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(7892,  {	-- Big Black Mace [Tier 4]
					["qg"] = 14832,  -- Kerri Hicks <The Strongest Woman Alive!>
					["coords"] = {
						{ 40.5, 69.9, ELWYNN_FOREST },
						{ 37.8, 39.8, MULGORE },
					},
					["maxReputation"] = TIER_FOUR_MAX_REPUTATION,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 7945, 1 },	-- Big Black Mace
					},
					["lvl"] = 30,
					["g"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(7881,  {	-- Carnival Boots [Tier 1]
					["qg"] = 14833,  -- Chronos <He Who Never Forgets!>
					["coords"] = {
						{ 43.5, 71.1, ELWYNN_FOREST },
						{ 36.2, 35.2, MULGORE },
					},
					["maxReputation"] = TIER_ONE_MAX_REPUTATION,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 2309, 3 },	-- Embossed Leather Boots
					},
					["g"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(7882,  {	-- Carnival Jerkins [Tier 2]
					["qg"] = 14833,  -- Chronos <He Who Never Forgets!>
					["coords"] = {
						{ 43.5, 71.1, ELWYNN_FOREST },
						{ 36.2, 35.2, MULGORE },
					},
					["maxReputation"] = TIER_TWO_MAX_REPUTATION,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 2314, 3 },	-- Toughened Leather Armor
					},
					["lvl"] = 10,
					["g"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(7889,  {	-- Coarse Weightstone [Tier 1]
					["qg"] = 14832,  -- Kerri Hicks <The Strongest Woman Alive!>
					["coords"] = {
						{ 40.5, 69.9, ELWYNN_FOREST },
						{ 37.8, 39.8, MULGORE },
					},
					["maxReputation"] = TIER_ONE_MAX_REPUTATION,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 3240, 10 },	-- Coarse Weightstone
					},
					["g"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(7894,  {	-- Copper Modulator [Tier 1]
					["qg"] = 14841,  -- Rinling
					["coords"] = {
						{ 41.7, 70.7, ELWYNN_FOREST },
						{ 37.1, 37.2, MULGORE },
					},
					["maxReputation"] = TIER_ONE_MAX_REPUTATION,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 4363, 5 },	-- Copper Modulator
					},
					["g"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(7884,  {	-- Crocolisk Boy and the Bearded Murloc [Tier 4]
					["qg"] = 14833,  -- Chronos <He Who Never Forgets!>
					["coords"] = {
						{ 43.5, 71.1, ELWYNN_FOREST },
						{ 36.2, 35.2, MULGORE },
					},
					["maxReputation"] = TIER_FOUR_MAX_REPUTATION,
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
					["maxReputation"] = DECK_MAX_REPUTATION,
					["repeatable"] = true,
					["g"] = {
						i(19288),	-- Darkmoon Card: Blue Dragon
					},
				}),
				q(10938,  {	-- Darkmoon Blessings Deck
					["provider"] = { "i", 31890 },  -- Blessings Deck
					["maxReputation"] = DECK_MAX_REPUTATION,
					["repeatable"] = true,
					["u"] = TBC_PHASE_ONE,
					["g"] = {
						i(31856),	-- Darkmoon Card: Crusade
					},
				}),
				q(7929,  {	-- Darkmoon Elementals Deck
					["provider"] = { "i", 19267 },  -- Elementals Deck
					["maxReputation"] = DECK_MAX_REPUTATION,
					["repeatable"] = true,
					["g"] = {
						i(19289),	-- Darkmoon Card: Maelstrom
					},
				}),
				q(10940,  {	-- Darkmoon Furies Deck
					["provider"] = { "i", 31907 },  -- Furies Deck
					["maxReputation"] = DECK_MAX_REPUTATION,
					["repeatable"] = true,
					["u"] = TBC_PHASE_ONE,
					["g"] = {
						i(31858),	-- Darkmoon Card: Vengeance
					},
				}),
				q(10941,  {	-- Darkmoon Lunacy Deck
					["provider"] = { "i", 31914 },  -- Lunacy Deck
					["maxReputation"] = DECK_MAX_REPUTATION,
					["repeatable"] = true,
					["u"] = TBC_PHASE_ONE,
					["g"] = {
						i(31859),	-- Darkmoon Card: Madness
					},
				}),
				q(7927,  {	-- Darkmoon Portals Deck
					["provider"] = { "i", 19277 },  -- Portals Deck
					["maxReputation"] = DECK_MAX_REPUTATION,
					["repeatable"] = true,
					["g"] = {
						i(19290),	-- Darkmoon Card: Twisting Nether
					},
				}),
				q(10939,  {	-- Darkmoon Storms Deck
					["provider"] = { "i", 31891 },  -- Storms Deck
					["maxReputation"] = DECK_MAX_REPUTATION,
					["repeatable"] = true,
					["u"] = TBC_PHASE_ONE,
					["g"] = {
						i(31857),	-- Darkmoon Card: Wrath
					},
				}),
				q(7928,  {	-- Darkmoon Warlords Deck
					["provider"] = { "i", 19257 },  -- Warlords Deck
					["maxReputation"] = DECK_MAX_REPUTATION,
					["repeatable"] = true,
					["g"] = {
						i(19287),	-- Darkmoon Card: Heroism
					},
				}),
				q(7903,  {	-- Evil Bat Eyes [Tier 5]
					["qg"] = 14829,  -- Yebb Neblegear
					["coords"] = {
						{ 40.2, 69.7, ELWYNN_FOREST },
						{ 37.5, 39.6, MULGORE },
					},
					["maxReputation"] = TIER_FIVE_MAX_REPUTATION,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11404, 10 },	-- Evil Bat Eye
					},
					["lvl"] = 40,
					["g"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(8222,  {	-- Glowing Scorpid Blood [Tier 5]
					["qg"] = 14829,  -- Yebb Neblegear
					["coords"] = {
						{ 40.2, 69.7, ELWYNN_FOREST },
						{ 37.5, 39.6, MULGORE },
					},
					["maxReputation"] = TIER_FIVE_MAX_REPUTATION,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 19933, 10 },	-- Glowing Scorpid Blood
					},
					["lvl"] = 40,
					["g"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(7896,  {	-- Green Fireworks [Tier 3]
					["qg"] = 14841,  -- Rinling
					["coords"] = {
						{ 41.7, 70.7, ELWYNN_FOREST },
						{ 37.1, 37.2, MULGORE },
					},
					["maxReputation"] = TIER_THREE_MAX_REPUTATION,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 9313, 36 },	-- Green Firework
					},
					["lvl"] = 20,
					["g"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(7891,  {	-- Green Iron Bracers [Tier 3]
					["qg"] = 14832,  -- Kerri Hicks <The Strongest Woman Alive!>
					["coords"] = {
						{ 40.5, 69.9, ELWYNN_FOREST },
						{ 37.8, 39.8, MULGORE },
					},
					["maxReputation"] = TIER_THREE_MAX_REPUTATION,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 3835, 3 },	-- Green Iron Bracers
					},
					["lvl"] = 20,
					["g"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(7890,  {	-- Heavy Grinding Stone [Tier 2]
					["qg"] = 14832,  -- Kerri Hicks <The Strongest Woman Alive!>
					["coords"] = {
						{ 40.5, 69.9, ELWYNN_FOREST },
						{ 37.8, 39.8, MULGORE },
					},
					["maxReputation"] = TIER_TWO_MAX_REPUTATION,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 3486, 7 },	-- Heavy Grinding Stone
					},
					["lvl"] = 10,
					["g"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(7897,  {	-- Mechanical Repair Kits [Tier 4]
					["qg"] = 14841,  -- Rinling
					["coords"] = {
						{ 41.7, 70.7, ELWYNN_FOREST },
						{ 37.1, 37.2, MULGORE },
					},
					["maxReputation"] = TIER_FOUR_MAX_REPUTATION,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11590, 6 },	-- Mechanical Repair Kit
					},
					["lvl"] = 30,
					["g"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(7941,  {	-- More Armor Kits [Tier 5] (Not Really)
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
				q(7943,  {	-- More Bat Eyes [Tier 5] (Not Really)
					["qg"] = 14829,  -- Yebb Neblegear
					["sourceQuest"] = 7903,	-- Evil Bat Eyes
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
				q(7939,  {	-- More Dense Grinding Stones [Tier 5] (Not Really)
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
				q(8223,  {	-- More Glowing Scorpid Blood [Tier 5] (Not Really)
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
				q(7942,  {	-- More Thorium Widgets [Tier 5] (Not Really)
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
				q(7893,  {	-- Rituals of Strength [Tier 5]
					["qg"] = 14832,  -- Kerri Hicks <The Strongest Woman Alive!>
					["coords"] = {
						{ 40.5, 69.9, ELWYNN_FOREST },
						{ 37.8, 39.8, MULGORE },
					},
					["maxReputation"] = TIER_FIVE_MAX_REPUTATION,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 12644, 8 },	-- Dense Grinding Stone
					},
					["lvl"] = 40,
					["g"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(7899,  {	-- Small Furry Paws [Tier 1]
					["qg"] = 14829,  -- Yebb Neblegear
					["coords"] = {
						{ 40.2, 69.7, ELWYNN_FOREST },
						{ 37.5, 39.6, MULGORE },
					},
					["maxReputation"] = TIER_ONE_MAX_REPUTATION,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 5134, 5 },	-- Small Furry Paw
					},
					["g"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(7901,  {	-- Soft Bushy Tails [Tier 3]
					["qg"] = 14829,  -- Yebb Neblegear
					["coords"] = {
						{ 40.2, 69.7, ELWYNN_FOREST },
						{ 37.5, 39.6, MULGORE },
					},
					["maxReputation"] = TIER_THREE_MAX_REPUTATION,
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
					["description"] = "You need to throw down a Dark Iron Ale mug near her (hence why you need 2 of them) and wait for the jubling to come hopping to it, then she'll offer this quest.",
					["cost"] = {
						{ "i", 11325, 2 },	-- Dark Iron Ale Mug
					},
					["isMonthly"] = true,
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
				q(7883,  {	-- The World's Largest Gnome! [Tier 3]
					["qg"] = 14833,  -- Chronos <He Who Never Forgets!>
					["coords"] = {
						{ 43.5, 71.1, ELWYNN_FOREST },
						{ 36.2, 35.2, MULGORE },
					},
					["maxReputation"] = TIER_THREE_MAX_REPUTATION,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 5739, 3 },	-- Barbaric Harness
					},
					["lvl"] = 20,
					["g"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(7898,  {	-- Thorium Widgets [Tier 5]
					["qg"] = 14841,  -- Rinling
					["coords"] = {
						{ 41.7, 70.7, ELWYNN_FOREST },
						{ 37.1, 37.2, MULGORE },
					},
					["maxReputation"] = TIER_FIVE_MAX_REPUTATION,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 15994, 6 },	-- Thorium Widget
					},
					["lvl"] = 40,
					["g"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(7900,  {	-- Torn Bear Pelts [Tier 2]
					["qg"] = 14829,  -- Yebb Neblegear
					["coords"] = {
						{ 40.2, 69.7, ELWYNN_FOREST },
						{ 37.5, 39.6, MULGORE },
					},
					["maxReputation"] = TIER_TWO_MAX_REPUTATION,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11407, 5 },	-- Torn Bear Pelt
					},
					["lvl"] = 10,
					["g"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(7902,  {	-- Vibrant Plumes [Tier 4]
					["qg"] = 14829,  -- Yebb Neblegear
					["coords"] = {
						{ 40.2, 69.7, ELWYNN_FOREST },
						{ 37.5, 39.6, MULGORE },
					},
					["maxReputation"] = TIER_FOUR_MAX_REPUTATION,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 5117, 5 },	-- Vibrant Plume
					},
					["lvl"] = 30,
					["g"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(7895,  {	-- Whirring Bronze Gizmo [Tier 2]
					["qg"] = 14829,  -- Yebb Neblegear
					["coords"] = {
						{ 40.2, 69.7, ELWYNN_FOREST },
						{ 37.5, 39.6, MULGORE },
					},
					["maxReputation"] = TIER_TWO_MAX_REPUTATION,
					["repeatable"] = true,
					["cost"] = {
						{ "i", 4375, 7 },	-- Whirring Bronze Gizmo
					},
					["lvl"] = 10,
					["g"] = {
						i(19182),	-- Darkmoon Faire Prize Ticket
					},
				}),
				q(7938,  {	-- Your Fortune Awaits You... [Deadmines]
					["provider"] = { "i", 19424 },	-- Sayge's Fortune #24
					["maps"] = { DEADMINES },
					["cr"] = 14822,	-- Sayge
					["repeatable"] = true,
					["lvl"] = 10,
					["g"] = {
						i(19425),	-- Mysterious Lockbox
					},
				}),
				q(7937,  {	-- Your Fortune Awaits You... [Elwynn Forest]
					["provider"] = { "i", 19423 },	-- Sayge's Fortune #23
					["coord"] = { 84.7, 64.4, ELWYNN_FOREST },
					["cr"] = 14822,	-- Sayge
					["repeatable"] = true,
					["lvl"] = 10,
					["g"] = {
						i(19425),	-- Mysterious Lockbox
					},
				}),
				q(7945,  {	-- Your Fortune Awaits You... [Mulgore]
					["provider"] = { "i", 19452 },	-- Sayge's Fortune #27
					["coord"] = { 35, 61.5, MULGORE },
					["cr"] = 14822,	-- Sayge
					["repeatable"] = true,
					["lvl"] = 10,
					["g"] = {
						i(19425),	-- Mysterious Lockbox
					},
				}),
				q(7944,  {	-- Your Fortune Awaits You... [Wailing Caverns]
					["provider"] = { "i", 19443 },	-- Sayge's Fortune #25
					["maps"] = { WAILING_CAVERNS },
					["cr"] = 14822,	-- Sayge
					["repeatable"] = true,
					["lvl"] = 10,
					["g"] = {
						i(19425),	-- Mysterious Lockbox
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
						HEAVY_LEATHER_BALL,
						i(11026),	-- Tree Frog Box
						i(11027),	-- Wood Frog Box
					},
				}),
				n(14846, {	-- Lhara <Darkmoon Faire Exotic Goods>
					["coords"] = {
						{ 36.4, 38.0, MULGORE },
						{ 41.2, 69.8, ELWYNN_FOREST },
					},
					["groups"] = {
						BIG_STICK,
						DARING_DIRK,
						i(19303),	-- Darkmoon Necklace
						i(19302),	-- Darkmoon Ring
						DENSE_SHORTBOW,
						FINE_SHORTBOW,
						STURDY_RECURVE,
						SLYVAN_SHORTBOW,
					},
				}),
				i(19422, {	-- Darkmoon Faire Fortune
					["description"] = "This is a reward from completing the Sayge's Fortune. The answers you select to get your buff do not affect the contents of this container.\n\nSayge offers a buff if you answer his questions correctly.\n\n1:1 +10% Damage\n1:2  +25 Magical Resistance\n1:3 +10% Armor\n2:1 +10% Spirit\n2:2 +10% Int\n2:3  +25 Magical Resistance\n3:1 +10% Stamina\n3:2 +10% Strength\n3:3 +10% Agility\n4:1 +10% Int\n4:2 +10% Spirit\n4:3 +10% Armor",
					["cr"] = 14822,	-- Sayge
					["repeatable"] = true,
					["coords"] = {
						{ 36.8, 38.2, MULGORE },
						{ 42.0, 69.0, ELWYNN_FOREST },
					},
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
							--["questID"] = 7937,	-- Your Fortune Awaits You...
						}),
						i(19424, {	-- Sayge's Fortune #24
							--["questID"] = 7938,	-- Your Fortune Awaits You...
						}),
						i(19443, {	-- Sayge's Fortune #25
							--["questID"] = 7944,	-- Your Fortune Awaits You...
						}),
						i(19451),	-- Sayge's Fortune #26
						i(19452, {	-- Sayge's Fortune #27
							--["questID"] = 7945,	-- Your Fortune Awaits You...
						}),
						i(19453),	-- Sayge's Fortune #28
						i(19454),	-- Sayge's Fortune #29
					},
				}),
			}),
			category(73, {	-- Tarot Decks
				i(19228, {	-- Beasts Deck
					["cost"] = {
						{ "i", 19227, 1 },	-- Ace of Beasts
						{ "i", 19230, 1 },	-- Two of Beasts
						{ "i", 19231, 1 },	-- Three of Beasts
						{ "i", 19232, 1 },	-- Four of Beasts
						{ "i", 19233, 1 },	-- Five of Beasts
						{ "i", 19234, 1 },	-- Six of Beasts
						{ "i", 19235, 1 },	-- Seven of Beasts
						{ "i", 19236, 1 },	-- Eight of Beasts
					},
					["lvl"] = 55,
				}),
				i(31890, {	-- Blessings Deck
					["u"] = TBC_PHASE_ONE,
					["cost"] = {
						{ "i", 31882, 1 },	-- Ace of Blessings
						{ "i", 31889, 1 },	-- Two of Blessings
						{ "i", 31888, 1 },	-- Three of Blessings
						{ "i", 31885, 1 },	-- Four of Blessings
						{ "i", 31884, 1 },	-- Five of Blessings
						{ "i", 31887, 1 },	-- Six of Blessings
						{ "i", 31886, 1 },	-- Seven of Blessings
						{ "i", 31883, 1 },	-- Eight of Blessings
					},
				}),
				i(19267, {	-- Elementals Deck
					["cost"] = {
						{ "i", 19268, 1 },	-- Ace of Elementals
						{ "i", 19269, 1 },	-- Two of Elementals
						{ "i", 19270, 1 },	-- Three of Elementals
						{ "i", 19271, 1 },	-- Four of Elementals
						{ "i", 19272, 1 },	-- Five of Elementals
						{ "i", 19273, 1 },	-- Six of Elementals
						{ "i", 19274, 1 },	-- Seven of Elementals
						{ "i", 19275, 1 },	-- Eight of Elementals
					},
					["lvl"] = 55,
				}),
				i(31907, {	-- Furies Deck
					["u"] = TBC_PHASE_ONE,
					["cost"] = {
						{ "i", 31901, 1 },	-- Ace of Furies
						{ "i", 31909, 1 },	-- Two of Furies
						{ "i", 31908, 1 },	-- Three of Furies
						{ "i", 31904, 1 },	-- Four of Furies
						{ "i", 31903, 1 },	-- Five of Furies
						{ "i", 31906, 1 },	-- Six of Furies
						{ "i", 31905, 1 },	-- Seven of Furies
						{ "i", 31902, 1 },	-- Eight of Furies
					},
				}),
				i(31914, {	-- Lunacy Deck
					["u"] = TBC_PHASE_ONE,
					["cost"] = {
						{ "i", 31910, 1 },	-- Ace of Lunacy
						{ "i", 31918, 1 },	-- Two of Lunacy
						{ "i", 31917, 1 },	-- Three of Lunacy
						{ "i", 31913, 1 },	-- Four of Lunacy
						{ "i", 31912, 1 },	-- Five of Lunacy
						{ "i", 31916, 1 },	-- Six of Lunacy
						{ "i", 31915, 1 },	-- Seven of Lunacy
						{ "i", 31911, 1 },	-- Eight of Lunacy
					},
				}),
				i(19277, {	-- Portals Deck
					["cost"] = {
						{ "i", 19276, 1 },	-- Ace of Portals
						{ "i", 19278, 1 },	-- Two of Portals
						{ "i", 19279, 1 },	-- Three of Portals
						{ "i", 19280, 1 },	-- Four of Portals
						{ "i", 19281, 1 },	-- Five of Portals
						{ "i", 19282, 1 },	-- Six of Portals
						{ "i", 19283, 1 },	-- Seven of Portals
						{ "i", 19284, 1 },	-- Eight of Portals
					},
					["lvl"] = 55,
				}),
				i(31891, {	-- Storms Deck
					["u"] = TBC_PHASE_ONE,
					["cost"] = {
						{ "i", 31892, 1 },	-- Ace of Storms
						{ "i", 31900, 1 },	-- Two of Storms
						{ "i", 31899, 1 },	-- Three of Storms
						{ "i", 31895, 1 },	-- Four of Storms
						{ "i", 31894, 1 },	-- Five of Storms
						{ "i", 31898, 1 },	-- Six of Storms
						{ "i", 31896, 1 },	-- Seven of Storms
						{ "i", 31893, 1 },	-- Eight of Storms
					},
				}),
				i(19257, {	-- Warlords Deck
					["cost"] = {
						{ "i", 19258, 1 },	-- Ace of Warlords
						{ "i", 19259, 1 },	-- Two of Warlords
						{ "i", 19260, 1 },	-- Three of Warlords
						{ "i", 19261, 1 },	-- Four of Warlords
						{ "i", 19262, 1 },	-- Five of Warlords
						{ "i", 19263, 1 },	-- Six of Warlords
						{ "i", 19264, 1 },	-- Seven of Warlords
						{ "i", 19265, 1 },	-- Eight of Warlords
					},
					["lvl"] = 55,
				}),
			}),
		},
	}),
});

-- Wipe out the unobtainable states.
HEAVY_LEATHER_BALL.u = nil;
DENSE_SHORTBOW.u = nil;
DARING_DIRK.u = nil;
BIG_STICK.u = nil;
SLYVAN_SHORTBOW.u = nil;
STURDY_RECURVE.u = nil;
FINE_SHORTBOW.u = nil;