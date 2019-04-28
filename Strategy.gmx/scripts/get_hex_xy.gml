/// get_hex_xy(x, y, obj)
/// room space.

if(argument_count != 3)
{
    return noone;
}

var l_x = argument[0];
var l_y = argument[1];
var l_obj = argument[2];

return collision_point(l_x, l_y, l_obj, false, false);

