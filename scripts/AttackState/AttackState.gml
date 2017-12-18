///@description
image_speed = 1;
sprite_index = s_player_slash;
if (!instance_exists(o_slash)) {
	slash_stage++;
	var offsetX = lengthdir_x(6, dir);
	var offsetY = lengthdir_y(6, dir);
	switch (slash_stage) {
		case 1:
			var slash = instance_create_depth(x+offsetX, y+offsetY+4, depth-1, o_slash1);	
		break;
		
		case 2:
			var slash = instance_create_depth(x+offsetX, y+offsetY+4, depth-1, o_slash2);	
		break;
		
		case 3:
			var slash = instance_create_depth(x+offsetX, y+offsetY+4, depth-1, o_slash3);	
		break;
		default:
			show_message(string(slash_stage));
		break;
	}
	slash.image_angle = dir;
}

if (o_input.attack_key && combo < 3) {
	combo++;
}





#region 4-Direction Sprite
/*
switch (sprite_index) {
	case s_player_walk_down:
		sprite_index = s_player_attack_down;
	break;
	
	case s_player_walk_up:
		sprite_index = s_player_attack_up;
	break;
	
	case s_player_walk_right:
		sprite_index = s_player_attack_right;
	break;
	
	case s_player_walk_left:
		sprite_index = s_player_attack_left;
	break;
}
*/
#endregion

