/// @description 
global.view_scale = display_get_gui_width()/camera_get_view_width(view_camera[0]);
global.land_layer = layer_create(199);
global.selected_type = noone;
initialize_map();
map_open = 0;


