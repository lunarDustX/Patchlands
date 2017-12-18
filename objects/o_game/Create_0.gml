/// @description
randomize();
var view_width = camera_get_view_width(view_camera[0]);
var view_height = camera_get_view_height(view_camera[0]);
display_set_gui_size(view_width, view_height);
global.view_scale = display_get_gui_width()/camera_get_view_width(view_camera[0]);
global.selected_type = noone;
initialize_map();
map_open = false;

inventory_create(12);
show_inventory = true;



