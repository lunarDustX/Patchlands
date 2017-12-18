//@description
#macro RIGHT 0
#macro UP 1
#macro LEFT 2
#macro DOWN 3

#macro MAP_SIZE 3
#macro MAP_WIDTH 64
#macro LAND_SIZE 3
#macro CELL_WIDTH 64

#macro NUM_OF_LAND 3

enum land {
	snow, 
	forest, 
	lava,
}

enum weapon {
	sword,
	bow,
}

/*
enum st {
	idle = 0,
	attack = 1,
	walk = 2,
}

enum dir {
	right = 0,
	down = 1,
	left = 2,
	up = 3,
}