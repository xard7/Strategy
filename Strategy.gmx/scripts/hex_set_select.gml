/// hex_set_select(hex, selected)

if(argument_count != 2)
{
    return false;
}

var ret = false;

var l_hex = argument[0];
var l_selected = argument[1];

with(l_hex)
{
    var is_grass_sand = (m_type & MAP_TERRAIN_TYPE.grass) + (m_type & MAP_TERRAIN_TYPE.sand);
    var not_grass_sand = ~(MAP_TERRAIN_TYPE.grass | MAP_TERRAIN_TYPE.sand);
    if( (m_type & not_grass_sand) == 0 && is_grass_sand != 0)
    {
        m_selected = l_selected;
        ret = true;
    }
}

return ret;

