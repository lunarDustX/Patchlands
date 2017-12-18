/// @description
enum enemy {
	idle,
	alert,
	attack,
	hit,
}

flash = 0;
spd = 1;
hp = 10;

state = enemy.idle;
time_counter = 0;

loots = [o_coin];

dir = 0;
hspd = 0;
vspd = 0;
