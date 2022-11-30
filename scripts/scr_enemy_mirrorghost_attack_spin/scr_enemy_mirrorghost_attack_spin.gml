// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_mirrorghost_attack_spin(){
if timer = 0 {
	instance_create_depth(80,112-30,depth,obj_bullet_mirror_spin)
	turn_timer= 0
}
timer = 1
turn_timer += 1
if turn_timer = 420 {
	script_execute(scr_enemy_attack_done)
}
}