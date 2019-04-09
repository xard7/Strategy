/// get_small_hex_field(obj, list, [check])

var obj = argument[0];
var l_list = argument[1];
var check = MAP_TERRAIN_TYPE.everything;
if(argument_count == 3)
{
    check = argument[2];
}

with(obj)
{
    var hex_inst = get_hex_xy(x, y, hex_obj);
    show_debug_message("DUPA 1 " + string(hex_inst != noone));
    if(hex_inst != noone && ds_list_find_index(l_list, hex_inst) == -1)
    {
        show_debug_message("DUPA 2");
        if(check_hex(x, y, check))
        {
            show_debug_message("DUPA 3");
            ds_list_add(l_list, hex_inst);
        }
    }

    var l_x = x - global.HEX_X_OFFSET;
    var l_y = y - global.HEX_Y_OFFSET;
    hex_inst = get_hex_xy(l_x, l_y, hex_obj);
    if(hex_inst != noone && ds_list_find_index(l_list, hex_inst) == -1)
    {
        if(check_hex(l_x, l_y, check))
        {
            ds_list_add(l_list, hex_inst);
        }
    }
    
    l_x = x;
    l_y = y - (global.HEX_Y_OFFSET * 2);
    hex_inst = get_hex_xy(l_x, l_y, hex_obj);
    if(hex_inst != noone && ds_list_find_index(l_list, hex_inst) == -1)
    {
        if(check_hex(l_x, l_y, check))
        {
            ds_list_add(l_list, hex_inst);
        }
    }
    
    l_x = x + global.HEX_X_OFFSET;
    l_y = y - global.HEX_Y_OFFSET;
    hex_inst = get_hex_xy(l_x, l_y, hex_obj);
    if(hex_inst != noone && ds_list_find_index(l_list, hex_inst) == -1)
    {
        if(check_hex(l_x, l_y, check))
        {
            ds_list_add(l_list, hex_inst);
        }
    }
    
    l_x = x - global.HEX_X_OFFSET;
    l_y = y + global.HEX_Y_OFFSET;
    hex_inst = get_hex_xy(l_x, l_y, hex_obj);
    if(hex_inst != noone && ds_list_find_index(l_list, hex_inst) == -1)
    {
        if(check_hex(l_x, l_y, check))
        {
            ds_list_add(l_list, hex_inst);
        }
    }
    
    l_x = x;
    l_y = y + (global.HEX_Y_OFFSET * 2);
    hex_inst = get_hex_xy(l_x, l_y, hex_obj);
    if(hex_inst != noone && ds_list_find_index(l_list, hex_inst) == -1)
    {
        if(check_hex(l_x, l_y, check))
        {
            ds_list_add(l_list, hex_inst);
        }
    }
    
    l_x = x + global.HEX_X_OFFSET;
    l_y = y + global.HEX_Y_OFFSET;
    hex_inst = get_hex_xy(l_x, l_y, hex_obj);
    if(hex_inst != noone && ds_list_find_index(l_list, hex_inst) == -1)
    {
        if(check_hex(l_x, l_y, check))
        {
            ds_list_add(l_list, hex_inst);
        }
    }
}

