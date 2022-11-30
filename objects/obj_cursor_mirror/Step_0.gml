x = abs(obj_cursor.x - 80) + 80 - 8
y = obj_cursor.y
if place_meeting(x,y,obj_bullet_pattern){
	if place_meeting(x,y,obj_bullet_parent_red) && attack_timer > 9 {
		id_check = instance_place(x,y,obj_bullet_parent_red)
		instance_create_depth(id_check.x,id_check.y,id_check.depth,obj_bullet_return)
		obj_bullet_return.sprite_index = id_check.sprite_index
		instance_destroy(id_check)
	}
	else {
	audio_play_sound(snd_battle_hurt,1,0)
	if obj_battle_attack_device.target = 0 {
		damage = round((global.battle_enemy_damage - global.stev_array[3])/(global.battle_defend_stev + 1))
		if damage <= 0 {
			damage = 1
		}
		global.stev_array[0] -=  damage 
		if global.stev_array[0] < 0 {
			global.stev_array[0] = 0 
		}
		obj_cursor.damage = damage
							instance_create_depth(11,151,depth-9,obj_enemy_damage)
			if global.stev_array[0] = 0 {
				instance_destroy(obj_bullet_pattern)
				instance_destroy(obj_health_tab_target)
				instance_destroy(obj_battle_attack_device)
				obj_battlebox.attack_end = 1
					global.battle_defend_kev = 0
				global.battle_defend_stev = 0
				instance_destroy(self)
			}
		}
		else {
			damage = round((global.battle_enemy_damage - global.kev_array[3])/(global.battle_defend_kev + 1))
			if damage <= 0 {
				damage = 1
			}
					global.kev_array[0] -= damage 
						if global.kev_array[0] < 0 {
							global.kev_array[0] = 0
						}
						obj_cursor.damage = damage
						instance_create_depth(91,151,depth-9,obj_enemy_damage)
			if global.kev_array[0] = 0 {
				instance_destroy(obj_bullet_pattern)
				instance_destroy(obj_health_tab_target)
				instance_destroy(obj_battle_attack_device)
				instance_destroy(obj_battlebox_line)
				obj_battlebox.attack_end = 1
				global.battle_defend_kev = 0
				global.battle_defend_stev = 0
				instance_destroy(self)
			}
		}
		instance_destroy(instance_place(x,y,obj_bullet_pattern))
	}
}

	if global.battle_enemy_health = 0 {
			instance_destroy(obj_bullet_pattern)
				instance_destroy(obj_health_tab_target)
				instance_destroy(obj_battle_attack_device)
				instance_destroy(obj_battlebox_line)
				obj_battlebox.attack_end = 1
					global.battle_defend_kev = 0
				global.battle_defend_stev = 0
				instance_destroy(self)
	}
