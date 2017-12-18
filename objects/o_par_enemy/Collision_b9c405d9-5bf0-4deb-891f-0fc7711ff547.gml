/// @description 
if (other.image_index == other.DMGFrame) {
	hp -= other.damage;	
	flash = 0.8;
	audio_play_sound(a_hit, 8, false);
}