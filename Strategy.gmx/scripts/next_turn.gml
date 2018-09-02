/// next_turn()

global.GAME_STATE = GAME_FLOW.waiting_turn;

global.SELECTED_HEX = noone;
if(ds_list_size(global.MENU_ITEMS) != 0)
{
    for(var i = 0; i < ds_list_size(global.MENU_ITEMS); i++ )
    {
        instance_destroy(global.MENU_ITEMS[| i]);
    }
    ds_list_clear(global.MENU_ITEMS);
}

for(var i = 0; i < ds_list_size(global.USED_HEXS); i++)
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
                        new_build.m_production = global.PROCUDTION[BUILD_TYPE.village];
                    }
                    break;
                    
                    case BUILD_TYPE.city:
                    {
                        new_build = instance_create(hex_inst.x, hex_inst.y, city_obj);
                        new_build.m_production = global.PROCUDTION[BUILD_TYPE.city];
                    }
                    break;
                    
                    case BUILD_TYPE.stronghold:
                    {
                        new_build = instance_create(hex_inst.x, hex_inst.y, stronghold_obj);
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
        
        case "village_obj":
        {
            var upack_procuction = unpack_production_data(hex_inst.m_production);
            global.STOCK[STOCK_TYPE.food] += upack_procuction[0];
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
                global.STOCK[STOCK_TYPE.gold] += upack_procuction[1];
            }
        }
        break;
        
        case "stronghoold_obj":
        {
            var upack_procuction = unpack_production_data(hex_inst.m_production);
            var c_food = global.STOCK[STOCK_TYPE.food] - upack_procuction[0];
            var c_gold = global.STOCK[STOCK_TYPE.gold] - upack_procuction[1];
            if(c_food >= 0 && c_gold >= 0)
            {
                global.STOCK[STOCK_TYPE.food] = c_food;
                global.STOCK[STOCK_TYPE.gold] = c_gold;
            }
        }
        break;
    }
}

global.GAME_STATE = GAME_FLOW.ingame;

