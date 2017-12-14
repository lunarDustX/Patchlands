///@description 
len = spd * 4;

hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

x += hspd;
y += vspd;

var dash = instance_create_depth(x, y, depth, o_dash_effect);
dash.sprite_index = sprite_index;
dash.image_index = image_index;