/// set_hex_selection(obj, [check])

var obj = argument[0];
var check = MAP_TERRAIN_TYPE.everything;
if(argument_count == 2)
{
    check = argument[1];
}

with(obj)
{
    var l_x = obj.x - global.HEX_X_OFFSET;
    var l_y = obj.y - global.HEX_Y_OFFSET;
    var hex_inst = get_hex_xy(l_x, l_y, hex_obj);
    if(hex_inst != noone && ds_list_find_index(obj.m_selected_inst, hex_inst) == -1)
    {
        if(check_neighbor_hex(l_x, l_y, check) && hex_set_select(hex_inst, true))
        {
            ds_list_add(obj.m_selected_inst, hex_inst);
        }
    }
    
    l_x = obj.x;
    l_y = obj.y - (global.HEX_Y_OFFSET * 2);
    hex_inst = get_hex_xy(l_x, l_y, hex_obj);
    if(hex_inst != noone && ds_list_find_index(obj.m_selected_inst, hex_inst) == -1)
    {
        if(check_neighbor_hex(l_x, l_y, check) && hex_set_select(hex_inst, true))
        {
            ds_list_add(obj.m_selected_inst, hex_inst);
        }
    }
    
    l_x = obj.x + global.HEX_X_OFFSET;
    l_y = obj.y - global.HEX_Y_OFFSET;
    hex_inst = get_hex_xy(l_x, l_y, hex_obj);
    if(hex_inst != noone && ds_list_find_index(obj.m_selected_inst, hex_inst) == -1)
    {
        if(check_neighbor_hex(l_x, l_y, check) && hex_set_select(hex_inst, true))
        {
            ds_list_add(obj.m_selected_inst, hex_inst);
        }
    }
    
    l_x = obj.x - global.HEX_X_OFFSE;
    l_y = obj.y + global.HEX_Y_OFFSET;
    hex_inst = get_hex_xy(l_x, l_y, hex_obj);
    if(hex_inst != noone && ds_list_find_index(obj.m_selected_inst, hex_inst) == -1)
    {
        if(check_neighbor_hex(l_x, l_y, check) && hex_set_select(hex_inst, true))
        {
            ds_list_add(obj.m_selected_inst, hex_inst);
        }
    }
    
    l_x = obj.x;
    l_y = obj.y + (global.HEX_Y_OFFSET * 2);
    hex_inst = get_hex_xy(l_x, l_y, hex_obj);
    if(hex_inst != noone && ds_list_find_index(obj.m_selected_inst, hex_inst) == -1)
    {
        if(check_neighbor_hex(l_x, l_y, check) && hex_set_select(hex_inst, true))
        {
            ds_list_add(obj.m_selected_inst, hex_inst);
        }
    }
    
    l_x = obj.x + global.HEX_X_OFFSET;
    l_y = obj.y + global.HEX_Y_OFFSET;
    hex_inst = get_hex_xy(l_x, l_y, hex_obj);
    if(hex_inst != noone && ds_list_find_index(obj.m_selected_inst, hex_inst) == -1)
    {
        if(check_neighbor_hex(l_x, l_y, check) && hex_set_select(hex_inst, true))
        {
            ds_list_add(obj.m_selected_inst, hex_inst);
        }
    }
}

with(obj)
{
    var hex_inst = get_hex_xy(obj.x, obj.y - (global.HEX_Y_OFFSET * 4), hex_obj);
    if(hex_inst != noone)
    {
        if(check_neighbor_hex(obj.x, obj.y - (global.HEX_Y_OFFSET * 4), check) && hex_set_select(hex_inst, true))
        {
            ds_list_add(obj.m_selected_inst, hex_inst);
        }
    }
    
    
    hex_inst = get_hex_xy(obj.x - (global.HEX_X_OFFSET * 2), obj.y - (global.HEX_Y_OFFSET * 2), hex_obj);
    if(hex_inst != noone)
    {
        if(check_neighbor_hex(obj.x - (global.HEX_X_OFFSET * 2), obj.y - (global.HEX_Y_OFFSET * 2), check) && hex_set_select(hex_inst, true))
        {
            ds_list_add(obj.m_selected_inst, hex_inst);
        }
    }
    
    hex_inst = get_hex_xy(obj.x - global.HEX_X_OFFSET, obj.y - (global.HEX_Y_OFFSET * 3), hex_obj);
    if(hex_inst != noone)
    {
        if(check_neighbor_hex(obj.x - global.HEX_X_OFFSET, obj.y - (global.HEX_Y_OFFSET * 3), check) && hex_set_select(hex_inst, true))
        {
            ds_list_add(obj.m_selected_inst, hex_inst);
        }
    }
    
    hex_inst = get_hex_xy(obj.x, obj.y - (global.HEX_Y_OFFSET * 2), hex_obj);
    if(hex_inst != noone)
    {
        if(check_neighbor_hex(obj.x, obj.y - (global.HEX_Y_OFFSET * 2), check) && hex_set_select(hex_inst, true))
        {
            ds_list_add(obj.m_selected_inst, hex_inst);
        }
    }
    
    hex_inst = get_hex_xy(obj.x + global.HEX_X_OFFSET, obj.y - (global.HEX_Y_OFFSET * 3), hex_obj);
    if(hex_inst != noone)
    {
        if(check_neighbor_hex(obj.x + global.HEX_X_OFFSET, obj.y - (global.HEX_Y_OFFSET * 3), check) && hex_set_select(hex_inst, true))
        {
            ds_list_add(obj.m_selected_inst, hex_inst);
        }
    }
    
    hex_inst = get_hex_xy(obj.x + (global.HEX_X_OFFSET * 2), obj.y - (global.HEX_Y_OFFSET * 2), hex_obj);
    if(hex_inst != noone)
    {
        if(check_neighbor_hex(obj.x + (global.HEX_X_OFFSET * 2), obj.y - (global.HEX_Y_OFFSET * 2), check) && hex_set_select(hex_inst, true))
        {
            ds_list_add(obj.m_selected_inst, hex_inst);
        }
    }
    
    
    hex_inst = get_hex_xy(obj.x - (global.HEX_X_OFFSET * 2), obj.y, hex_obj);
    if(hex_inst != noone)
    {
        if(check_neighbor_hex(obj.x - (global.HEX_X_OFFSET * 2), obj.y, check) && hex_set_select(hex_inst, true))
        {
            ds_list_add(obj.m_selected_inst, hex_inst);
        }
    }
    
    hex_inst = get_hex_xy(obj.x - global.HEX_X_OFFSET, obj.y - global.HEX_Y_OFFSET, hex_obj);
    if(hex_inst != noone)
    {
        if(check_neighbor_hex(obj.x - global.HEX_X_OFFSET, obj.y - global.HEX_Y_OFFSET, check) && hex_set_select(hex_inst, true))
        {
            ds_list_add(obj.m_selected_inst, hex_inst);
        }
    }
    
    hex_inst = get_hex_xy(obj.x + global.HEX_X_OFFSET, obj.y - global.HEX_Y_OFFSET, hex_obj);
    if(hex_inst != noone)
    {
        if(check_neighbor_hex(obj.x + global.HEX_X_OFFSET, obj.y - global.HEX_Y_OFFSET, check) && hex_set_select(hex_inst, true))
        {
            ds_list_add(obj.m_selected_inst, hex_inst);
        }
    }
    
    hex_inst = get_hex_xy(obj.x + (global.HEX_X_OFFSET * 2), obj.y, hex_obj);
    if(hex_inst != noone)
    {
        if(check_neighbor_hex(obj.x + (global.HEX_X_OFFSET * 2), obj.y, check) && hex_set_select(hex_inst, true))
        {
            ds_list_add(obj.m_selected_inst, hex_inst);
        }
    }
    
    
    hex_inst = get_hex_xy(obj.x - (global.HEX_X_OFFSET * 2), obj.y + (global.HEX_Y_OFFSET * 2), hex_obj);
    if(hex_inst != noone)
    {
        if(check_neighbor_hex(obj.x - (global.HEX_X_OFFSET * 2), obj.y + (global.HEX_Y_OFFSET * 2), check) && hex_set_select(hex_inst, true))
        {
            ds_list_add(obj.m_selected_inst, hex_inst);
        }
    }
    
    hex_inst = get_hex_xy(obj.x - global.HEX_X_OFFSET, obj.y + global.HEX_Y_OFFSET, hex_obj);
    if(hex_inst != noone)
    {
        if(check_neighbor_hex(obj.x - global.HEX_X_OFFSET, obj.y + global.HEX_Y_OFFSET, check) && hex_set_select(hex_inst, true))
        {
            ds_list_add(obj.m_selected_inst, hex_inst);
        }
    }
    
    hex_inst = get_hex_xy(obj.x, obj.y + (global.HEX_Y_OFFSET * 2), hex_obj);
    if(hex_inst != noone)
    {
        if(check_neighbor_hex(obj.x, obj.y + (global.HEX_Y_OFFSET * 2), check) && hex_set_select(hex_inst, true))
        {
            ds_list_add(obj.m_selected_inst, hex_inst);
        }
    }
    
    hex_inst = get_hex_xy(obj.x + global.HEX_X_OFFSET, obj.y + global.HEX_Y_OFFSET, hex_obj);
    if(hex_inst != noone)
    {
        if(check_neighbor_hex(obj.x + global.HEX_X_OFFSET, obj.y + global.HEX_Y_OFFSET, check) && hex_set_select(hex_inst, true))
        {
            ds_list_add(obj.m_selected_inst, hex_inst);
        }
    }
                            
    hex_inst = get_hex_xy(obj.x + (global.HEX_X_OFFSET * 2), obj.y + (global.HEX_Y_OFFSET * 2), hex_obj);
    if(hex_inst != noone)
    {
        if(check_neighbor_hex(obj.x + (global.HEX_X_OFFSET * 2), obj.y + (global.HEX_Y_OFFSET * 2), check) && hex_set_select(hex_inst, true))
        {
            ds_list_add(obj.m_selected_inst, hex_inst);
        }
    }
                            
                            
    hex_inst = get_hex_xy(obj.x - global.HEX_X_OFFSET, obj.y + (global.HEX_Y_OFFSET * 3), hex_obj);
    if(hex_inst != noone)
    {
        if(check_neighbor_hex(obj.x - global.HEX_X_OFFSET, obj.y + (global.HEX_Y_OFFSET * 3), check) && hex_set_select(hex_inst, true))
        {
            ds_list_add(obj.m_selected_inst, hex_inst);
        }
    }
                            
    hex_inst = get_hex_xy(obj.x, obj.y + (global.HEX_Y_OFFSET * 4), hex_obj);
    if(hex_inst != noone)
    {
        if(check_neighbor_hex(obj.x, obj.y + (global.HEX_Y_OFFSET * 4), check) && hex_set_select(hex_inst, true))
        {
            ds_list_add(obj.m_selected_inst, hex_inst);
        }
    }
                            
    hex_inst = get_hex_xy(obj.x + global.HEX_X_OFFSET, obj.y + (global.HEX_Y_OFFSET * 3), hex_obj);
    if(hex_inst != noone)
    {
        if(check_neighbor_hex(obj.x + global.HEX_X_OFFSET, obj.y + (global.HEX_Y_OFFSET * 3), check) && hex_set_select(hex_inst, true))
        {
            ds_list_add(obj.m_selected_inst, hex_inst);
        }
    }
}
