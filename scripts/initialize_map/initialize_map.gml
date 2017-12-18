///@description initialize_map
var view_width = camera_get_view_width(view_camera[0]);
var view_height = camera_get_view_height(view_camera[0]);
//display_set_gui_size(view_width, view_height);

// miniMap origin
x0_map = (view_width - MAP_WIDTH * MAP_SIZE)/2;
y0_map = (view_height- MAP_WIDTH * MAP_SIZE)/2 -60;

// initialize miniMap
for (var i = 0; i < MAP_SIZE; i++) {
	for (var j = 0; j < MAP_SIZE; j++) {
		map_array[i, j] = noone;	
	}
}

// initialize cards array
cards[land.forest] = 3;
cards[land.snow] = 3;
cards[land.lava] = 3;
cards[land.forest] -= 1;

// generate first land
generate_land(1, 1, land.forest);

