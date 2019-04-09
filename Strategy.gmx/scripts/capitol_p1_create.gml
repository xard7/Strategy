/// capitol_p1_create()

hex_create();

m_selected_inst = ds_list_create(); // zaznaczone heksy

m_production = global.PRODUCTION[BUILD_TYPE.capitol];

var hex_list = ds_list_create();
get_large_hex_field(self, hex_list, MAP_TERRAIN_TYPE.grass | MAP_TERRAIN_TYPE.sand);
{
    var pId = self;
    for(var i = 0; i < ds_list_size(hex_list); i++)
    {
        with(hex_list[| i])
        {
            m_carry_level = 12;
            ds_list_add(m_fields, pId);
        }
    }
}
ds_list_destroy(hex_list);

ds_list_add(global.USED_HEXS, id);

