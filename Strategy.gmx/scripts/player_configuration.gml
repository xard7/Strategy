/// player_configuration()

global.GAME_STATE = GAME_FLOW.ingame;
global.SELECTED_HEX = noone;
global.BUILD_REQUEST = BUILD_TYPE.unknow;

global.STOCK = ds_map_create();
{
    global.STOCK[? STOCK_TYPE.food] = 0;
    global.STOCK[? STOCK_TYPE.gold] = 0;
    global.STOCK[? STOCK_TYPE.military] = 0;
}

global.MENU_ITEMS = ds_list_create();
global.USED_HEXS = ds_list_create();

global.TIME_REQUIRED[BUILD_TYPE.village] = 1;
global.TIME_REQUIRED[BUILD_TYPE.city] = 3;
global.TIME_REQUIRED[BUILD_TYPE.stronghold] = 3;

global.MAT_REQUIRED[BUILD_TYPE.village] = 1;
global.MAT_REQUIRED[BUILD_TYPE.city] = 1;
global.MAT_REQUIRED[BUILD_TYPE.stronghold] = 1;

global.PROCUDTION[BUILD_TYPE.village] = pack_production_data(5, 0);
global.PROCUDTION[BUILD_TYPE.city] = pack_production_data(0, 1);

