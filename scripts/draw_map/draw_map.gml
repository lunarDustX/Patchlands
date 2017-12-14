///@description draw_map
draw_set_alpha(.5);
//draw_set_color(c_black);
draw_rectangle(0, 0, display_get_width(), display_get_height(), false);
draw_set_alpha(1);

for (var i = 0; i < MAP_SIZE; i++) {
	for (var j = 0; j < MAP_SIZE; j++) {
		if (map_array[i, j] == noone) {
			if (mouse_on_map_grid(i, j) && map_grid_can_generate(i, j)) {
				draw_sprite(s_map_empty, 1, x0_map+i*64, y0_map+j*64);		
			} else {
				draw_sprite(s_map_empty, 0, x0_map+i*64, y0_map+j*64);	
			}
		} else {
			draw_sprite(map_array[i, j], 0, x0_map+i*64, y0_map+j*64);	
		}
	}
}