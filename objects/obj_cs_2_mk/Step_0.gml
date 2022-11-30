if anim_check = 1 {
	if !audio_is_playing(snd_thebigone) && destroy_timer = 0 {
		audio_play_sound(snd_thebigone,1,1)
	}
	if timer != 100 {
		audio_sound_gain(mus_tension_song,timer*.01,0)
	timer += 1
	}
	sin_timer += timer*.002
	x = startx + sin(sin_timer)*timer/10
	y = starty + cos(sin_timer)*timer/15
	big_timer -= 1 
	if big_timer = 0 {
		audio_sound_pitch(snd_thebigone,random_range(0.75,1.5))
	big_timer = irandom_range(10,300)
	}
	if timer > 30 {
		repeat irandom_range(0,1) {
			instance_create_depth(x+16,y+16,depth-1,obj_spiritwell_spirit)
		}
	}
}
if destroy_timer != 0 {
	destroy_timer -= 1
	boom_timer -= 1
	if boom_timer = 0  {
		boom_timer = irandom_range(5,30)
		instance_create_depth(x+16+irandom_range(-5,5),y+16+irandom_range(-5,5),depth -1,obj_cs_2_boom)
	}
	if destroy_timer = 0 {
		instance_destroy(self)
	}
}
	
