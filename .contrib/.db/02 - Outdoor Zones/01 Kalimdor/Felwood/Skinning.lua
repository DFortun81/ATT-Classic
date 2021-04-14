---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
_.Zones =
{
	m(KALIMDOR, {
		m(FELWOOD, {
			prof(SKINNING, {
				i(11512, {	-- Patch of Tainted Skin
					["description"] = "In order for this to drop while Skinning, you must have the Cenarion Beacon in your bags.",
					["cost"] = {
						{ "i", 11511, 1 },	-- Cenarion Beacon
					},
					["crs"] = {
						8956,	-- Angerclaw Bear
						8957,	-- Angerclaw Grizzly
						8958,	-- Angerclaw Mauler
						8961,	-- Felpaw Ravager
						8960,	-- Felpaw Scavenger
						8959,	-- Felpaw Wolf
						7125,	-- Jaedenar Hound
						7126,	-- Jaedenar Hunter
					},
				}),
			}),
		}),
	}),
};