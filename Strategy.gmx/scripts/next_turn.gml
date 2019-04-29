/// next_turn()

global.GAME_STATE = GAME_FLOW.waiting_turn;

// deprecated ***********************
if(global.SELECTED_HEX != noone)
{
    with(global.SELECTED_HEX)
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
    }
    global.SELECTED_HEX = noone;
}
// **********************************


if(ds_list_size(global.MENU_ITEMS) != 0)
{
    for(var i = 0; i < ds_list_size(global.MENU_ITEMS); i++ )
    {
        instance_destroy(global.MENU_ITEMS[| i]);
    }
    ds_list_clear(global.MENU_ITEMS);
}

global.STOCK[STOCK_TYPE.military] = 0;

for(var i = 0; i < instance_count; i++)
{
    with (instance_id[i])
    {
        switch(object_get_name(object_index))
        {
            case "hex_grass_obj":
            case "hex_sand_obj":
            {
                var isOwned = (m_type & (MAP_TERRAIN_TYPE.player_1 | MAP_TERRAIN_TYPE.player_2)) != 0;
                if(isOwned)
                {
                    var isP1 = (m_type & MAP_TERRAIN_TYPE.player_1) != 0;
                    
                    if(isP1)
                    {
                        m_carry_level = clamp(m_carry_level + 1, -12, 12);
                    }
                    else
                    {
                        m_carry_level = clamp(m_carry_level - 1, -12, 12);
                    }
                }
            }
            break;
            
            default:
            {
            }
            break;
        }
    }
}

/*for(var i = 0; i < ds_list_size(global.USED_HEXS); i++)
{
    var hex_inst = global.USED_HEXS[| i];
    switch(object_get_name(hex_inst.object_index))
    {
        case "place_obj":
        {
            hex_inst.m_remaining_time --;
            
            if(hex_inst.m_remaining_time <= 0)
            {
                var new_build = noone;
                
                switch(hex_inst.m_to_become)
                {
                    case BUILD_TYPE.village:
                    {
                        new_build = instance_create(hex_inst.x, hex_inst.y, village_obj); 
                        new_build.m_production = global.PRODUCTION[BUILD_TYPE.village];
                    }
                    break;
                    
                    case BUILD_TYPE.city:
                    {
                        new_build = instance_create(hex_inst.x, hex_inst.y, city_obj);
                        new_build.m_production = global.PRODUCTION[BUILD_TYPE.city];
                    }
                    break;
                    
                    case BUILD_TYPE.stronghold:
                    {
                        new_build = instance_create(hex_inst.x, hex_inst.y, stronghold_obj);
                        new_build.m_production = global.PRODUCTION[BUILD_TYPE.stronghold];
                    }
                    break;
                    
                    case BUILD_TYPE.mine:
                    {
                        new_build = instance_create(hex_inst.x, hex_inst.y, mine_obj);
                        new_build.m_production = global.PRODUCTION[BUILD_TYPE.mine];
                    }
                    break;
                }
                
                if(new_build)
                {
                    global.USED_HEXS[| i] = new_build;
                    instance_destroy(hex_inst);
                }
            }
        }
        break;
        
        case "capitol_P1_obj":
        {
            var upack_procuction = unpack_production_data(hex_inst.m_production);
            global.STOCK[STOCK_TYPE.food] += upack_procuction[0];
            global.STOCK[STOCK_TYPE.gold] += upack_procuction[1];
        }
        break;
        
        case "village_obj":
        {
            var upack_procuction = unpack_production_data(hex_inst.m_production);
            var c_gold = global.STOCK[STOCK_TYPE.gold] - upack_procuction[1];
            if(c_gold >= 0)
            {
                global.STOCK[STOCK_TYPE.food] += upack_procuction[0];
                global.STOCK[STOCK_TYPE.gold] = c_gold;
            }
        }
        break;
        
        case "city_obj":
        case "mine_obj":
        {
            var upack_procuction = unpack_production_data(hex_inst.m_production);
            var c_food = global.STOCK[STOCK_TYPE.food] - upack_procuction[0];
            if(c_food >= 0)
            {
                global.STOCK[STOCK_TYPE.food] = c_food;
                if(check_neighbor_hex(hex_inst.x, hex_inst.y, MAP_TERRAIN_TYPE.rock))
                {
                    global.STOCK[STOCK_TYPE.gold] += upack_procuction[1];
                }
            }
        }
        break;
        
        case "stronghold_obj":
        {
            var upack_procuction = unpack_production_data(hex_inst.m_production);
            var c_food = global.STOCK[STOCK_TYPE.food] - upack_procuction[0];
            var c_gold = global.STOCK[STOCK_TYPE.gold] - upack_procuction[1];
            if(c_food >= 0 && c_gold >= 0)
            {
                global.STOCK[STOCK_TYPE.food] = c_food;
                global.STOCK[STOCK_TYPE.gold] = c_gold;
                global.STOCK[STOCK_TYPE.military] += global.MILITARY_STATIONED;
            }
        }
        break;
    }
}*/

global.GAME_STATE = GAME_FLOW.ingame;

