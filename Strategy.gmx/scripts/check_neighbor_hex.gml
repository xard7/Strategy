/// check_neighbor_hex(x, y, type)

if(argument_count != 3)
{
    return false;
}

var l_x = argument[0];
var l_y = argument[1];
var l_type = argument[2];

var ret = false;

var hex_pos = convert_to_grid_location(l_x, l_y);
//for(var i = )

//var hex_inst = ds_grid_get(global.MAP_GRID, hex_pos[0], hex_pos[1]);


var hex_inst = get_hex_xy(l_x - global.HEX_X_OFFSET, l_y - global.HEX_Y_OFFSET, hex_obj);
if(hex_inst != noone && (hex_inst.m_type & l_type) != 0)
{
    ret = true;
}

hex_inst = get_hex_xy(l_x, l_y - (global.HEX_Y_OFFSET * 2), hex_obj);
if(hex_inst != noone && (hex_inst.m_type & l_type) != 0)
{
    ret = true;
}

hex_inst = get_hex_xy(l_x + global.HEX_X_OFFSET, l_y - global.HEX_Y_OFFSET, hex_obj);
if(hex_inst != noone && (hex_inst.m_type & l_type) != 0)
{
    ret = true;
}

hex_inst = get_hex_xy(l_x - global.HEX_X_OFFSET, l_y + global.HEX_Y_OFFSET, hex_obj);
if(hex_inst != noone && (hex_inst.m_type & l_type) != 0)
{
    ret = true;
}

hex_inst = get_hex_xy(l_x, l_y + (global.HEX_Y_OFFSET * 2), hex_obj);
if(hex_inst != noone && (hex_inst.m_type & l_type) != 0)
{
    ret = true;
}

hex_inst = get_hex_xy(l_x + global.HEX_X_OFFSET, l_y + global.HEX_Y_OFFSET, hex_obj);
if(hex_inst != noone && (hex_inst.m_type & l_type) != 0)
{
    ret = true;
}

return ret;

