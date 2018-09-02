/// player_configuration()

global.GAME_STATE = GAME_FLOW.ingame;
global.SELECTED_HEX = noone;
global.BUILD_REQUEST = BUILD_TYPE.unknow;

global.MENU_ITEMS = ds_list_create();
global.USED_HEXS = ds_list_create();

global.STOCK[STOCK_TYPE.food] = 0;
global.STOCK[STOCK_TYPE.gold] = 5;
global.STOCK[STOCK_TYPE.military] = 0;

global.TIME_REQUIRED[BUILD_TYPE.village] = 1;
global.TIME_REQUIRED[BUILD_TYPE.city] = 3;
global.TIME_REQUIRED[BUILD_TYPE.stronghold] = 3;

global.MAT_REQUIRED[BUILD_TYPE.village] = 1;
global.MAT_REQUIRED[BUILD_TYPE.city] = 3;
global.MAT_REQUIRED[BUILD_TYPE.stronghold] = 5;

global.PROCUDTION[BUILD_TYPE.village] = pack_production_data(1, 0);
global.PROCUDTION[BUILD_TYPE.city] = pack_production_data(1, 1);
global.PROCUDTION[BUILD_TYPE.mine] = pack_production_data(2, 2);
global.PROCUDTION[BUILD_TYPE.stronghold] = pack_production_data(1, 1);

