/// capitol_p1_lmb_release()

var hex_inst = instance_position(mouse_x, mouse_y, hex_obj);
if(hex_inst && hex_inst.m_selected)
{

}
else
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

    var building_inst = collision_point(mouse_x, mouse_y, building_obj, false, false);
    
    if(building_inst)
    {
        switch(object_get_name(building_inst.object_index))
        {
            case "capitol_P1_obj":
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
            break;
            
            default:
                show_debug_message("Unknow building object!");
        }
    }
}

