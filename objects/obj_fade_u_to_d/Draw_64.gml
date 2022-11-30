if fade_check = 0 {
	fade_timer += .1
}
if fade_timer = 1 { 
	fade_check = 1
	room = global.room_array[global.room_index][0] 
	if !audio_is_playing(global.room_array[global.room_index][1]) {
	audio_stop_all()
	if global.room_array[global.room_index][1] != -1 {
		audio_play_sound(global.room_array[global.room_index][1],999,1)
	}
	}
}
if fade_check = 1 {
	fade_timer -= .1
}

if fade_timer = 0 {
	global.pause_check = 0
	instance_destroy(self)
}
draw_sprite_ext(spr_VOID,0,0,0,99,99,0,c_black,fade_timer)
