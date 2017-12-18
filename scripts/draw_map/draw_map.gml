///@description draw_map
// Draw a background
draw_set_alpha(.6);
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
draw_set_alpha(1);

#region Draw miniMap
for (var i = 0; i < MAP_SIZE; i++) {
	for (var j = 0; j < MAP_SIZE; j++) {
		if (map_array[i, j] == noone) {
			if (global.selected_type != noone && mouse_on_map_grid(i, j) && map_grid_can_generate(i, j)) {
				draw_sprite(s_map_empty, 1, x0_map+i*MAP_WIDTH, y0_map+j*MAP_WIDTH);		
			} else {
				draw_sprite(s_map_empty, 0, x0_map+i*MAP_WIDTH, y0_map+j*MAP_WIDTH);	
			}
		} else {
			draw_sprite(map_array[i, j], 0, x0_map+i*MAP_WIDTH, y0_map+j*MAP_WIDTH);	
		}
	}
}
#endregion