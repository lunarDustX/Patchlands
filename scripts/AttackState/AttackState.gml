///@description
image_speed = 1;
sprite_index = s_slash;
if (!instance_exists(o_slash)) {
	var offsetX = lengthdir_x(6, dir);
	var offsetY = lengthdir_y(6, dir);
	var slash = instance_create_depth(x+offsetX, y+offsetY+4, depth-1, o_slash);	
	slash.image_angle = dir;
	//slash.image_xscale = image_xscale;
}

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

