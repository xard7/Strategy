/// pack_production_data(food, gold)

enum _bity_data
{
    bit1 = 1,
    bit2 = 2,
    bit3 = 4,
    bit4 = 8,
    bit5 = 16,
    
    bit1_2 = 32,
    bit2_2 = 64,
    bit3_2 = 128,
    bit4_2 = 256,
    bit5_2 = 512,
} 

if(argument_count != 2)
{
    return -1;
}
var food = argument[0];
var gold_in = argument[1];
var gold_out = 0;

if((gold_in & _bity_data.bit1) != 0)
{
    gold_out += _bity_data.bit1_2;
}
if((gold_in & _bity_data.bit2) != 0)
{
    gold_out += _bity_data.bit2_2;
}
if((gold_in & _bity_data.bit3) != 0)
{
    gold_out += _bity_data.bit3_2;
}
if((gold_in & _bity_data.bit4) != 0)
{
    gold_out += _bity_data.bit4_2;
}
if((gold_in & _bity_data.bit5) != 0)
{
    gold_out += _bity_data.bit5_2;
}

return (gold_out | food);

