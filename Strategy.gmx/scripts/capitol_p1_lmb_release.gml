/// capitol_p1_lmb_release()

//if(collision_point(mouse_x, mouse_y, building_obj, false, false)
{
    if(ds_list_size(m_selected_inst) != 0)
    {
        for(var i = 0; i < ds_list_size(m_selected_inst); i++ )
        {
            var hex_inst = m_selected_inst[| i];
            hex_inst.m_selected = false;
        }
        ds_list_clear(m_selected_inst);
    }
        
    if(collision_point(mouse_x, mouse_y, capitol_P1_obj, false, false))
    {
        var hex_inst = get_hex_xy(x - global.HEX_X_OFFSET, y - global.HEX_Y_OFFSET, hex_obj);
        if(hex_inst != noone) hex_set_select(hex_inst, true);
        ds_list_add(m_selected_inst, hex_inst);
        
        hex_inst = get_hex_xy(x, y - (global.HEX_Y_OFFSET * 2), hex_obj);
        if(hex_inst != noone)  hex_set_select(hex_inst, true);
        ds_list_add(m_selected_inst, hex_inst);
        
        hex_inst = get_hex_xy(x + global.HEX_X_OFFSET, y - global.HEX_Y_OFFSET, hex_obj);
        if(hex_inst != noone)  hex_set_select(hex_inst, true);
        ds_list_add(m_selected_inst, hex_inst);
        
        hex_inst = get_hex_xy(x - global.HEX_X_OFFSET, y + global.HEX_Y_OFFSET, hex_obj);
        if(hex_inst != noone) hex_set_select(hex_inst, true);
        ds_list_add(m_selected_inst, hex_inst);
        
        hex_inst = get_hex_xy(x, y + (global.HEX_Y_OFFSET * 2), hex_obj);
        if(hex_inst != noone)  hex_set_select(hex_inst, true);
        ds_list_add(m_selected_inst, hex_inst);
        
        hex_inst = get_hex_xy(x + global.HEX_X_OFFSET, y + global.HEX_Y_OFFSET, hex_obj);
        if(hex_inst != noone)  hex_set_select(hex_inst, true);
        ds_list_add(m_selected_inst, hex_inst);
    }
    else
    {
    }
}

