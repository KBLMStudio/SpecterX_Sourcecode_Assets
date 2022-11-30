// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_tv_attack_tv_spin(){
if timer = 0 {
	instance_create_depth(80,112-45,depth,obj_bullet_tv_spin)
	turn_timer = 0
	bullet_count = 0 
}
timer = 1
if turn_timer = 300 || bullet_count = global.battle_turn*5 + 1{
script_execute(scr_enemy_attack_done)
}
}