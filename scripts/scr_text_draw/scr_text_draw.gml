// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_text_draw(){
	if text_talking = 1 {
		if text_index != string_length(text_string[text_string_array]) { 
		text_timer += 1
		if text_timer = 2 {
			text_index += 1
					if string_copy(text_string[text_string_array],text_index,1) != " " {
						if text_voice != -1 {
						audio_play_sound(text_voice,1,0)
						}
					}
					else {
						audio_stop_sound(text_voice)
					}
		text_timer = 0
		}
		}
		else {
			if text_voice != -1 {
			audio_stop_sound(text_voice)
			}
			text_finished = 1
		}
		text_index_temp = 0
		text_x_temp = 0
		text_enter_index = 0
		text_y_temp = 0
		text_space_check_index = 0
		text_space_check = 0
		do {
		text_index_temp += 1
			draw_set_color(c_white)
			if string_copy(text_string[text_string_array],text_index_temp,1) = " " {
				text_space_check = 0
				text_temp_x_check = text_x_temp
				do {
				text_space_check_index += 1
					if string_copy(text_string[text_string_array],text_space_check_index,1) = " " {
						text_space_check = 1
					}
					else {
						text_temp_x_check += 1
					}
				}
				until text_space_check = 1 || text_space_check_index = string_length(text_string[text_string_array])
				if text_temp_x_check >= floor(text_width/7){
		text_enter_index = text_x_temp
				text_y_temp += 1
				text_x_temp = -4/7
			}
			text_x_temp += 4/7
			}
			else {

			if string_copy(text_string[text_string_array],text_index_temp,1) = "/" {
				if string_copy(text_string[text_string_array],text_index_temp+1,1) = "/" {
					text_enter_index = text_index_temp + 2
					text_x_temp = 0 
					text_y_temp += 1
				}
		}
		else {
			draw_text(text_x + text_x_temp*7,text_y+text_y_temp*8,string_copy(text_string[text_string_array],text_index_temp,1))
	text_x_temp += 1
	}

		}
		}
		until text_index_temp = text_index
	}
}
