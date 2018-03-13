/// game_configuration()

global.MAP_WIDTH = 10;
global.MAP_HEIGHT = 10;

if( variable_global_exists("MAP_GRID") != 0 )
{
    if(ds_exists(global.MAP_GRID, ds_type_grid))
    {
        ds_grid_destroy(global.MAP_GRID);
    }
}

global.MAP_GRID = ds_grid_create(global.MAP_WIDTH, global.MAP_HEIGHT);

