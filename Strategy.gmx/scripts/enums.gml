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
    player_1    = 64,
    player_2    = 128,
    
    everything  = 255,
};

enum STOCK_TYPE
{
    food,
    gold,
    military, // niepotrzebne
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
    capitol,
    village,
    city,
    mine, // usun
    sawmill, // usun
    port, // usun
    stronghold,
    tower,
    unknow,
};

enum NEIGHBOR_POS
{
    unknow,
    up,
    left_up,
    left_down,
    down,
    right_down,
    right_up,
}

