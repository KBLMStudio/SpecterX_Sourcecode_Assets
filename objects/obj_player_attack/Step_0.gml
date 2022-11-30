size += 3/300
audio_sound_pitch(snd_tone,1 + size)
if size = 1 + 30/300{
		if obj_battle_device.battle_step = 1 {
			damage = global.stev_array[2]
		}
		else {
			damage = global.kev_array[2]
		}

obj_battle_device.damage = damage
obj_battle_device.step_check = 3 
if obj_battle_device.battle_step = 1 {
	obj_battle_device.text_string[0] = "Steve dealt " + string(damage) + " damage!"
}
else {
	obj_battle_device.text_string[0] = "Kevin dealt " + string(damage) + " damage!"
}
global.battle_enemy_health -= damage
if global.battle_enemy_health < 0 {
	global.battle_enemy_health = 0
}
instance_create_depth(global.battle_enemy_object.x,global.battle_enemy_object.y,depth - 5,obj_player_damage)
 audio_play_sound(snd_battle_hit_1,1,0)
instance_create_depth(x,y,depth,global.battle_enemy_hurt)
	obj_battle_device.text_index = 1
	obj_battle_device.text_width = 150
obj_battle_device.text_talking = 1
obj_battle_device.text_x = 4
obj_battle_device.text_y = 97
instance_destroy(self)
}
