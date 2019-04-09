/// get_medium_hex_field(obj, list, [check])

var obj = argument[0];
var l_list = argument[1];
var check = MAP_TERRAIN_TYPE.everything;
if(argument_count == 3)
{
    check = argument[2];
}

with(obj)
{
    var l_x = x - global.HEX_X_OFFSET;
    var l_y = y - global.HEX_Y_OFFSET;
    var hex_inst = get_hex_xy(l_x, l_y, hex_obj);
    if(hex_inst != noone)
    {
        get_small_hex_field(hex_inst, l_list, check);
    }
    
    l_x = x;
    l_y = y - (global.HEX_Y_OFFSET * 2);
    hex_inst = get_hex_xy(l_x, l_y, hex_obj);
    if(hex_inst != noone)
    {
        get_small_hex_field(hex_inst, l_list, check);
    }
    
    l_x = x + global.HEX_X_OFFSET;
    l_y = y - global.HEX_Y_OFFSET;
    hex_inst = get_hex_xy(l_x, l_y, hex_obj);
    if(hex_inst != noone)
    {
        get_small_hex_field(hex_inst, l_list, check);
    }
    
    l_x = x - global.HEX_X_OFFSET;
    l_y = y + global.HEX_Y_OFFSET;
    hex_inst = get_hex_xy(l_x, l_y, hex_obj);
    if(hex_inst != noone)
    {
        get_small_hex_field(hex_inst, l_list, check);
    }
    
    l_x = x;
    l_y = y + (global.HEX_Y_OFFSET * 2);
    hex_inst = get_hex_xy(l_x, l_y, hex_obj);
    if(hex_inst != noone)
    {
        get_small_hex_field(hex_inst, l_list, check);
    }
    
    l_x = x + global.HEX_X_OFFSET;
    l_y = y + global.HEX_Y_OFFSET;
    hex_inst = get_hex_xy(l_x, l_y, hex_obj);
    if(hex_inst != noone)
    {
        get_small_hex_field(hex_inst, l_list, check);
    }
}

