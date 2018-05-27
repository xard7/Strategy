/// unpack_production_data(packed_data)

var bitwise_offset = 31;
var bitwise_offset_2 = 992;

if(argument_count != 1)
{
    return -1;
}
var packed_data = argument[0];

var food = (packed_data & bitwise_offset);
var gold_in = (packed_data & bitwise_offset_2);
var gold_out = 0;

if((gold_in & _bity_data.bit1_2) != 0)
{
    gold_out += _bity_data.bit1;
}
if((gold_in & _bity_data.bit2_2) != 0)
{
    gold_out += _bity_data.bit2;
}
if((gold_in & _bity_data.bit3_2) != 0)
{
    gold_out += _bity_data.bit3;
}
if((gold_in & _bity_data.bit4_2) != 0)
{
    gold_out += _bity_data.bit4;
}
if((gold_in & _bity_data.bit5_2) != 0)
{
    gold_out += _bity_data.bit5;
}

var ret;
ret[0] = food;
ret[1] = gold_out;
return ret;

