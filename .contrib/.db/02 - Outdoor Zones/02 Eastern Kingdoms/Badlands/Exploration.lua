---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
-- #if ANYCLASSIC
_.Zones =
{
	m(EASTERN_KINGDOMS, {
		m(BADLANDS, {
			n(EXPLORATION, {
				exploration(345, "265:270:345:389"),	-- Agmond's End
				exploration(338, "195:200:325:148"),	-- Angor Fortress
				-- #if AFTER TBC
				exploration(337, "256:256:17:310"),		-- Apocryphan's Rest [TBC]
				-- #else
				exploration(337, "255:205:17:310"),		-- Apocryphan's Rest [Classic]
				-- #endif
				exploration(342, "255:280:501:341"),	-- Camp Boff
				-- #if AFTER TBC
				exploration(344, "256:256:12:428"),		-- Camp Cagg [TBC]
				-- #else
				exploration(344, "255:220:12:428"),		-- Camp Cagg [Classic]
				-- #endif
				exploration(341, "220:220:551:48"),		-- Camp Kosh
				exploration(1898, "245:205:498:209"),	-- Dustwind Gulch
				exploration(346, "200:195:445:120"),	-- Hammertoe's Digsite
				-- #if AFTER TBC
				exploration(340, "256:256:0:148"),		-- Kargath [TBC]
				-- #else
				exploration(340, "240:255:0:148"),		-- Kargath [Classic]
				-- #endif
				exploration(339, "370:455:611:110"),	-- Lethlor Ravine
				-- #if AFTER TBC
				exploration(1879, "256:256:148:384"),	-- Mirage Flats [TBC]
				-- #else
				exploration(1879, "285:240:148:384"),	-- Mirage Flats [Classic]
				-- #endif
				exploration(1878, "270:275:159:199"),	-- The Dustbowl
				exploration(1897, "245:205:389:7"),		-- The Maker's Terrace
				exploration(1877, "230:230:349:256"),	-- Valley of Fangs
				--[[
				exploration(343, ""),	-- Camp Wurg
				exploration(347, ""),	-- Dustbelch Grotto
				exploration(1517, ""),	-- Uldaman
				]]--
			}),
		}),
	}),
};
-- #endif