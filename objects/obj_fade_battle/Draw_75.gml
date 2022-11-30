alpha_check = alpha_check + alpha_check_step
	if global.battle_music != 0 {
	audio_sound_gain(global.battle_music,1-alpha_check,0)
	}
if alpha_check = 1 {
	alpha_check_step = -.1
	if global.battle_music != 0 {
audio_stop_sound(global.battle_music)
audio_resume_all()
	}
	room = global.back_room
	if global.kev_array[0] = 0 {
		global.kev_array[0] = 1
	}
	if global.stev_array[0] = 0 {
		global.stev_array[0] = 1
	} 
	surface_resize(application_surface,global.back_view_w,global.back_view_h)
}
if alpha_check = 0 {
	room_persistent = false
	global.pause_check = 0
	instance_destroy(self)
	
}
draw_sprite_ext(spr_VOID,0,0,0,1,1,0,c_black,alpha_check)
