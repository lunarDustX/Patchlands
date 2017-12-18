/// @description 
z += z_spd;
z_spd += grav;

if (z >= 0) {
	can_pickup = true;
	var bounce_factor = 0.25;
	z_spd = -z_spd * bounce_factor;
	
	if (z_spd > -1) {
		z_spd = 0;
		z = 0;
	}
}