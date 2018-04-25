/// capitol_p1_lmb_release()

if(global.GAME_STATE == GAME_FLOW.ingame)
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

    var building_inst = instance_position(mouse_x, mouse_y, building_obj);
    if(building_inst)
    {
        global.SELECTED_HEX = building_inst.id;
        global.GAME_STATE = GAME_FLOW.menu;
        ds_list_add(global.MENU_ITEMS, instance_create(building_inst.x, building_inst.y, build_btn_obj));
    }
}
else if(global.GAME_STATE == GAME_FLOW.menu)
{
    var menu_inst = instance_position(mouse_x, mouse_y, menu_obj);
    if(menu_inst)
    {
        if(global.SELECTED_HEX)
        {
            global.GAME_STATE = GAME_FLOW.select_hex;
            switch(object_get_name(global.SELECTED_HEX.object_index))
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
                    global.GAME_STATE = GAME_FLOW.ingame;
            }
        }
        else
        {
            global.GAME_STATE = GAME_FLOW.ingame;
        }
    }
    else
    {
        global.GAME_STATE = GAME_FLOW.ingame;
    }
    
    global.SELECTED_HEX = noone;
    if(ds_list_size(global.MENU_ITEMS) != 0)
    {
        for(var i = 0; i < ds_list_size(global.MENU_ITEMS); i++ )
        {
            instance_destroy(global.MENU_ITEMS[| i]);
        }
        ds_list_clear(global.MENU_ITEMS);
    }
}
else if(global.GAME_STATE == GAME_FLOW.select_hex)
{
    var hex_inst = instance_position(mouse_x, mouse_y, hex_obj);
    if(hex_inst && hex_inst.m_selected)
    {
        instance_create(hex_inst.x, hex_inst.y, village_obj);
    }
    
    if(ds_list_size(m_selected_inst) != 0)
    {
        for(var i = 0; i < ds_list_size(m_selected_inst); i++ )
        {
            var hex_inst = m_selected_inst[| i];
            hex_inst.m_selected = false;
        }
        ds_list_clear(m_selected_inst);
    }
    
    global.SELECTED_HEX = noone;
    global.GAME_STATE = GAME_FLOW.ingame;
}

