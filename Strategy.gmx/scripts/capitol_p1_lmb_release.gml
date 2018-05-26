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
        switch(object_get_name(building_inst.object_index))
        {
            case "capitol_P1_obj":
                global.SELECTED_HEX = building_inst.id;
                global.GAME_STATE = GAME_FLOW.menu;
                ds_list_add(global.MENU_ITEMS, instance_create(building_inst.x, building_inst.y, build_btn_obj));
                ds_list_add(global.MENU_ITEMS, instance_create(building_inst.x, building_inst.y, upgrade_btn_obj));
                ds_list_add(global.MENU_ITEMS, instance_create(building_inst.x, building_inst.y, destroy_btn_obj));
                ds_list_add(global.MENU_ITEMS, instance_create(building_inst.x, building_inst.y, send_btn_obj));
            break;
        }
    }
}
else if(global.GAME_STATE == GAME_FLOW.menu)
{
    var destroyMenu = false;
    var menu_inst = instance_position(mouse_x, mouse_y, menu_obj);
    if(menu_inst)
    {
        var button_name = object_get_name(menu_inst.object_index);
        switch(button_name)
        {
            case "village_btn_obj":
            {
                global.BUILD_REQUEST = BUILD_REQUEST_TYPE.village;
            }
            break;
            case "city_btn_obj":
            {
                global.BUILD_REQUEST = BUILD_REQUEST_TYPE.city;
            }
            break;
            case "stronghold_btn_obj":
            {
                global.BUILD_REQUEST = BUILD_REQUEST_TYPE.stronghold;
            }
            break;
            
            default:
            {
                global.BUILD_REQUEST = BUILD_REQUEST_TYPE.unknow;
            }
        }
        
        switch(button_name)
        {
            case "build_btn_obj":
            {
                if(global.SELECTED_HEX != noone)
                {
                    ds_list_add(global.MENU_ITEMS, instance_create(global.SELECTED_HEX.x + 10, global.SELECTED_HEX.y - 64, village_btn_obj));
                    ds_list_add(global.MENU_ITEMS, instance_create(global.SELECTED_HEX.x + 10, global.SELECTED_HEX.y - 30, city_btn_obj));
                    ds_list_add(global.MENU_ITEMS, instance_create(global.SELECTED_HEX.x + 10, global.SELECTED_HEX.y + 6, stronghold_btn_obj));
                }
            }
            break;
            
            case "village_btn_obj":
            case "city_btn_obj":
            case "stronghold_btn_obj":
            {
                if(global.SELECTED_HEX)
                {
                    global.GAME_STATE = GAME_FLOW.select_hex;
                    switch(object_get_name(global.SELECTED_HEX.object_index))
                    {
                        case "capitol_P1_obj":
                        {
                            set_hex_selection(self);
                        }
                        break;
                        
                        default:
                            show_debug_message("Unknow building object!");
                            global.GAME_STATE = GAME_FLOW.ingame;
                    }
                }
                destroyMenu = true;
            }
            break;
        }
    }
    else
    {
        global.GAME_STATE = GAME_FLOW.ingame;
        destroyMenu = true;
    }
    
    if(destroyMenu)
    {
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
}
else if(global.GAME_STATE == GAME_FLOW.select_hex)
{
    var hex_inst = instance_position(mouse_x, mouse_y, hex_obj);
    if(hex_inst && hex_inst.m_selected)
    {
        hex_inst.m_type = hex_inst.m_type | MAP_TERRAIN_TYPE.build;
        instance_create(hex_inst.x, hex_inst.y, place_obj);
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

