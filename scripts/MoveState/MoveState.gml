///@description 
//GetInput();
if (o_input.weapon_key) {
	weapon_using = 1 - weapon_using;	
}

if (o_input.dash_key) {
	state = DashState;
	alarm[0] = room_speed/6;
}

if (o_input.attack_key) {
	switch (weapon_using) {
		case weapon.sword:
			if (can_slash) {
				image_index = 0;
				state = AttackState;
			}
		break;
		
		case weapon.bow:
			if (arrows > 0) {
				image_index = 0;
				state = AimingState;
			} else {
				show_message("NO ARROWS!");
			}
		break;
	}
}


if (o_input.xaxis == 0 && o_input.yaxis == 0) {
	len = 0;	
} else {
	dir = point_direction(0, 0, o_input.xaxis, o_input.yaxis);
	len = spd;	
	GetFace();
}

hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

//if (place_meeting(x+hspd,y,o_land)) {
if (place_free(x+hspd, y)) {
	x += hspd;
}
//if (place_meeting(x, y+vspd, o_land)) {
if (place_free(x, y+vspd)) {
	y += vspd;
}


// control sprites
image_speed = 1;
if (len == 0) image_index = 0;
sprite_index = s_player_walk;

if (hspd > 0) {
	image_xscale = 1;	
} else if (hspd < 0) {
	image_xscale = -1;	
}
