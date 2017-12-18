/// @description 
if (o_input.map_key) {
	map_open = !map_open;
	if (map_open == false) {
		show_inventory = true;
		global.selected_type = noone;
		with (o_card) instance_destroy();
		instance_activate_object(o_life);
	} else {
		show_inventory = false;
		instance_deactivate_object(o_life);
	}
}

if (o_input.restart_key) {
	game_restart();	
}

for (var k = 0; k < 10; k++) {
	if (o_input.slot_key[k]) {
		global.inventory_index = k;	
	}
}

if (map_open) {
	for (var i = 0; i < MAP_SIZE; i++) {
		for (var j = 0; j < MAP_SIZE; j++) {
			if (map_grid_can_generate(i, j) && mouse_on_map_grid(i,j)) {
				if (mouse_check_button_released(mb_left) && global.selected_type!= noone) {
					generate_land(i, j, global.selected_type);
					global.selected_type = noone;
				}
			}
		}
	}
} 

//inventory
if (mouse_wheel_up()) {
	global.inventory_index = (global.inventory_index+1)%12;	
}
if (mouse_wheel_down()) {
	global.inventory_index = (global.inventory_index-1+12)%12;	
}