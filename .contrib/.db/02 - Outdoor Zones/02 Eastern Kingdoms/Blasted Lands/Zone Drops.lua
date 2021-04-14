---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(BLASTED_LANDS, {
			n(ZONEDROPS, {
				i(8394, {	-- Basilisk Brain
					["crs"] = {
						8302,	-- Deatheye
						5990,	-- Redstone Basilisk
						5991,	-- Redstone Crystalhide
					},
				}),
				i(8392, {	-- Blasted Boar Lung
					["crs"] = {
						5992,	-- Ashmane Boar
						8303,	-- Grunter
						5993,	-- Helboar
					},
				}),
				i(4213, {	-- Grimoire of Doom
					["recipeID"] = 18540,	-- Ritual of Doom
					["classes"] = { WARLOCK },
					["crs"] = {
						12396,	-- Doomguard Commander
						8716,	-- Dreadlord
					},
				}),
				i(10593),	-- Imperfect Draenethyst Fragment (drops from pretty much the whole zone)
				i(8244, {	-- Flawless Draenethyst Sphere
					["crs"] = {
						7846,	-- Teremus the Devourer
						7664,	-- Razelikh the Defiler
						7668,	-- Servant of Razelikh
					},
				}),
				i(18623, {	-- Flawless Fel Essence (Dark Portal)
					["questID"] = 7602,	-- Flawless Fel Essence
					["cr"] = 6011,	-- Felguard Sentry
					["classes"] = { WARLOCK },
				}),
				i(15727, {	-- Pattern: Heavy Scorpid Vest
					["cr"] = 5981,	-- Portal Seeker
				}),
				i(8393, {	-- Scorpok Pincer
					["crs"] = {
						8301,	-- Clack the Reaver
						5988,	-- Scorpok Stinger
					},
				}),
				i(8391, {	-- Snickerfang Jowl
					["crs"] = {
						8300,	-- Ravage
						5985,	-- Snickerfang Hyena
						5984,	-- Starving Snickerfang
					},
				}),
				i(18665, {	-- The Eye of Shadow
					["classes"] = { PRIEST },
					["crs"] = {
						12396,	-- Doomguard Commander
						8716,	-- Dreadlord
						8717,	-- Felguard Elite
						12397,	-- Lord Kazzak
						8718,	-- Manahound
					},
				}),
				i(8396, {	-- Vulture Gizzard
					["crs"] = {
						5982,	-- Black Slayer
						8299,	-- Spiteflayer
					},
				}),
			}),
		}),
	}),
};