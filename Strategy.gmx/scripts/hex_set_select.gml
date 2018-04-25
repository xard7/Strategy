/// hex_set_select(hex, selected)

if(argument_count != 2)
{
    return false;
}

var l_hex = argument[0];
var l_selected = argument[1];

with(l_hex)
{
    var is_grass = (m_type & MAP_TERRAIN_TYPE.grass);
    var not_grass = ~MAP_TERRAIN_TYPE.grass;
    if( (m_type & not_grass) == 0 && is_grass != 0)
    {
        m_selected = l_selected;
    }
}

return true;

