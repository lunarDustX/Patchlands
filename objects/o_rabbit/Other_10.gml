/// @description Idle State
time_counter++;
if (time_counter > room_speed * 2) {
	if (choose(0, 1) == 1) {
		dir = irandom(359);
		hspd = lengthdir_x(spd, dir);
		vspd = lengthdir_y(spd, dir);
		//if (hspd > 0)
		state = rabbit.walk;	
	}
	time_counter = 0;	
}