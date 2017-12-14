///@description generate_land
///@arg x_cell 
///@arg y_cell
///@arg land_type
var x_cell = argument0,
	y_cell = argument1,
	land_type = argument2;
	
var tileset;
switch (land_type) {
	case land.forest:
		tileset = t_forest;
		o_game.map_array[x_cell, y_cell] = s_map_forest;
	break;
	
	case land.snow:
		tileset = t_snow;
		o_game.map_array[x_cell, y_cell] = s_map_snow;
	break;
	
	case land.lava:
		tileset = t_lava;
		o_game.map_array[x_cell, y_cell] = s_map_lava;
	break;
}

var x0 = x_cell * (3*CELL_WIDTH);
var y0 = y_cell * (3*CELL_WIDTH);
var new_land = layer_tilemap_create(global.land_layer, x0, y0, tileset, 3, 3);

for (var i = 0; i< LAND_SIZE; i++) {
	for (var j = 0; j < LAND_SIZE; j++) {
		var ran_data = irandom_range(1, 3);
		//tilemap_set_at_pixel(new_land, ran_data, x0+i*CELL_WIDTH, y0+j*CELL_WIDTH);
		tilemap_set(new_land, ran_data, i, j);
	}
}
