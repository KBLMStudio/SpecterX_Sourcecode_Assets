// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_mkm_attack(){
script_execute(scr_battle_box_match,50,50)

if battlebox_check = 1 {
	if attack_check = -1 {
		swing_timer = 0
		swing_check_1 = irandom_range(0,1) 
		if swing_check_1 = 1 {
			swing_check_1 = .25
		}
		else {
			swing_check_1 = -.25
		}
		attack_check = irandom_range(0,2)
		attack_check_1 = -1
		if global.battle_turn > 2 {
			attack_check = irandom_range(0,3)
		}
		if global.battle_turn > 4 {
			attack_check_1 = irandom_range(0,2)
		}
		swing_check = -1
		if global.battle_turn > 4 && attack_check_1 != 2 && attack_check != 0 {
			swing_check = irandom_range(0,2)
		}
	}
	if attack_check = 0{
	
	script_execute(scr_enemy_mk_attack_knives)
}
if attack_check = 1{
	script_execute(scr_enemy_mk_attack_knives_small)
}
if attack_check = 2 || attack_check_1 = 2 && attack_check = 1{
	script_execute(scr_enemy_mkm_attack_mask)
}
if attack_check = 3 {
	script_execute(scr_enemy_mkm_attack_knives_big)
}
if swing_check = 1 && !instance_exists(obj_text_bubble){
	script_execute(scr_enemy_mkm_attack_box_swing)
}
}
}
