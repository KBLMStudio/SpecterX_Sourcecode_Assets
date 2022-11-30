// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_tv_attack_star(){
if timer = 0 {
	instance_create_depth(80,112-32,depth,obj_bullet_tv_star) 
	turn_timer = 0
	star_count = 0
}
timer = 1
turn_timer += 1
if turn_timer = 360 || star_count = global.battle_turn*5 + 1{
	script_execute(scr_enemy_attack_done)
}
}