///@description initialize_map
x0_map = (view_wport[0]- 64*MAP_SIZE)/2;
y0_map = (view_hport[0]- 64*MAP_SIZE)/2 -60;

for (var i = 0; i < MAP_SIZE; i++) {
	for (var j = 0; j < MAP_SIZE; j++) {
		map_array[i, j] = noone;	
	}
}

cards[land.forest] = 3;
cards[land.snow] = 3;
cards[land.lava] = 3;

cards[land.forest] -= 1;
generate_land(1, 1, land.forest);

