-- Localization for Russian Clients.
if GetLocale() ~= "ruRU" then return; end
local app = select(2, ...);
local L = app.L;

-- TODO

-- Dungeons
L.ZONE_TEXT_TO_MAP_ID["Непроглядная Пучина"] = 221;	-- BFD
L.ZONE_TEXT_TO_MAP_ID["Мертвые копи"] = 291;	-- DM/VC
L.ZONE_TEXT_TO_MAP_ID["Гномреган"] = 226;	-- Gnomer
L.ZONE_TEXT_TO_MAP_ID["Огненная пропасть"] = 213;	-- RFC
L.ZONE_TEXT_TO_MAP_ID["Курганы Иглошкурых"] = 300;	-- RFD
L.ZONE_TEXT_TO_MAP_ID["Лабиринты Иглошкурых"] = 301;	-- RFK
L.ZONE_TEXT_TO_MAP_ID["Крепость Темного Клыка"] = 310;	-- SFK
L.ZONE_TEXT_TO_MAP_ID["Ульдаман"] = 230;	-- ULDA
L.ZONE_TEXT_TO_MAP_ID["Пещеры Стенаний"] = 279;	-- WC

-- Cities
L.ZONE_TEXT_TO_MAP_ID["Громовой Утес"] = 88;	-- Thunder Bluff

local a = L.NPC_ID_NAMES;
for key,value in pairs({
	-- Enter translated NPCID's here
})
do a[key] = value; end

local a = L.OBJECT_ID_NAMES;
for key,value in pairs({
	-- Enter translated OBJECTID's here
})
do a[key] = value; end