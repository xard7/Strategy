/// map_configuration()

global.HEX_X_OFFSET = 68;
global.HEX_Y_OFFSET = 18; // pelny offset to HEX_Y_OFFSET * 2

var min_x = room_height; var min_y = room_width;
var max_x = 0; var max_y = 0;
for(var i = 0; i < instance_count; i++)
{
    with (instance_id[i])
    {
        if(min_x > x)
        {
            min_x = x;
        }
        if(max_x < x)
        {
            max_x = x;
        }
        
        if(min_y > y)
        {
            min_y = y;
        }
        if(max_y < y)
        {
            max_y = y;
        }
    }
}

global.MAP_WIDTH = (max_x - min_x) / global.HEX_X_OFFSET + 1;
global.MAP_HEIGHT = (max_y - min_y) / (global.HEX_Y_OFFSET * 2) + 1;
show_debug_message("Map width = " + string(global.MAP_WIDTH) + ", height = " + string(global.MAP_HEIGHT));
if( variable_global_exists("MAP_GRID") != 0 )
{
    if(ds_exists(global.MAP_GRID, ds_type_grid))
    {
        ds_grid_destroy(global.MAP_GRID);
    }
}
global.MAP_GRID = ds_grid_create(global.MAP_WIDTH, global.MAP_HEIGHT);
ds_grid_clear(global.MAP_GRID, MAP_TERRAIN_TYPE.void);

for(var i = 0; i < instance_count; i++)
{
    with (instance_id[i])
    {
        var obj_name = object_get_name(object_index);
        
        if(obj_name == "capitol_P1_obj")
        {
            continue;
        }
        
        var x_in_grid = floor((x - min_x) / global.HEX_X_OFFSET);
        var y_in_grid = floor((y - min_y) / (global.HEX_Y_OFFSET * 2));
        
        if( variable_instance_exists(instance_id[i], "m_x_in_grid") != 0 )
        {
            m_x_in_grid = x_in_grid;
        }
        if( variable_instance_exists(instance_id[i], "m_y_in_grid") != 0 )
        {
            m_y_in_grid = y_in_grid;
        }
        
        var grid_value = ds_grid_get(global.MAP_GRID, x_in_grid, y_in_grid);
        
        var dest_hex_type = MAP_TERRAIN_TYPE.void;
        switch(obj_name)
        {
            case "hex_water_obj":
                dest_hex_type = grid_value | MAP_TERRAIN_TYPE.water;
            break;
            
            case "hex_grass_obj":
                dest_hex_type = grid_value | MAP_TERRAIN_TYPE.grass;
            break;
            
            case "hex_sand_obj":
                dest_hex_type = grid_value | MAP_TERRAIN_TYPE.sand;
            break;
            
            case "hex_rock_obj":
                dest_hex_type = grid_value | MAP_TERRAIN_TYPE.rock;
            break;
            
            case "hex_forest_1_obj":
            case "hex_forest_2_obj":
                dest_hex_type = grid_value | MAP_TERRAIN_TYPE.forest;
            break;
            
            default:
                show_debug_message("Unknown hex: " + obj_name +"!");
        }
        
        if(dest_hex_type != MAP_TERRAIN_TYPE.void)
        {
            m_type = dest_hex_type;
            add_hex_to_grid(global.MAP_GRID, dest_hex_type, x_in_grid, y_in_grid);
        }
    }
}

