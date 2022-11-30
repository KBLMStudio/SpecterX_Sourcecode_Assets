if timer <= 64 {
//audio_sound_gain(snd_pumpkin_laugh,0,1/((timer+1)/2))
	timer += 1
	image_xscale += 8/65
	image_yscale += 8/65
	image_angle += 360/65
	if timer = 64 {
		image_speed = 1
}
}


draw_sprite_ext(spr_pumpkin,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,1)
