/// @description 
if (state == AttackState) {
	if (slash_stage >= combo) {
		state = MoveState;	
		slash_stage = 0;
		combo = 1;
	}
}
