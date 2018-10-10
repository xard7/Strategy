/// get_neighbor_coods(x, y, type)


var ret = array_create(3);
ret[0] = -9999;
ret[1] = -9999;
ret[2] = NEIGHBOR_POS.unknow;

if(argument_count != 3)
{
    return ret;
}

var l_x = argument[0];
var l_y = argument[1];
var l_type = argument[2];

var hex_inst = get_hex_xy(l_x - global.HEX_X_OFFSET, l_y - global.HEX_Y_OFFSET, hex_obj);
if(hex_inst != noone && (hex_inst.m_type & l_type) != 0)
{
    ret[0] = l_x - global.HEX_X_OFFSET;
    ret[1] = l_y - global.HEX_Y_OFFSET;
    ret[2] = NEIGHBOR_POS.left_up;
    return ret;
}

hex_inst = get_hex_xy(l_x, l_y - (global.HEX_Y_OFFSET * 2), hex_obj);
if(hex_inst != noone && (hex_inst.m_type & l_type) != 0)
{
    ret[0] = l_x;
    ret[1] = l_y - (global.HEX_Y_OFFSET * 2);
    ret[2] = NEIGHBOR_POS.up;
    return ret;
}

hex_inst = get_hex_xy(l_x + global.HEX_X_OFFSET, l_y - global.HEX_Y_OFFSET, hex_obj);
if(hex_inst != noone && (hex_inst.m_type & l_type) != 0)
{
    ret[0] = l_x + global.HEX_X_OFFSET;
    ret[1] = l_y - global.HEX_Y_OFFSET;
    ret[2] = NEIGHBOR_POS.right_up;
    return ret;
}

hex_inst = get_hex_xy(l_x - global.HEX_X_OFFSET, l_y + global.HEX_Y_OFFSET, hex_obj);
if(hex_inst != noone && (hex_inst.m_type & l_type) != 0)
{
    ret[0] = l_x - global.HEX_X_OFFSET;
    ret[1] = l_y + global.HEX_Y_OFFSET;
    ret[2] = NEIGHBOR_POS.left_down;
    return ret;
}

hex_inst = get_hex_xy(l_x, l_y + (global.HEX_Y_OFFSET * 2), hex_obj);
if(hex_inst != noone && (hex_inst.m_type & l_type) != 0)
{
    ret[0] = l_x;
    ret[1] = l_y + (global.HEX_Y_OFFSET * 2);
    ret[2] = NEIGHBOR_POS.down;
    return ret;
}

hex_inst = get_hex_xy(l_x + global.HEX_X_OFFSET, l_y + global.HEX_Y_OFFSET, hex_obj);
if(hex_inst != noone && (hex_inst.m_type & l_type) != 0)
{
    ret[0] = l_x + global.HEX_X_OFFSET;
    ret[1] = l_y + global.HEX_Y_OFFSET;
    ret[2] = NEIGHBOR_POS.right_down;
    return ret;
}

return ret;

