///@description GetInput
#region keyboard 
up_key = keyboard_check(ord("W"));
down_key = keyboard_check(ord("S"));
left_key = keyboard_check(ord("A"));
right_key = keyboard_check(ord("D"));
dash_key = keyboard_check_pressed(ord("J"));
attack_key = keyboard_check_pressed(ord("K"));

xaxis = right_key - left_key;
yaxis = down_key - up_key;

#endregion

#region gamepad
if (gamepad_is_connected(0)) {
	gamepad_set_axis_deadzone(0, 0.35);
	xaxis = gamepad_axis_value(0, gp_axislh);
	yaxis = gamepad_axis_value(0, gp_axislv);
	dash_key = gamepad_button_check_pressed(0, gp_face2);
	attack_key = gamepad_button_check_pressed(0, gp_face1);
	shoot_key = gamepad_button_check_released(0, gp_face1);
	weapon_key = gamepad_button_check_pressed(0, gp_shoulderr);
}
#endregion