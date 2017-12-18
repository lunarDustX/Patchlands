///@description inventory_add_item
///@arg item
var item = argument0;
//var size = array_length_1d(global.inventory);
var index = inventory_find_item(item);

if (index == -1) { // inventory full
	show_message("FULL");
	exit;
}

if (global.inventory[index] == noone) { // slot empty
	global.inventory[index] = item;
	global.count[index] = 1;
	global.inventory_sprites[index] = item.sprite_inv;
} else {
	if (global.inventory[index] != item) { // error
		show_message("ERROR");	
		exit;
	}
	global.count[index]++;
}



