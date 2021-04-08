-- Localization for Russian Clients.
if GetLocale() ~= "ruRU" then return; end
local app = select(2, ...);
local L = app.L;

L.FACTION_MODE_TOOLTIP = "Включите данную настройку, если Вы хотите отслеживать Штучки в Режиме Аккаунта только для рас и классов Вашей текущей фракции.";

L.TOGGLE_FACTION_MODE = "Переключить режим Фракции";

-- Dungeons
L.ZONE_TEXT_TO_MAP_ID["Непроглядная Пучина"] = 221;	-- BFD
L.ZONE_TEXT_TO_MAP_ID["Глубины Черной горы"] = 242;	-- BRD
L.ZONE_TEXT_TO_MAP_ID["Черная гора"] = 35;	-- BRM
L.ZONE_TEXT_TO_MAP_ID["Вершина Черной горы"] = 250;	-- BRS
L.ZONE_TEXT_TO_MAP_ID["Мертвые копи"] = 291;	-- DM/VC
L.ZONE_TEXT_TO_MAP_ID["Забытый Город"] = 234;	-- Dire Maul
L.ZONE_TEXT_TO_MAP_ID["Гномреган"] = 226;	-- Gnomer
L.ZONE_TEXT_TO_MAP_ID["Мародон"] = 280;	-- Maraudon
L.ZONE_TEXT_TO_MAP_ID["Огненная пропасть"] = 213;	-- RFC
L.ZONE_TEXT_TO_MAP_ID["Курганы Иглошкурых"] = 300;	-- RFD
L.ZONE_TEXT_TO_MAP_ID["Лабиринты Иглошкурых"] = 301;	-- RFK
L.ZONE_TEXT_TO_MAP_ID["Некроситет"] = 310;	-- SCHOLO
L.ZONE_TEXT_TO_MAP_ID["Крепость Темного Клыка"] = 310;	-- SFK
L.ZONE_TEXT_TO_MAP_ID["Монастырь Алого ордена"] = 435;	-- SM
L.ZONE_TEXT_TO_MAP_ID["Стратхольм"] = 317;	-- STRATH
L.ZONE_TEXT_TO_MAP_ID["Храм Атал'Хаккара"] = 220;	-- ST
L.ZONE_TEXT_TO_MAP_ID["Ульдаман"] = 230;	-- ULDA
L.ZONE_TEXT_TO_MAP_ID["Пещеры Стенаний"] = 279;	-- WC
L.ZONE_TEXT_TO_MAP_ID["Зул'Фаррак"] = 219;	-- ZF

L.ZONE_TEXT_TO_MAP_ID["Magister's Terrace"] = 348;	-- MGT
L.ZONE_TEXT_TO_MAP_ID["Karazhan"] = 350;	-- KARA
L.ZONE_TEXT_TO_MAP_ID["Gruul's Lair"] = 330;	-- GRUL
L.ZONE_TEXT_TO_MAP_ID["Magtheridon's Lair"] = 331;	-- MAG
L.ZONE_TEXT_TO_MAP_ID["Serpentshrine Cavern"] = 332;	-- SSC
L.ZONE_TEXT_TO_MAP_ID["Крепость Бурь"] = 334;	-- TK
L.ZONE_TEXT_TO_MAP_ID["The Battle for Mount Hyjal"] = 329;	-- HYJAL
L.ZONE_TEXT_TO_MAP_ID["The Black Temple"] = 340;	-- BT
L.ZONE_TEXT_TO_MAP_ID["Sunwell Plataeu"] = 335;	-- SWP
L.ZONE_TEXT_TO_MAP_ID["Zul'Aman"] = 333;	-- ZA

L.ALT_ZONE_TEXT_TO_MAP_ID["Аукенайские гробницы"] = 256;	-- CRYPTS
L.ALT_ZONE_TEXT_TO_MAP_ID["Гробницы маны"] = 272;	-- MT
L.ALT_ZONE_TEXT_TO_MAP_ID["Сетеккские залы"] = 258;	-- SETH
L.ALT_ZONE_TEXT_TO_MAP_ID["Темный лабиринт"] = 260;	-- SLABS
L.ALT_ZONE_TEXT_TO_MAP_ID["Черные топи"] = 273;	-- BLKM
L.ALT_ZONE_TEXT_TO_MAP_ID["Старые предгорья Хилсбрада"] = 274;	-- OHF
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
