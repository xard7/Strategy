/// unpack_production_data(packed_data)

var bitwise_offset = 255;
var bitwise_offset_2 = bitwise_offset << 8;

if(argument_count != 1)
{
    return -1;
}
var packed_data = argument[0];

var food = (packed_data & bitwise_offset);
var gold_out = (packed_data & bitwise_offset_2) >> 8;

var ret;
ret[0] = food;
ret[1] = gold_out;
return ret;

