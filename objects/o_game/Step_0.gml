/// @description 
if (o_input.map_key) {
	map_open = !map_open;
	if (map_open == false) {
		global.selected_type = noone;
		with (o_card) instance_destroy();	
	}
}

if (o_input.restart_key) {
	game_restart();	
}

if (map_open) {
	
	
	
	for (var i = 0; i < MAP_SIZE; i++) {
		for (var j = 0; j < MAP_SIZE; j++) {
			if (map_grid_can_generate(i, j) && mouse_on_map_grid(i,j)) {
				if (mouse_check_button_released(mb_left) && global.selected_type!= noone) {
					//show_message(string(global.selected_type));
					generate_land(i, j, global.selected_type);
					global.selected_type = noone;
				}
			}
		}
	}
} 