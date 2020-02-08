---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(TANARIS, {
			n(0, {	-- Zone Drops
				i(11206, {	-- Formula: Enchant Cloak - Lesser Agility
					["crs"] = {
						5623,	-- Wastewander Assassin
						7805,	-- Wastewander Scofflaw
					},
				}),
				i(8399, {	-- Pattern: Tough Scorpid Boots
					["cr"] = 5615,	-- Wastewander Rogue
				}),
				i(8397, {	-- Pattern: Tough Scorpid Bracers
					["cr"] = 5617,	-- Wastewander Shadow Mage
				}),
				i(8395, {	-- Pattern: Tough Scorpid Breastplate
					["cr"] = 5618,	-- Wastewander Bandit
				}),
				i(8398, {	-- Pattern: Tough Scorpid Gloves
					["cr"] = 5616,	-- Wastewander Thief
				}),
				i(8402, {	-- Pattern: Tough Scorpid Helm
					["crs"] = {
						7883,	-- Andre Firebeard
						5623,	-- Wastewander Assassin
						7805,	-- Wastewander Scofflaw
					},
				}),
				i(8401, {	-- Pattern: Tough Scorpid Leggings
					["cr"] = 5615,	-- Wastewander Rogue
				}),
				i(8400, {	-- Pattern: Tough Scorpid Shoulders
					["crs"] = {
						7883,	-- Andre Firebeard
						5623,	-- Wastewander Assassin
						7805,	-- Wastewander Scofflaw
					},
				}),
				i(9276, {	-- Pirate's Footlocker
					["crs"] = {
						15685,	-- Southsea Kidnapper
						7856,	-- Southsea Freebooter
						7857,	-- Southsea Dock Worker
						7858,	-- Southsea Swashbuckler
						7855,	-- Southsea Pirate
					},
					["groups"] = {
						i(9359),	-- Wirt's Third Leg
						i(9250, {	-- Ship Schedule
							["questID"] = 2876,	-- Ship Schedules
						}),
						i(9251, {	-- Upper Map Fragment
							["questID"] = 2882,	-- Cuergo's Gold
							["repeatable"] = true,
						}),
						i(9253, {	-- Middle Map Fragment
							["questID"] = 2882,	-- Cuergo's Gold
							["repeatable"] = true,
						}),
						i(9252, {	-- Lower Map Fragment
							["questID"] = 2882,	-- Cuergo's Gold
							["repeatable"] = true,
						}),
						i(9249, {	-- Captain's Key
							["description"] = "Unlocks the Captain's Chest located in the ship at the docks.",
							["coord"] = { 76.5, 45.8, TANARIS },
							["groups"] = {
								i(9359),	-- Wirt's Third Leg
							},
						}),
					},
				}),
				i(6257, {	-- Roc Gizzard
					["questID"] = 1452,	-- Rhapsody's Kalimdor Kocktail
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						5429,	-- Fire Roc
						5428,	-- Roc
						5430,	-- Searing Roc
					},
				}),
			}),
		}),
	}),
};