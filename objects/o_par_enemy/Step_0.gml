/// @description
if (hp <= 0 && state != enemy.hit) {
	instance_destroy();
}

event_user(state);
