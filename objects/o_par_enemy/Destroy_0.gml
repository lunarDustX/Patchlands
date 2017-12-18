/// @description 
var size = array_length_1d(loots);
for (var i = 0; i < size; i++) {
	var rx = irandom_range(-10, 10);
	var ry = irandom_range(-5, 5)
	instance_create_layer(x+rx, y+ry, "Instances", loots[i]);	
}


/*
if (choose(0,1) == 1) {
	instance_create_layer(x, y, "Instances", o_coin);
}
