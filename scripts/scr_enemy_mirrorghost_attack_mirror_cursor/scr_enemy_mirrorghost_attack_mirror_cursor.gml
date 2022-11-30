// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_mirrorghost_attack_mirror_cursor(){
if timer = 0 {
	obj_cursor.x = 80-15
	instance_create_depth(80,112,depth,obj_battlebox_line)
	instance_create_depth(80+15,112,depth,obj_cursor_mirror)
	instance_create_depth(80,112+30,depth,obj_bullet_mirror_shard_0)
	obj_bullet_mirror_shard_0.x_check *= -1
	instance_create_depth(80,112-30,depth,obj_bullet_mirror_shard_0)
	turn_timer = 0
}
timer = 1
turn_timer += 1
if turn_timer = 240 {
	instance_destroy(obj_cursor_mirror)
	instance_destroy(obj_battlebox_line)
	script_execute(scr_enemy_attack_done)
}
}
