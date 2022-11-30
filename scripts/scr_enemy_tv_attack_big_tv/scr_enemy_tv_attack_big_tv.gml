// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_tv_attack_big_tv(){
if timer = 0 {
	turn_timer = 0
	tv_timer = 0
	tv_count = 0
}
timer = 1
tv_timer += 1 
turn_timer += 1
if tv_timer = 32 {
	instance_create_depth(80+40,112+8,depth,obj_bullet_tv_big)
	tv_timer = 0
	tv_count += 1
}
if tv_count = global.battle_turn*5 + 1 || turn_timer = 360 {
	script_execute(scr_enemy_attack_done)
}
}
