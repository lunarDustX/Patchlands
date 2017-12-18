///@description inventory_find_item
///@arg item
var item = argument0;
var size = array_length_1d(global.inventory);

for (var i = 0; i < size; i++) {
	if (global.inventory[i] == item) {
		return i;	
	}
}

for (var i = 0; i < size; i++) {
	if (global.inventory[i] == noone) {
		return i;	
	}
}

return (-1);