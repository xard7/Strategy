/// pack_production_data(food, gold)

if(argument_count != 2)
{
    return -1;
}
var food = argument[0];
var gold_in = argument[1];
var gold_out = gold_in << 8;

return (gold_out | food);

