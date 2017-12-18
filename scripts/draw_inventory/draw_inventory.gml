var view_width = display_get_gui_width();
var view_height = display_get_gui_height();
draw_set_alpha(0.6);
draw_rectangle(0, view_height-32, view_width, view_height, false);
draw_set_alpha(1);

var size = array_length_1d(global.inventory);
for (var i = 0; i < size; i++) {
	draw_sprite(s_inventory_box, 0, 32*i, view_height-32);	
	if (global.inventory[i] != noone) {
		var spr = global.inventory_sprites[i];
		draw_sprite(spr, 0, 32*i, view_height-32);
	}
}
draw_sprite(s_box_selected, 0, 32*global.inventory_index, view_height-32);

for (var i = 0; i < size; i++) {
	if (global.inventory[i] != noone) {
		draw_set_font(fnt_inventory);
		draw_set_color(c_red);
		draw_text(32*(i+1)-8, view_height-10, string(global.count[i]));
		draw_set_color(c_white);
	}
}