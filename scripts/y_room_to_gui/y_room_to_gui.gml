///@description y_room_to_gui
///@value

var _y = argument0;
return (_y - camera_get_view_y(view_camera[0])) * global.view_scale;
