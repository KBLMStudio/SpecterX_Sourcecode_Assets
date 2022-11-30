// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_mirrorghost_attack_mirror(){
if timer = 0 {
turn_timer= 0
check = irandom_range(0,1)
if check = 0 {
	instance_create_depth(80-40,112,depth,obj_bullet_mirror)
		instance_create_depth(80+40,112,depth,obj_bullet_mirror)
			instance_create_depth(80,112+40,depth,obj_bullet_mirror)
				instance_create_depth(80,112-40,depth,obj_bullet_mirror)
}
else {
	instance_create_depth(80-30,112-30,depth,obj_bullet_mirror)
		instance_create_depth(80-30,112+30,depth,obj_bullet_mirror)
			instance_create_depth(80+30,112-30,depth,obj_bullet_mirror)
				instance_create_depth(80+30,112+30,depth,obj_bullet_mirror)
}
}
timer = 1
turn_timer += 1 
	if turn_timer = 240 {
		script_execute(scr_enemy_attack_done)
	}
}

