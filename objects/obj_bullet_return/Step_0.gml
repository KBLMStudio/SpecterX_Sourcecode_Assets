mp_linear_step(80,48,2,0)
image_angle = direction
path_start(path_bullet_return,1,path_action_stop,1)
if x = 80 && y = 48 {
	global.battle_enemy_health -= 1 
	audio_play_sound(snd_battle_hit,1,0)
	if global.battle_enemy_health < 0 {
		global.battle_enemy_health = 0
	}
	instance_create_depth(x,y,depth,global.battle_enemy_hurt)
	instance_create_depth(global.battle_enemy_object.x,global.battle_enemy_object.y,depth - 5,obj_player_damage_bullet)
	obj_player_damage_bullet.damage = 1
	instance_destroy(self)
}

