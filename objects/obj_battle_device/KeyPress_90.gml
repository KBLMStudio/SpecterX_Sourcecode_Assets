if battle_step != 4 {
	if battle_step = 0 {
		if text_finished = 1 {
			battle_step =1
			frame_check = 0
			cursor_index = 0
			step_check = 0
		}
	}
	else if battle_step = 1 || battle_step = 2 {
		if step_check = 0  && frame_check = 1{
			audio_play_sound(snd_select,1,0)
			script_execute(scr_text_setup)
			text_width = 150
			text_talking = 1
			text_x = 4
			text_y = 97
			text_finished = 0
			step_check = 1
			if cursor_index = 2 {
				text_string[0] = global.battle_enemy_name + "://" + "ATK: " + string(global.battle_enemy_damage) + " DEF: " + string(global.battle_enemy_defense) + "//" + global.battle_enemy_desc
			}
			if cursor_index = 1 {
				if battle_step = 1 {
					text_string[0] = "Steve defended!"
					global.battle_defend_stev = 1
				}
				if battle_step = 2 {
					text_string[0] = "Kevin defended!"
					global.battle_defend_kev = 1
				}
			}
			if cursor_index = 0 {
				instance_create_depth(80,112,depth,obj_player_attack)
			}
		}
		if step_check = 1 {
			if cursor_index = 1 || 2{
				if text_finished = 1 {
					if global.kev_array[0] != 0 && battle_step = 1{
						battle_step = 2
						step_check = 0
						frame_check = 0
					}
					else {
						battle_step = 3
						step_check = 0
						if global.stev_array[0] = 0 {
							target = 1 
						}
						else if global.kev_array[0] = 0 {
							target = 0
						}
						else {
							target = irandom_range(0,1)
						}
						if target = 0 {
							instance_create_depth(2,140,depth-9,obj_health_tab_target)
						}
						if target = 1 {
							instance_create_depth(82,140,depth-9,obj_health_tab_target)
						}
						instance_create_depth(x,y,depth,obj_battle_attack_device)
					}
				}
			}
		}
		if step_check = 3 {
			if text_finished = 1 {
				if global.battle_enemy_health != 0 {
					if battle_step = 1 && global.kev_array[0] != 0 {
						battle_step = 2
						step_check = 0
					}
					else {
						battle_step = 3
						if global.stev_array[0] = 0 {
							target = 1 
						}
						else if global.kev_array[0] = 0 {
						target = 0
						}
						else {
						target = irandom_range(0,1)
						}
						if target = 0 {
							instance_create_depth(2,140,depth-9,obj_health_tab_target)
						}
						if target = 1 {
							instance_create_depth(82,140,depth-9,obj_health_tab_target)
						}
						instance_create_depth(x,y,depth,obj_battle_attack_device)
						step_check = 0
					}
				}
				else {
					battle_step = 4
					step_check = 0
					text_index = 0
				}
			}
		}
	}		
if battle_step = 4 {

script_execute(scr_text_setup)
text_width = 150
text_talking = 1
text_x = 4
text_y = 97
			if global.battle_enemy_health = 0 {
					battle_step = 4 
										instance_create_depth(0,0,depth,obj_enemy_death)
						text_string[0] = global.battle_enemy_name + " was//defeated!"
	text_talking = 1
	if global.stev_array[5] < global.battle_enemy_exp {
	global.stev_array[4] += 20
	text_string[1] = "Steve gained 20 EXP!"
	}
	else {
		global.stev_array[4] += ceil(20/(global.kev_array[5]-global.battle_enemy_exp))
		text_string[1] = "Steve gained " + string(ceil(20/(global.kev_array[5]-global.battle_enemy_exp))) + " EXP!"
	}
	if global.stev_array[4] >= 100 {
		global.stev_array[4] -= 100
		if global.stev_array[5] != 99 {
		global.stev_array[5] += 1
		text_string[1] += "//...And they leveled up to LV " + string(global.kev_array[5]) + "!"
		if global.stev_array[5] = 3 || global.stev_array[5] = 12 || global.stev_array[5] = 21 || global.stev_array[5] = 30 || global.stev_array[5] = 39 || global.stev_array[5] = 48 || global.stev_array[5] = 57 || global.stev_array[5] = 66 || global.stev_array[5] = 75 || global.stev_array[5] = 84 || global.stev_array[5] = 93 {
			global.stev_array[1] += 1
			global.stev_array[0] += 1
			text_string[1] += "//...And they gained 1 HP!"
		}
		else if global.stev_array[5] = 6 || global.stev_array[5] = 15 || global.stev_array[5] = 24 || global.stev_array[5] = 33 || global.stev_array[5] = 42 || global.stev_array[5] = 51 || global.stev_array[5] = 60 || global.stev_array[5] = 69 || global.stev_array[5] = 78 || global.stev_array[5] = 87 || global.stev_array[5] = 96{
			global.stev_array[2] += 1
			text_string[1] += "//...And they gained 1 attack point (AP:" + string(global.stev_array[2]) + ")!"
		}
		else if global.stev_array[5] = 9 || global.stev_array[5] = 18 || global.stev_array[5] = 27 || global.stev_array[5] = 36 || global.stev_array[5] = 45 || global.stev_array[5] = 54 || global.stev_array[5] = 63 || global.stev_array[5] = 72 || global.stev_array[5] = 81 || global.stev_array[5] = 90 || global.stev_array[5] = 99 {
			global.stev_array[3] += 1
			text_string[1] += "//...And they gained 1 defense point (DP:" + string(global.stev_array[3]) + ")!"
			}
		}
	}
	if global.kev_array[5] < global.battle_enemy_exp {
	global.kev_array[4] += 20
	text_string[2] = "kevin gained 20 EXP!"
	}
	else {
		global.kev_array[4] += ceil(20/(global.kev_array[5]-global.battle_enemy_exp))
		text_string[2] = "kevin gained " + string(ceil(20/(global.kev_array[5]-global.battle_enemy_exp))) + " EXP!"
	}
	if global.kev_array[4] >= 100 {
		global.kev_array[4] -= 100
		if global.kev_array[5] != 99 {
		global.kev_array[5] += 1
		text_string[2] += "//...And they leveled up to LV " + string(global.kev_array[5]) + "!"
		if global.kev_array[5] = 3 || global.kev_array[5] = 12 || global.kev_array[5] = 21 || global.kev_array[5] = 30 || global.kev_array[5] = 39 || global.kev_array[5] = 48 || global.kev_array[5] = 57 || global.kev_array[5] = 66 || global.kev_array[5] = 75 || global.kev_array[5] = 84 || global.kev_array[5] = 93 {
			global.kev_array[1] += 1
			global.kev_array[0] += 1
			text_string[2] += "//...And they gained 1 HP!"
		}
		else if global.kev_array[5] = 6 || global.kev_array[5] = 15 || global.kev_array[5] = 24 || global.kev_array[5] = 33 || global.kev_array[5] = 42 || global.kev_array[5] = 51 || global.kev_array[5] = 60 || global.kev_array[5] = 69 || global.kev_array[5] = 78 || global.kev_array[5] = 87 || global.kev_array[5] = 96{
			global.kev_array[2] += 1
			text_string[2] += "//...And they gained 1 attack point (AP:" + string(global.kev_array[2]) + ")!"
		}
		else if global.kev_array[5] = 9 || global.kev_array[5] = 18 || global.kev_array[5] = 27 || global.kev_array[5] = 36 || global.kev_array[5] = 45 || global.kev_array[5] = 54 || global.kev_array[5] = 63 || global.kev_array[5] = 72 || global.kev_array[5] = 81 || global.kev_array[5] = 90 || global.kev_array[5] = 99 {
			global.kev_array[3] += 1
			text_string[2] += "//...And they gained 1 defense point (DP:" + string(global.kev_array[3]) + ")!"
			}
		}
	}
}
}
}
else {
	if text_string_array != array_length(text_string)-1 && text_finished = 1 {
	text_string_array += 1
	
	text_index = 1
text_width = 150
text_talking = 1
text_x = 4
text_y = 97
	}
	else {
			instance_create_depth(0,0,depth,obj_fade_battle)
		}
}
