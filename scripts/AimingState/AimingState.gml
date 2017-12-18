///@description Aiming 
image_speed = 0;
//sprite_index = s_player_aiming;

if (!instance_exists(o_aiming_bow)) {
	var offsetX = lengthdir_x(10, dir);
	var offsetY = lengthdir_y(10, dir);
	instance_create_depth(x+offsetX, y+offsetY, depth+1, o_aiming_bow);
	//aiming_bow.image_angle = dir_aiming;
}

var dir_aiming = point_direction(0, 0, o_input.xaxis, o_input.yaxis);
with (o_aiming_bow) {
	image_angle = dir_aiming;
	var offsetX = lengthdir_x(10, dir_aiming);
	var offsetY = lengthdir_y(10, dir_aiming);
	x = other.x + offsetX;
	y = other.y + offsetY;
}


#region shoot
if (o_input.shoot_key) {
	show_message("SHOOT");
	state = MoveState;
	/* shoot	
		image_index = 0;
		sprite_index = s_player_shoot;
	*/
	with (o_aiming_bow) instance_destroy();
	//var arrow = instance_create_layer(x, y, "Instances", o_arrow);
}
#endregion

