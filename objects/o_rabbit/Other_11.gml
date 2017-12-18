/// @description Walk State
if (place_free(x+hspd, y)) {
	x += hspd;
}
if (place_free(x, y+vspd)) {
	y += vspd;
}


time_counter++;
if (time_counter > room_speed * 3) {
	if (choose(0, 1) == 1) {
		state = rabbit.idle;	
	}
	time_counter = 0;	
}
