-- Localization for Portuguese (Brazil) Clients.
if GetLocale() ~= "ptBR" then return; end
local app = select(2, ...);
local L = app.L;

--TODO: L.FACTION_MODE_TOOLTIP = "Turn this setting on if you want to see Account Mode data only for races and classes of your current faction.";

--TODO: L.TOGGLE_FACTION_MODE = "Toggle Faction Mode";

local a = L.ZONE_TEXT_TO_MAP_ID;
wipe(a);
for key,value in pairs({
	-- Classic
	["Profundezas Negras"] = 221,	-- Blackfathom Deeps
	["Abismo Rocha Negra"] = 242,	-- Blackrock Depths
	["Covil Asa Negra"] = 287,	-- Blackwing Lair
	["Montanha Rocha Negra"] = 33,	-- Blackrock Mountain
	["Pico da Rocha Negra"] = 250,	-- Blackrock Spire
	[DUNGEON_FLOOR_TANARIS18] = 75,	-- Caverns of Time
	["Gládio Cruel"] = 234,	-- Dire Maul
	["Metrô Correfundo"] = 499,	-- Deeprun Tram
	["Gnomeregan"] = 226,	-- Gnomeregan
	["Maraudon"] = 280,	-- Maraudon
	["Núcleo Derretido"] = 232,	-- Molten Core
	["Naxxramas"] = 162,	-- Naxxramas
	["Covil da Onyxia"] = 248,	-- Onyxia's Lair
	["Cavernas Ígneas"] = 213,	-- Ragefire Chasm
	["Urzal dos Mortos"] = 300,	-- Razorfen Downs
	["Urzal dos Tuscos"] = 301,	-- Razorfen Kraul
	["Ruínas de Ahn'Qiraj"] = 247,	-- Ruins of Ahn'Qiraj
	["Monastério Escarlate"] = 435,	-- Scarlet Monastery
	["Scolomântia"] = 476,	-- Scholomance
	["Bastilha da Presa Negra"] = 310,	-- Shadowfang Keep
	["Stratholme"] = 317,	-- Stratholme
	["Templo de Ahn'Qiraj"] = 320,	-- Temple of Ahn'Qiraj
	["Minas Mortas"] = 291,	-- The Deadmines
	["Templo de Atal'hakkar"] = 220,	-- The Temple of Atal'hakkar
	["Templo de Atal'Hakkar"] = 220,	-- The Temple of Atal'Hakkar
	["O Cárcere"] = 225,	-- The Stockade
	["Uldaman"] = 230,	-- Uldaman
	["Caverna Ululante"] = 279,	-- Wailing Caverns
	["Zul'Farrak"] = 219,	-- Zul'Farrak
	["Zul'Gurub"] = 337,	-- Zul'Gurub
	
	-- TBC
	["Catacumbas Auchenai"] = 256,	-- Auchenai Crypts
	["Karazhan"] = 350,	-- Karazhan
	["Covil de Gruul"] = 330,	-- Gruul's Lair
	["Muralha Fogo do Inferno"] = 347,	-- Hellfire Ramparts
	["Pico Hyjal"] = 329,	-- Hyjal Summit
	["Terraço dos Magísteres"] = 348,	-- Magister's Terrace
	["Covil de Magtheridon"] = 331,	-- Magtheridon's Lair
	["Tumbas de Mana"] = 272,	-- Mana Tombs
	["Antigo Contraforte de Eira dos Montes"] = 274,	-- Old Hillsbrad Foothills
	["Caverna do Serpentário"] = 332,	-- Serpentshrine Cavern
	["Salões dos Sethekk"] = 258,	-- Sethekk Halls
	["Labirinto Soturno"] = 260,	-- Shadow Labyrinth
	["Platô da Nascente do Sol"] = 335,	-- Sunwell Plataeu
	["Bastilha da Tormenta"] = 334,	-- Tempest Keep
	["Arcatraz"] = 269,	-- The Arcatraz
	["Lamaçal Negro"] = 273,	-- The Black Morass
	["Fornalha de Sangue"] = 261,	-- The Blood Furnace
	["Templo Negro"] = 340,	-- The Black Temple
	["Jardim Botânico"] = 266,	-- The Botanica
	["Mecanar"] = 267,	-- The Mechanar
	["Salões Despedaçados"] = 246,	-- The Shattered Halls
	["Pátio dos Escravos"] = 265,	-- The Slave Pens
	["Câmara dos Vapores"] = 263,	-- The Steamvault
	["Brejo Oculto"] = 262,	-- The Underbog
	["Zul'Aman"] = 333,	-- Zul'Aman
})
do a[key] = value; end

local a = L.ALT_ZONE_TEXT_TO_MAP_ID;
wipe(a);
for key,value in pairs({
	-- Classic
	["Ahn'Qiraj"] = 320,	-- Ahn'Qiraj
	["Portões de Ahn'Qiraj"] = 1451,	-- Gates of Ahn'Qiraj
	["O Olho"] = 334,	-- The Eye
})
do a[key] = value; end

local a = L.ALT_PROFESSION_TEXT_TO_ID;
for key,value in pairs({
	["Engenharia"] = 4036,	-- Engineering
	["Primeiros Socorros"] = 3273,	-- First Aid
	["Couraria"] = 2108,	-- Leatherworking
})
do a[key] = value; end

local a = L.HEADER_NAMES;
for key,value in pairs({
	-- Enter translated NPCID's here
})
do a[key] = value; end

local a = L.OBJECT_ID_NAMES;
for key,value in pairs({
	-- Enter translated OBJECTID's here
	[31] = "Estátua de Leão Antiga",
	[34] = "Velho Garrafão",
	[55] = "Corpo semi-devorado",
	[56] = "Cadáver de Rodolfo",
	[61] = "A Velha Lápide",
	[256] = "Procura-se!",
	[259] = "Barril Semienterrado",
--	[270] = "Unguarded Thunder Ale Barrel",						-- No translation
	[2059] = "Cadáver Enânico",
	[2076] = "Caldeirão Borbulhante",
	[2083] = "Correspondência dos Vela Sangrenta",
	[2701] = "Fragmentos Iridescentes",
	[2702] = "Pedra da União Interna",
	[2713] = "Quadro de Procurados",
	[2908] = "Caixote de Suprimentos Lacrado",
	[3972] = "PROCURA-SE",
	[4141] = "Painel de Controle",
	[6751] = "Planta Frutífera Estranha",
	[6752] = "Planta Frondosa Estranha",
	[7510] = "Fronde Desenvolvida",
	[19023] = "Página 2351",
	[20985] = "Terra Solta",
	[20992] = "Escudo Negro",
	[21042] = "Insígnia da Guarda de Theramore",
	[35251] = "Baú de Karnitol",
	[112948] = "Cofre Trancado do Intrépido",
	[113768] = "Ovo Colorido Brilhante",
	[123329] = "Baú de Baelog",
	[131474] = "Os Discos de Norgannon",
	[131979] = "Baú de Lenhanegra Grande",
	[138492] = "Estilhaços de Myzrael",
	[141979] = "Tesouro Antigo",
	[142195] = "Mapa de Batalha de Patábua",
	[142343] = "Pedestal de Uldum",
	[142487] = "A Brastematic 5200",
	[144063] = "Monolito de Equinex",
	[148502] = "Página 9",
	[148504] = "Lápide Evidente",
	[156561] = "Pôster de Procura-se",
	[160836] = "Arca de Relíquia",
	[160845] = "Cofre Sombrio",
	[161495] = "Cofre Secreto",
--	[161504] = "A Small Pack",								-- No translation
	[161505] = "Bote Naufragado",
	[161521] = "Equipamento de Pesquisa",
	[161526] = "Caixote de Comestíveis",
	[164820] = "Placa de Identificação do Guardião Sombrio",
--	[164885] = "Corrupted Night Dragon",					-- No translation
--	[164886] = "Corrupted Songflower",						-- No translation
--	[164887] = "Corrupted Windblossom",						-- No translation
--	[164888] = "Corrupted Whipper Root",					-- No translation
	[164955] = "Torre de Cristal Norte",
	[164956] = "Torre de Cristal Oeste",
	[164957] = "Torre de Cristal Oriental",
	[169243] = "Baú dos Sete",
	[173232] = "Instruções de Ferraria",
	[174682] = "Cuidado com o Pterrordax",
--	[175320] = "WANTED: Murkdeep!",							-- No translation
--	[175524] = "Mysterious Red Crystal",					-- No translation
	[175756] = "O Flagelo de Lordaeron",
	[176090] = "Restos Humanos",
	[176091] = "Caldeirão de Lenha Morta",
--	[176115] = "Wanted Poster - Arnak Grimtotem",			-- No translation
	[176392] = "Caldeirão do Flagelo",
	[177787] = "Diário de Rodovalho",
--	[177904] = "Wanted Poster: Besseleth",					-- No translation
	[177964] = "Pedra das Profundezas",
	[179485] = "Armadilha Quebrada",
--	[179501] = "Knot Thimblejack's Cache",					-- No translation
	[179832] = "Travesseiro Ornado da Alma Fada",
	[179564] = "Homenagem a Gordok",
	[179697] = "Baú do Tesouro da Arena",
	[180448] = "Cartaz de Procura-se: Agarramata",
	[180503] = "Livro de Receitas da Sandy",
	[180690] = "Grande Arca do Escaravelho",
	[180691] = "Arca do Escaravelho",
	[180794] = "Diário de Janice Barov",
	[180918] = "Procura-se: Thaelis, o Famélico",
	[181011] = "Diário do Magíster Ocaso",
--	[181074] = "Arena Spoils",								-- No translation
--	[181083] = "Sothos and Jarien's Heirlooms",				-- No Translation
	[181147] = "Cartaz de Procura-se",
	[181150] = "Diário Empoeirado",
	[181153] = "Cartaz de Procura-se: Kel'gash, o Perverso",
	[181333] = "Chama de Altaforja",
	[181334] = "Chama de Darnassus",
	[181335] = "Chama da Cidade Baixa",
	[181336] = "Chama de Orgrimmar",
	[181337] = "Chama do Penhasco do Trovão",
	[181748] = "Cristal de Sangue",
	[181756] = "Livro Antigo e Surrado",
	[181889] = "Cartaz de Procura-se",
	[182032] = "Diário de Galaen",
	[182115] = "Cartaz de Procura-se",
	[182165] = "Cartaz de Procura-se",
	[182549] = "Planos dos Orcs Vis",
	[182587] = "Cartaz de Procura-se",
	[182588] = "Cartaz de Procura-se",
	[182392] = "Quadro de Avisos de Garadar",
	[182393] = "Quadro de Avisos de Telaar",
	[182947] = "O Códice de Sangue",
	[182952] = "Destroços da Bomba de Vapor",
	[183284] = "Cartaz de Procura-se",
	[183770] = "Painel de Controle de B'naar",
	[183811] = "Cartaz de Procura-se",
	[184300] = "Foco Necromântico",
	[184465] = "Baú da Legião",
	[184660] = "Cartaz de Procura-se",
	[184825] = "Tomo de Lashh'an",
	[184945] = "Cartaz de Procura-se",
	[184946] = "Cartaz de Procura-se",
	[185035] = "Cartaz de Procura-se",
	[185126] = "Prisão de Cristal",
	[185165] = "Comunicador da Legião",
	[185168] = "Baú Reforçado de Ferrovil",
	[185927] = "Prisma de Cristal Vil",
	[186426] = "Cartaz de Procura-se",
	[186648] = "Baú do Hazlek",
	[186667] = "Pacote da Norkani",
	[186672] = "Sacola da Kasha",
	[186887] = "Lanterna de Abóbora Grande",
	[187021] = "Algibeira do Bakkalzu",
	[187273] = "Pegada Suspeita",
	[187559] = "Fogueira da Horda",
	[187564] = "Fogueira da Aliança",
	[187565] = "Ancião Atkanok",
	[187674] = "Carapaça Endurecida de Ith'rix",
	[187851] = "Altar dos Sectários",
	[187905] = "Ovo Reluzente Gigante",
	[187916] = "Fogueira da Aliança",
	[187917] = "Fogueira da Aliança",
	[187921] = "Fogueira da Aliança",
	[187923] = "Fogueira da Aliança",
	[187924] = "Fogueira da Aliança",
	[187927] = "Fogueira da Aliança",
	[187947] = "Fogueira da Horda",
	[187948] = "Fogueira da Horda",
	[187957] = "Fogueira da Horda",
	[187958] = "Fogueira da Horda",
	[187959] = "Fogueira da Horda",
	[188085] = "Grão Pestilento",
	[188128] = "Chama da Exodar",
	[188129] = "Chama de Luaprata",
	[188261] = "Diário Surrado",
	[188364] = "Armadilha para Caranguejo Destruída",
	[188365] = "Coração dos Antigos",
	[188419] = "Ancião Mana'loa",
	[188667] = "Semente Âmbar",
	[189311] = "Tomo Encadernado com Carne",
	[189989] = "Destroços da Máquina Toupeira dos Ferro Negro",
	[189990] = "Destroços da Máquina Toupeira dos Ferro Negro",
})
do a[key] = value; end
