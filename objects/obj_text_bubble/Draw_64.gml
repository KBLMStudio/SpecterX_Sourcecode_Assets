


	draw_set_color(c_white)
	draw_sprite_ext(sprite_index,0,x*2,y*2,image_xscale,image_yscale,0,c_white,1)
	text_timer += 1
	if text_timer >= 2 {
		
		if text_index != string_length(text_string[text_string_array]) {

		text_index += 1
					if string_copy(text_string[text_string_array],text_index,1) != " " {
						audio_stop_sound(text_voice)
						audio_play_sound(text_voice,1,0)
					}
					else {
						audio_stop_sound(text_voice)
					}
	}
	else {
		audio_stop_sound(text_voice)
	}
		text_timer = 0
	} 
	draw_set_color(c_black)
	draw_text_ext(x*2+4,y*2-(image_yscale*16/2)+2 ,string_copy(text_string[text_string_array],1,text_index),9,text_width)
		
		
		
