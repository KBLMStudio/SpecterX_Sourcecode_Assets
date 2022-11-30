if !instance_exists(obj_text_bubble) {
if v_speed != 0 && h_speed = 0 {
	if !place_meeting(x,y+v_speed,obj_wall_parent){
	y = y + v_speed
}

}
else if v_speed = 0 && h_speed != 0 {
	if !place_meeting(x+h_speed,y,obj_wall_parent) {
		x =x + h_speed
	}
}
else if v_speed != 0  && h_speed!= 0 {
	
	if !place_meeting(x+h_speed*2*sqrt(abs(h_speed)/2),y+v_speed*2*sqrt(abs(v_speed)/2),obj_wall_parent) { 
		x = x + h_speed*2*sqrt(abs(h_speed)/2)
		y =y + v_speed*2*sqrt(abs(v_speed)/2)
	}
	else if !place_meeting(x+h_speed*2*sqrt(abs(h_speed)/2),y,obj_wall_parent){
		x = x+ h_speed*2*sqrt(abs(h_speed)/2)
	}
	else if !place_meeting(x,y+v_speed*2*sqrt(abs(v_speed)/2),obj_wall_parent){
		y = y + v_speed*2*sqrt(abs(v_speed)/2)
	}
}
}
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
							instance_create_depth(11,151,depth-9,obj_enemy_damage)
			if global.stev_array[0] = 0 {
				instance_destroy(obj_bullet_pattern)
				instance_destroy(obj_health_tab_target)
				instance_destroy(obj_battle_attack_device)
				instance_destroy(obj_cursor_mirror)
						instance_destroy(obj_battlebox_line)
				obj_battlebox.attack_end = 1
					global.battle_defend_kev = 0
				global.battle_defend_stev = 0
								global.battle_turn += 1
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
						instance_create_depth(91,151,depth-9,obj_enemy_damage)
			if global.kev_array[0] = 0 {
				instance_destroy(obj_bullet_pattern)
				instance_destroy(obj_health_tab_target)
				instance_destroy(obj_battle_attack_device)
						instance_destroy(obj_cursor_mirror)
						instance_destroy(obj_battlebox_line)
				obj_battlebox.attack_end = 1
				global.battle_defend_kev = 0
				global.battle_defend_stev = 0
				global.battle_turn += 1
				instance_destroy(self)
			}
		}
		instance_destroy(instance_place(x,y,obj_bullet_pattern))
	}
}
	if attack_timer != 0 {
		if attack_timer > 10{
		sprite_index = spr_ghost_icon_0
		}
		else {
			sprite_index = spr_ghost_icon_1
		}
	attack_timer -= 1
	}
	else {
		sprite_index = spr_ghost_icon
	}
	if global.battle_enemy_health = 0 {
			instance_destroy(obj_bullet_pattern)
				instance_destroy(obj_health_tab_target)
				instance_destroy(obj_battle_attack_device)
				obj_battlebox.attack_end = 1
					global.battle_defend_kev = 0
				global.battle_defend_stev = 0

				instance_destroy(self)
	}
	if global.kev_array[0] = 0 && global.stev_array[0] = 0 {
		global.ghost_x = x
		global.ghost_y = y
		room = rm_death
	}
	if place_meeting(x,y,obj_battlebox){
		if x > obj_battlebox.x {
		if !place_meeting(obj_battlebox.image_xscale*18/2 + obj_battlebox.x -  8.25,y,obj_battlebox) {
			x = obj_battlebox.image_xscale*18/2 + obj_battlebox.x -  8.25
		}
		}
		else {
		if !place_meeting(obj_battlebox.x - obj_battlebox.image_xscale*18/2 + .5,y,obj_battlebox){
			x =  obj_battlebox.x - obj_battlebox.image_xscale*18/2 +.5
		}
		}
	}
