/// map_configuration()

global.HEX_X_OFFSET = 246;
global.HEX_Y_OFFSET = 85; // pelny offset to HEX_Y_OFFSET * 2

global.HEX_X_MIN = room_height;
global.HEX_Y_MIN = room_width;
var max_x = 0;
var max_y = 0;
for(var i = 0; i < instance_count; i++)
{
    with (instance_id[i])
    {
        if(global.HEX_X_MIN > x)
            global.HEX_X_MIN = x;
        if(max_x < x)
            max_x = x;
        if(global.HEX_Y_MIN > y)
            global.HEX_Y_MIN = y;
        if(max_y < y)
            max_y = y;
    }
}

global.MAP_WIDTH = (max_x - global.HEX_X_MIN) / global.HEX_X_OFFSET + 1;
global.MAP_HEIGHT = (max_y - global.HEX_Y_MIN) / (global.HEX_Y_OFFSET * 2) + 1;
show_debug_message("Map width = " + string(global.MAP_WIDTH) + ", height = " + string(global.MAP_HEIGHT));
if( variable_global_exists("MAP_GRID") != 0 )
{
    if(ds_exists(global.MAP_GRID, ds_type_grid))
    {
        ds_grid_destroy(global.MAP_GRID);
    }
}
global.MAP_GRID = ds_grid_create(global.MAP_WIDTH, global.MAP_HEIGHT);
ds_grid_clear(global.MAP_GRID, noone);

for(var i = 0; i < instance_count; i++)
{
    with (instance_id[i])
    {
        var obj_name = object_get_name(object_index);
        
        var x_in_grid = floor((x - global.HEX_X_MIN) / global.HEX_X_OFFSET);
        var y_in_grid = floor((y - global.HEX_Y_MIN) / (global.HEX_Y_OFFSET * 2));
        
        if( variable_instance_exists(id, "m_x_in_grid") != 0 )
        {
            m_x_in_grid = x_in_grid;
        }
        if( variable_instance_exists(id, "m_y_in_grid") != 0 )
        {
            m_y_in_grid = y_in_grid;
        }
        
        if(obj_name == "capitol_P1_obj")
        {
            continue;
        }
        
        var grid_value = ds_grid_get(global.MAP_GRID, x_in_grid, y_in_grid);
        var hex_id = noone;
        if(grid_value != noone)
        {
            hex_id = grid_value;
            grid_value = grid_value.m_type;
        }
        else
        {
            grid_value = MAP_TERRAIN_TYPE.void;
        }
        
        //self.debug_value = obj_name;
        
        var dest_hex_type = MAP_TERRAIN_TYPE.void;
        switch(obj_name)
        {
            case "hex_water_obj":
                dest_hex_type = grid_value | MAP_TERRAIN_TYPE.water;
                hex_id = id;
            break;
            
            case "hex_grass_obj":
                dest_hex_type = grid_value | MAP_TERRAIN_TYPE.grass;
                hex_id = id;
            break;
            
            case "hex_sand_obj":
                dest_hex_type = grid_value | MAP_TERRAIN_TYPE.sand;
                hex_id = id;
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
            add_hex_to_grid(global.MAP_GRID, hex_id, x_in_grid, y_in_grid);
        }
    }
}


// debug
{
    var surf_w = ds_grid_width(global.MAP_GRID);
    var surf_h = ds_grid_height(global.MAP_GRID);
    var surf_id = surface_create(surf_w, surf_h);
    
    surface_set_target(surf_id);
    for(var _x = 0; _x < surf_w; _x++)
    {
        for(var _y = 0; _y < surf_h; _y++)
        {
            var hex_id = ds_grid_get(global.MAP_GRID, _x, _y);
            if(hex_id != noone)
            {
                with(hex_id)
                {
                    if((m_type & MAP_TERRAIN_TYPE.water) != 0)
                    {
                        draw_set_colour(c_blue);
                    }
                    else if((m_type & MAP_TERRAIN_TYPE.grass) != 0)
                    {
                        draw_set_colour(c_green);
                    }
                    else if((m_type & MAP_TERRAIN_TYPE.sand) != 0)
                    {
                        draw_set_colour(c_yellow);
                    }
                    else
                    {
                        draw_set_colour(c_red);
                    }
                }
            }
            else
            {
                draw_set_colour(c_black);
            }
            draw_point(_x, _y);
        }
    }
    surface_reset_target();
    surface_save(surf_id, "surface_hex.png");
    surface_free(surf_id);
}

