/// get_small_hex_field(obj, list, [check])
// grid_space

var obj = argument[0];
var l_list = argument[1];
var check = MAP_TERRAIN_TYPE.everything;
if(argument_count == 3)
{
    check = argument[2];
}

with(obj)
{
    var converted_loc = convert_to_grid_location(x, y);
    var even = (converted_loc[0] % 2) == 0;
    var hex_inst = ds_grid_get(global.MAP_GRID, converted_loc[0], converted_loc[1]);
    if(hex_inst != noone && ds_list_find_index(l_list, hex_inst) == -1)
    {
        if(check_hex(hex_inst.x, hex_inst.y, check))
        {
            ds_list_add(l_list, hex_inst);
        }
    }
    
    if(even)
    {
        var l_x = converted_loc[0] - 1;
        var l_y = converted_loc[1] + 1;
        hex_inst = ds_grid_get(global.MAP_GRID, l_x, l_y);
        if(hex_inst != noone && ds_list_find_index(l_list, hex_inst) == -1)
        {
            if(check_hex(hex_inst.x, hex_inst.y, check))
            {
                ds_list_add(l_list, hex_inst);
            }
        }
    }
    else
    {
        var l_x = converted_loc[0] - 1;
        var l_y = converted_loc[1] - 1;
        hex_inst = ds_grid_get(global.MAP_GRID, l_x, l_y);
        if(hex_inst != noone && ds_list_find_index(l_list, hex_inst) == -1)
        {
            if(check_hex(hex_inst.x, hex_inst.y, check))
            {
                ds_list_add(l_list, hex_inst);
            }
        }
    }
    
    l_x = converted_loc[0];
    l_y = converted_loc[1] - 1;
    hex_inst = ds_grid_get(global.MAP_GRID, l_x, l_y);
    if(hex_inst != noone && ds_list_find_index(l_list, hex_inst) == -1)
    {
        if(check_hex(hex_inst.x, hex_inst.y, check))
        {
            ds_list_add(l_list, hex_inst);
        }
    }
    
    if(even)
    {
        l_x = converted_loc[0] + 1;
        l_y = converted_loc[1] + 1;
        hex_inst = ds_grid_get(global.MAP_GRID, l_x, l_y);
        if(hex_inst != noone && ds_list_find_index(l_list, hex_inst) == -1)
        {
            if(check_hex(hex_inst.x, hex_inst.y, check))
            {
                ds_list_add(l_list, hex_inst);
            }
        }
    }
    else
    {
        l_x = converted_loc[0] + 1;
        l_y = converted_loc[1] - 1;
        hex_inst = ds_grid_get(global.MAP_GRID, l_x, l_y);
        if(hex_inst != noone && ds_list_find_index(l_list, hex_inst) == -1)
        {
            if(check_hex(hex_inst.x, hex_inst.y, check))
            {
                ds_list_add(l_list, hex_inst);
            }
        }
    }
    
    l_x = converted_loc[0] - 1;
    l_y = converted_loc[1];
    hex_inst = ds_grid_get(global.MAP_GRID, l_x, l_y);
    if(hex_inst != noone && ds_list_find_index(l_list, hex_inst) == -1)
    {
        if(check_hex(hex_inst.x, hex_inst.y, check))
        {
            ds_list_add(l_list, hex_inst);
        }
    }
    
    l_x = converted_loc[0] + 1;
    l_y = converted_loc[1];
    hex_inst = ds_grid_get(global.MAP_GRID, l_x, l_y);
    if(hex_inst != noone && ds_list_find_index(l_list, hex_inst) == -1)
    {
        if(check_hex(hex_inst.x, hex_inst.y, check))
        {
            ds_list_add(l_list, hex_inst);
        }
    }
    
    l_x = converted_loc[0];
    l_y = converted_loc[1] + 1;
    hex_inst = ds_grid_get(global.MAP_GRID, l_x, l_y);
    if(hex_inst != noone && ds_list_find_index(l_list, hex_inst) == -1)
    {
        if(check_hex(hex_inst.x, hex_inst.y, check))
        {
            ds_list_add(l_list, hex_inst);
        }
    }
}

