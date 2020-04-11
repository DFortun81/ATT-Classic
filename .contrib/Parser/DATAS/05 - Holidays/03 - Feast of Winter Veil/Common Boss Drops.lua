--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------
_.Holidays = 
{
	n(-61, {	-- Feast of Winter Veil
		n(COMMON_BOSS_DROPS, {
			i(21525, {	-- Green Winter Hat
				["maps"] = {
					BLACKROCK_SPIRE,
					DIRE_MAUL,
					SCHOLOMANCE
				},
				["crs"] = {
					10899,	-- Goraluk Anvilcrack <Blackhand Legion Armorsmith>
					11486,	-- Prince Tortheldrin
					1853,	-- Darkmaster Gandling
				},
			}),
			i(21524, {	-- Red Winter Hat
				["maps"] = {
					BLACKROCK_DEPTHS,
					BLACKROCK_SPIRE,
					STRATHOLME
				},
				["crs"] = {
					9019,	-- Emperor Dagran Thaurissan (BRD)
					9237,	-- War Master Voone
					10997,	-- Cannon Master Willey
				},
			}),
		}),
	}),
};
