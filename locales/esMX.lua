-- Localization for Spanish (Mexico) Clients.
if GetLocale() ~= "esMX" then return; end
local app = select(2, ...);
local L = app.L;

--TODO: L.FACTION_MODE_TOOLTIP = "Turn this setting on if you want to see Account Mode data only for races and classes of your current faction.";

--TODO: L.TOGGLE_FACTION_MODE = "Toggle Faction Mode";

-- Dungeons
L.ZONE_TEXT_TO_MAP_ID["Cavernas de Brazanegra"] = 221;	-- BFD
L.ZONE_TEXT_TO_MAP_ID["Profundidades de Roca Negra"] = 242;	-- BRD
L.ZONE_TEXT_TO_MAP_ID["Montaña Roca Negra"] = 35;	-- BRM
L.ZONE_TEXT_TO_MAP_ID["Cumbre de Roca Negra"] = 250;	-- BRS
L.ZONE_TEXT_TO_MAP_ID["Minas de la Muerte"] = 291;	-- DM/VC
L.ZONE_TEXT_TO_MAP_ID["La Masacre"] = 234;	-- Dire Maul
L.ZONE_TEXT_TO_MAP_ID["Las Minas de la Muerte"] = 291;	-- DM/VC
L.ZONE_TEXT_TO_MAP_ID["Gnomeregan"] = 226;	-- Gnomer
L.ZONE_TEXT_TO_MAP_ID["Maraudon"] = 280;	-- Maraudon
L.ZONE_TEXT_TO_MAP_ID["Sima Ígnea"] = 213;	-- RFC
L.ZONE_TEXT_TO_MAP_ID["Zahúrda Rojocieno"] = 300;	-- RFD
L.ZONE_TEXT_TO_MAP_ID["Horado Rajacieno"] = 301;	-- RFK
L.ZONE_TEXT_TO_MAP_ID["Scholomance"] = 310;	-- SCHOLO
L.ZONE_TEXT_TO_MAP_ID["Castillo de Colmillo Oscuro"] = 310;	-- SFK
L.ZONE_TEXT_TO_MAP_ID["Monasterio Escarlata"] = 435;	-- SM
L.ZONE_TEXT_TO_MAP_ID["Strathholme"] = 317;	-- STRATH
L.ZONE_TEXT_TO_MAP_ID["El Templo de Atal'Hakkar"] = 220;	-- ST
L.ZONE_TEXT_TO_MAP_ID["Uldaman"] = 230;	-- ULDA
L.ZONE_TEXT_TO_MAP_ID["Cuevas de los Lamentos"] = 279;	-- WC
L.ZONE_TEXT_TO_MAP_ID["Zul'Farrak"] = 219;	-- ZF

L.ZONE_TEXT_TO_MAP_ID["Magister's Terrace"] = 348;	-- MGT
L.ZONE_TEXT_TO_MAP_ID["Karazhan"] = 350;	-- KARA
L.ZONE_TEXT_TO_MAP_ID["Gruul's Lair"] = 330;	-- GRUL
L.ZONE_TEXT_TO_MAP_ID["Magtheridon's Lair"] = 331;	-- MAG
L.ZONE_TEXT_TO_MAP_ID["Serpentshrine Cavern"] = 332;	-- SSC
L.ZONE_TEXT_TO_MAP_ID["El Castillo de la Tempestad"] = 334;	-- TK
L.ZONE_TEXT_TO_MAP_ID["The Battle for Mount Hyjal"] = 329;	-- HYJAL
L.ZONE_TEXT_TO_MAP_ID["The Black Temple"] = 340;	-- BT
L.ZONE_TEXT_TO_MAP_ID["Sunwell Plataeu"] = 335;	-- SWP
L.ZONE_TEXT_TO_MAP_ID["Zul'Aman"] = 333;	-- ZA

L.ALT_ZONE_TEXT_TO_MAP_ID["Criptas Auchenai"] = 256;	-- CRYPTS
L.ALT_ZONE_TEXT_TO_MAP_ID["Tumbas de Maná"] = 272;	-- MT
L.ALT_ZONE_TEXT_TO_MAP_ID["Salas Sethekk"] = 258;	-- SETH
L.ALT_ZONE_TEXT_TO_MAP_ID["Laberinto de las Sombras"] = 260;	-- SLABS
L.ALT_ZONE_TEXT_TO_MAP_ID["La Ciénaga Negra"] = 273;	-- BLKM
L.ALT_ZONE_TEXT_TO_MAP_ID["Antiguas Laderas de Trabalomas"] = 274;	-- OHF
L.ALT_ZONE_TEXT_TO_MAP_ID["The Slave Pens"] = 265;	-- SPENS
L.ALT_ZONE_TEXT_TO_MAP_ID["The Steamvault"] = 263;	-- SVALT
L.ALT_ZONE_TEXT_TO_MAP_ID["The Underbog"] = 262;	-- UNBOG
L.ALT_ZONE_TEXT_TO_MAP_ID["The Blood Furnace"] = 261;	-- BF
L.ALT_ZONE_TEXT_TO_MAP_ID["Hellfire Ramparts"] = 347;	-- RAMPS
L.ALT_ZONE_TEXT_TO_MAP_ID["The Shattered Halls"] = 246;	-- SHALLS
L.ALT_ZONE_TEXT_TO_MAP_ID["The Arcatraz"] = 269;	-- ARCA
L.ALT_ZONE_TEXT_TO_MAP_ID["The Botanica"] = 266;	-- BOT
L.ALT_ZONE_TEXT_TO_MAP_ID["The Mechanar"] = 267;	-- MECH

local a = L.HEADER_NAMES;
for key,value in pairs({
	-- Enter translated NPCID's here
})
do a[key] = value; end

local a = L.OBJECT_ID_NAMES;
for key,value in pairs({
	-- Enter translated OBJECTID's here
})
do a[key] = value; end
