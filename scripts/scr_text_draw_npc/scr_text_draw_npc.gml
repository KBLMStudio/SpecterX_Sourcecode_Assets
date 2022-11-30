// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_text_draw_npc(){
	if text_talking = 1 {
	if text_portrait = 0 {
		draw_sprite_ext(spr_text_box,0,0,256-32,256/32,1,0,c_white,1)
		x_port = 0
	}
	else {
		if text_portrait[text_string_array] != 0 {
		draw_sprite_ext(spr_text_box_0,0,0,256-32,1,1,0,c_white,1)
		draw_sprite_ext(spr_text_box,0,32,256-32,224/32,1,0,c_white,1)
		draw_sprite(text_portrait[text_string_array],0,0,256-32)
		x_port = 32
		}
		else {
				draw_sprite_ext(spr_text_box,0,0,256-32,256/32,1,0,c_white,1)
				x_port = 0
		}
		}
		if text_index != string_length(text_string[text_string_array]) { 
		text_timer += text_speed_temp
		if text_timer >= 2 {
			text_speed_temp = text_speed
			text_index += 1
			if string_copy(text_string[text_string_array],text_index,1) = "." || string_copy(text_string[text_string_array],text_index,1) = "!" || string_copy(text_string[text_string_array],text_index,1) = "?" {
				text_speed_temp = text_speed * .2
		}
		if string_copy(text_string[text_string_array],text_index,1) = "," {
			text_speed_temp = text_speed * .3
		}
					if string_copy(text_string[text_string_array],text_index,1) != " " {
						if text_voice != -1 {
							if !audio_is_playing(text_voice[text_string_array]) {
						audio_play_sound(text_voice[text_string_array],1,0)
							}
						}
					}
					else {
						audio_stop_sound(text_voice[text_string_array])
					}
		text_timer = 0
		}
		}
		else {
			if text_voice != -1 {
			audio_stop_sound(text_voice[text_string_array])
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
				text_temp_x_check = text_x_temp + x_port/7
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
		if text_y_temp != 2 {
				text_y_temp += 1
				text_x_temp = -4/7
		}
			}
			text_x_temp += 4/7
			}
			else {

			if string_copy(text_string[text_string_array],text_index_temp,1) = "/" {
				if string_copy(text_string[text_string_array],text_index_temp+1,1) = "/" {
					text_enter_index = text_index_temp + 2
						if text_y_temp != 2 {
					text_x_temp = 0 
				
					text_y_temp += 1
					}
				}
		}
		else {
			draw_text(text_x + text_x_temp*7 + x_port,text_y+text_y_temp*8,string_copy(text_string[text_string_array],text_index_temp,1))
	text_x_temp += 1
	}

		}
		}
		until text_index_temp = text_index
	}
}

