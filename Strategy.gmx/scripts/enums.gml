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
};

enum STACK_TYPE
{
    food,
    population,
    workers,
    military,
    gold,
};

enum GAME_FLOW
{
    ingame,
    menu,
    select_hex,
    waiting_turn,
};

enum BUILD_REQUEST_TYPE
{
    unknow,
    village,
    city,
    mine,
    sawmill,
    port,
    stronghold,
};

