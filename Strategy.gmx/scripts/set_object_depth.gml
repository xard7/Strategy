// set_object_depth(inst, z_offset)

var l_inst = argument[0];
var l_z_off = 0;
if(argument_count == 2)
{
    l_z_off = argument[1];
}
with(l_inst)
{
    depth = (y * (-1)) + l_z_off;
}

