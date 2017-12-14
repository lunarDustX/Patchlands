///@description mouse_on_map_grid
///@arg x
///@arg y
var i = argument0,
	j = argument1;
	
var mouse_x_gui = x_room_to_gui(mouse_x); //(mouse_x - camera_get_view_x(view_camera[0])) * global.view_scale;
var mouse_y_gui = y_room_to_gui(mouse_y); //(mouse_y - camera_get_view_y(view_camera[0])) * global.view_scale;
if (median(mouse_x_gui, x0_map+64*i, x0_map+64*(i+1)) == mouse_x_gui
  &&median(mouse_y_gui, y0_map+64*j, y0_map+64*(j+1)) == mouse_y_gui) {
	return true;		
}
return false;