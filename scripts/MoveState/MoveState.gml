///@description 
GetInput();

if (dash_key) {
	state = DashState;
	alarm[0] = room_speed/6;
}

if (attack_key) {
	image_index = 0;
	state = AttackState;	
}

//dir = point_direction(0, 0, xaxis, yaxis);

if (xaxis == 0 && yaxis == 0) {
	len = 0;	
} else {
	dir = point_direction(0, 0, xaxis, yaxis);
	len = spd;	
	GetFace();
}

hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

x += hspd;
y += vspd;


// control sprites
image_speed = 1;
if (len == 0) image_index = 0;

/*
switch (face) {
	case RIGHT:
		sprite_index = s_player_walk_right;	
	break;
	
	case UP:
		sprite_index = s_player_walk_up;
	break;
	
	case LEFT:
		sprite_index = s_player_walk_left;
	break;
	
	case DOWN:
		sprite_index = s_player_walk_down;
	break;
}
*/

sprite_index = s_player_walk;
//image_index = 0;
if (hspd > 0) {
	image_xscale = 1;	
} else if (hspd < 0) {
	image_xscale = -1;	
}
