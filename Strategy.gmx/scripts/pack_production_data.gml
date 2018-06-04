/// pack_production_data(food, gold)

enum _bity_data
{
    bit1 = 1,
    bit2 = 2,
    bit3 = 4,
    bit4 = 8,
    bit5 = 16,
    bit6 = 32,
    bit7 = 64,
    bit8 = 128,
    
    bit1_2 = 256,
    bit2_2 = 512,
    bit3_2 = 1024,
    bit4_2 = 2048,
    bit5_2 = 4096,
    bit6_2 = 8192,
    bit7_2 = 16384,
    bit8_2 = 32768,
} 

if(argument_count != 2)
{
    return -1;
}
var food = argument[0];
var gold_in = argument[1];
var gold_out = gold_in << 8;

return (gold_out | food);

