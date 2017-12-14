/// @description 
var mouse_x_gui = x_room_to_gui(mouse_x);
var mouse_y_gui = y_room_to_gui(mouse_y);

if (mouse_x_gui == median(mouse_x_gui, x0, x0+sprite_width) 
  &&mouse_y_gui == median(mouse_y_gui, y0, y0+sprite_height)) {
	global.selected_type = type;
	instance_destroy();
}
