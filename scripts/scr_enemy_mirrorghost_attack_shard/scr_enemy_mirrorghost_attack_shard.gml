// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_mirrorghost_attack_shard(){
if timer = 0 {
turn_timer= 0
check = irandom_range(0,1)
	instance_create_depth(80-40,112,depth,obj_bullet_mirror_shard)
	if global.battle_turn > 1 {
		instance_create_depth(80+40,112,depth,obj_bullet_mirror_shard)
		id_check.pi_index = 1
	}
	if global.battle_turn > 2 {
			instance_create_depth(80,112+40,depth,obj_bullet_mirror_shard)
			id_check.pi_index = 2
	}
	if global.battle_turn > 3 {
				instance_create_depth(80,112-40,depth,obj_bullet_mirror_shard)
				id_check.pi_index = 3
	}
}
timer = 1
turn_timer += 1 
	if turn_timer = 420 {
		script_execute(scr_enemy_attack_done)
	}
}

