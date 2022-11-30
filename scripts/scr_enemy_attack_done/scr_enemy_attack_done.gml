// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_attack_done(){
				instance_destroy(obj_bullet_pattern)
				instance_destroy(obj_health_tab_target)
				instance_destroy(obj_cursor)
				global.battle_turn += 1
				global.battle_defend_kev = 0
				global.battle_defend_stev = 0
				obj_battlebox.attack_end = 1
				instance_destroy(self)
}