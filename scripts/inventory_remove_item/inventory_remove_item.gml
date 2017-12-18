///@inventory_remove_item
///@arg item
var item = argument0;
var index = inventory_find_item(item);

if (index == -1) {
	show_message("error");
	exit;
}

global.count[index]--;
if (global.count[index] == 0) {
	global.inventory[index] = noone;	
	global.inventory_sprites[index] = noone;
}