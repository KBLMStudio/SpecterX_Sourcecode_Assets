// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_mk_attack_nospeech(){
script_execute(scr_battle_box_match,50,50)

if battlebox_check = 1 {
	if attack_check = -1 {
		attack_check = irandom_range(0,2)
	}
	if attack_check = 0 {

	script_execute(scr_enemy_mk_attack_knives)
}
if attack_check = 1 {
	script_execute(scr_enemy_mk_attack_knives_small)
}
if attack_check = 2 {
	script_execute(scr_enemy_mk_attack_mask)
}
}
}
