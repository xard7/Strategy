/// enums

enum MAP_TERRAIN_TYPE
{
    void        = 0,
    
    water       = 1,
    grass       = 2,
    sand        = 4,
    rock        = 8,
    forest      = 16,
    build       = 32,
    
    everything  = 63,
};

enum STOCK_TYPE
{
    food,
    gold,
    military,
};

enum GAME_FLOW
{
    ingame,
    menu,
    select_hex,
    waiting_turn,
};

enum BUILD_TYPE
{
    village,
    city,
    mine,
    sawmill,
    port,
    stronghold,
    unknow,
};

