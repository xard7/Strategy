/// player_configuration()

global.GAME_STATE = GAME_FLOW.ingame;
global.SELECTED_HEX = noone;
global.BUILD_REQUEST = BUILD_TYPE.unknow;

global.MENU_ITEMS = ds_list_create();
global.USED_HEXS = ds_list_create();

// zasoby gracza
global.STOCK[STOCK_TYPE.food] = 100;
global.STOCK[STOCK_TYPE.gold] = 100;
global.STOCK[STOCK_TYPE.military] = 0;

// czas potrzebny na zbudowanie obiektu
global.TIME_REQUIRED[BUILD_TYPE.village] = 1;
global.TIME_REQUIRED[BUILD_TYPE.city] = 3;
global.TIME_REQUIRED[BUILD_TYPE.stronghold] = 5;
global.TIME_REQUIRED[BUILD_TYPE.mine] = 3;

// materaly potrzebne do zbudowania (tylko gold)
global.MAT_REQUIRED[BUILD_TYPE.village] = 5;
global.MAT_REQUIRED[BUILD_TYPE.city] = 10;
global.MAT_REQUIRED[BUILD_TYPE.stronghold] = 25;
global.MAT_REQUIRED[BUILD_TYPE.mine] = 10;

// produkcja
global.PRODUCTION[BUILD_TYPE.capitol] = pack_production_data(1, 1); // daje food, daje gold
global.PRODUCTION[BUILD_TYPE.village] = pack_production_data(5, 1); // daje food, zabiera gold
global.PRODUCTION[BUILD_TYPE.city] = pack_production_data(5, 5); // zabiera food, daje gold
global.PRODUCTION[BUILD_TYPE.mine] = pack_production_data(5, 10);// zabiera food, daje gold
global.PRODUCTION[BUILD_TYPE.stronghold] = pack_production_data(10, 10); // zabiera food, zabiera gold
global.MILITARY_STATIONED = 5;

