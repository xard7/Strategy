/// add_hex_to_grid(grid, hex, x, y)

var l_mg = argument[0]
var l_hex = argument[1];
var l_x =  argument[2];
var l_y = argument[3];

if( l_x < ds_grid_width(l_mg) && l_y < ds_grid_width(l_mg))
{
    ds_grid_add(l_mg, l_x, l_y, l_hex);
}
else
{
    show_debug_message("Rozmar MAP_GRID mniejszy od wspolrzednych");
}
