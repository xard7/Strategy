/// convert_to_grid_location(x, y)

var l_x = argument[0];
var l_y = argument[1];
var ret;
ret[0] = floor((l_x - global.HEX_X_MIN) / global.HEX_X_OFFSET);
ret[1] = floor((l_y - global.HEX_Y_MIN) / (global.HEX_Y_OFFSET * 2));
return ret;

