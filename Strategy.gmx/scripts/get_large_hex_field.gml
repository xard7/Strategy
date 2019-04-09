/// get_large_hex_field(obj, list, [check])

var obj = argument[0];
var l_list = argument[1];
var check = MAP_TERRAIN_TYPE.everything;
if(argument_count == 3)
{
    check = argument[2];
}

with(obj)
{
    var l_x = x;
    var l_y = y;
    var hex_inst = get_hex_xy(l_x, l_y, hex_obj);
    if(hex_inst != noone && ds_list_find_index(l_list, hex_inst) == -1)
    {
        if(check_hex(l_x, l_y, check))
        {
            ds_list_add(l_list, hex_inst);
        }
    }
    
    l_x = x - (global.HEX_X_OFFSET * 2);
    l_y = y - (global.HEX_Y_OFFSET * 2);
    hex_inst = get_hex_xy(l_x, l_y, hex_obj);
    if(hex_inst != noone)
    {
        get_small_hex_field(hex_inst, l_list, check);
    }
    
    l_x = x;
    l_y = y - (global.HEX_Y_OFFSET * 4);
    hex_inst = get_hex_xy(l_x, l_y, hex_obj);
    if(hex_inst != noone)
    {
        get_small_hex_field(hex_inst, l_list, check);
    }
    
    l_x = x + (global.HEX_X_OFFSET * 2);
    l_y = y - (global.HEX_Y_OFFSET * 2);
    hex_inst = get_hex_xy(l_x, l_y, hex_obj);
    if(hex_inst != noone)
    {
        get_small_hex_field(hex_inst, l_list, check);
    }
    
    l_x = x - (global.HEX_X_OFFSET * 2);
    l_y = y + (global.HEX_Y_OFFSET * 2);
    hex_inst = get_hex_xy(l_x, l_y, hex_obj);
    if(hex_inst != noone)
    {
        get_small_hex_field(hex_inst, l_list, check);
    }
    
    l_x = x;
    l_y = y + (global.HEX_Y_OFFSET * 4);
    hex_inst = get_hex_xy(l_x, l_y, hex_obj);
    if(hex_inst != noone)
    {
        get_small_hex_field(hex_inst, l_list, check);
    }
    
    l_x = x + (global.HEX_X_OFFSET * 2);
    l_y = y + (global.HEX_Y_OFFSET * 2);
    hex_inst = get_hex_xy(l_x, l_y, hex_obj);
    if(hex_inst != noone)
    {
        get_small_hex_field(hex_inst, l_list, check);
    }
}

