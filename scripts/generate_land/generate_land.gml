///@description generate_land
///@arg x_land 
///@arg y_land
///@arg land_type
var x_land = argument0,
	y_land = argument1,
	land_type = argument2;

var l;
//var tileset;
switch (land_type) {
	case land.forest:
		//tileset = t_forest;
		l = o_land_forest;
		o_game.map_array[x_land, y_land] = s_map_forest;
	break;
	
	case land.snow:
		//tileset = t_snow;
		l = o_land_snow;
		o_game.map_array[x_land, y_land] = s_map_snow;
	break;
	
	case land.lava:
		//tileset = t_lava;
		l = o_land_lava;
		o_game.map_array[x_land, y_land] = s_map_lava;
	break;
}

var x0 = x_land * (LAND_SIZE*CELL_WIDTH) + 64;
var y0 = y_land * (LAND_SIZE*CELL_WIDTH) + 64;


for (var i = 0; i< LAND_SIZE; i++) {
	for (var j = 0; j < LAND_SIZE; j++) {
		var cell = instance_create_layer(x0+i*CELL_WIDTH, y0+j*CELL_WIDTH, "LAND", l);	
		cell.depth -= j+LAND_SIZE*y_land;
		
		// walls for collision
		instance_create_layer(x0+i*CELL_WIDTH, y0+j*CELL_WIDTH-1-12, "Instances", o_wall_up);
		instance_create_layer(x0+i*CELL_WIDTH, y0+j*CELL_WIDTH+CELL_WIDTH, "Instances", o_wall_down);
		instance_create_layer(x0+i*CELL_WIDTH-1, y0+j*CELL_WIDTH, "Instances", o_wall_left);
		instance_create_layer(x0+i*CELL_WIDTH+CELL_WIDTH, y0+j*CELL_WIDTH, "Instances", o_wall_right);
	}
}

with (o_wall) {
	if (place_meeting(x, y, o_land)) {
		instance_destroy();	
	}
}

audio_play_sound(a_generate_land, 6, false);

#region tilemap
/* tilemap
for (var i = 0; i< LAND_SIZE; i++) {
	for (var j = 0; j < LAND_SIZE; j++) {
		//var ran_data = irandom_range(1, 3);
		tilemap_set_at_pixel(global.land_tilemap, land_type, x0+i*CELL_WIDTH, y0+j*CELL_WIDTH);
		//tilemap_set_at_pixel(new_land, ran_data, x0+i*CELL_WIDTH, y0+j*CELL_WIDTH);
		//tilemap_set(new_land, ran_data, i, j);
	}
}
*/
#endregion
