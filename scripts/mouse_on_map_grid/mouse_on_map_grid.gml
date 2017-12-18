///@description mouse_on_map_grid
///@arg x
///@arg y
var i = argument0,
	j = argument1;
	
var mouse_x_gui = x_room_to_gui(mouse_x); 
var mouse_y_gui = y_room_to_gui(mouse_y); 
if (median(mouse_x_gui, x0_map+MAP_WIDTH*i, x0_map+MAP_WIDTH*(i+1)) == mouse_x_gui
  &&median(mouse_y_gui, y0_map+MAP_WIDTH*j, y0_map+MAP_WIDTH*(j+1)) == mouse_y_gui) {
	return true;		
}
return false;