-- Localization for Spanish (Mexico) Clients.
if GetLocale() ~= "esMX" then return; end
local app = select(2, ...);
local L = app.L;

-- TODO

-- Dungeons
L.ZONE_TEXT_TO_MAP_ID["Cavernas de Brazanegra"] = 221;	-- BFD
L.ZONE_TEXT_TO_MAP_ID["Minas de la Muerte"] = 291;	-- DM/VC
L.ZONE_TEXT_TO_MAP_ID["Las Minas de la Muerte"] = 291;	-- DM/VC
L.ZONE_TEXT_TO_MAP_ID["Gnomeregan"] = 226;	-- Gnomer
L.ZONE_TEXT_TO_MAP_ID["Sima Ígnea"] = 213;	-- RFC
L.ZONE_TEXT_TO_MAP_ID["Zahúrda Rojocieno"] = 300;	-- RFD
L.ZONE_TEXT_TO_MAP_ID["Horado Rajacieno"] = 301;	-- RFK
L.ZONE_TEXT_TO_MAP_ID["Castillo de Colmillo Oscuro"] = 310;	-- SFK
L.ZONE_TEXT_TO_MAP_ID["Uldaman"] = 230;	-- ULDA
L.ZONE_TEXT_TO_MAP_ID["Cuevas de los Lamentos"] = 279;	-- WC

-- Cities
L.ZONE_TEXT_TO_MAP_ID["Cima del Trueno"] = 88;	-- Thunder Bluff

-- Professions
L.TRADESKILL_TEXT_TO_SPELL_ID["Ingeniería"] = 4036;	-- Engineering
L.TRADESKILL_TEXT_TO_SPELL_ID["Ingeniero goblin"] = 4036;	-- Goblin Engineer
L.TRADESKILL_TEXT_TO_SPELL_ID["Ingeniero gnomo"] = 4036;	-- Gnome Engineer
L.TRADESKILL_TEXT_TO_SPELL_ID["Primeros auxilios"] = 3273;	-- First Aid
L.TRADESKILL_TEXT_TO_SPELL_ID["Minería"] = 2656;	-- Mining
L.TRADESKILL_TEXT_TO_SPELL_ID["Fundiendo"] = 2656;	-- Smelting

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