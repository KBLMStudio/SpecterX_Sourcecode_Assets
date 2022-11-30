if fade_alpha != 1 && fade_check = 0 {
	fade_alpha += .1
	if fade_alpha = 1 {
		fade_check = 1
		room = rm_next
		audio_stop_all()
		surface_resize(application_surface,256,256)
		if global.room_array[global.room_index][1] != -1 {
			audio_play_sound(global.room_array[global.room_index][1],1,1)
		}
		instance_create_depth(0,0,-99,obj_GUI)
		
	}
}
if fade_alpha = .9 && fade_check = 1 {
				instance_create_depth(global.stev_x,global.stev_y,-99,obj_stev)
		instance_create_depth(global.kev_x,global.kev_y,-99,obj_kev)
}
if fade_alpha != 0 && fade_check = 1 {
	fade_alpha -= .1
	if fade_alpha = 0 {
		global.pause_check = 0

	instance_destroy(self)
		
	}
}

