// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_tv_attack_static(){
if timer = 0 {
	instance_create_depth(80-36,112-40,depth,obj_bullet_tv_static)
	turn_end = 0
}
timer += 1
if timer = 180 {
	turn_end = 1
}
if turn_end = 1 || !instance_exists(obj_bullet_tv_static) {
	script_execute(scr_enemy_attack_done)
}
}