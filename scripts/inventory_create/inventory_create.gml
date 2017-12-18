///@arg size
var _size = argument0;
global.inventory = [];
global.count = [];
global.inventory_sprites = [];
global.inventory_index = 0;
for (var i = 0; i < _size; i++) {
	global.inventory[i] = noone;
	global.count[i] = 0;
	global.inventory_sprites[i] = noone;
}