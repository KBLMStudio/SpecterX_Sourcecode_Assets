// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_sg_attack_boo(){
if timer = 0 {
	turn_timer = 0
}
timer = 1
if turn_timer = 0 {
	check_boo = irandom_range(0,2)
	if check_boo = 0 {
		ghost_y = 112-24+4
	}
	if check_boo = 1 {
		ghost_y = 112+24-12
	}
	if check_boo = 2 {
		ghost_y = 112
	}
	instance_create_depth(80-40,ghost_y,depth,obj_bullet_ghost_boo)
	obj_bullet_ghost_boo.image_xscale = -1
	boo_id.x_check = 0
		check_boo = irandom_range(0,2)
	if check_boo = 0 {
		ghost_y = 112-24+4
	}
	if check_boo = 1 {
		ghost_y = 112+24-12
	}
	if check_boo = 2 {
		ghost_y = 112
	}
	instance_create_depth(80+40,ghost_y,depth,obj_bullet_ghost_boo)
	boo_id.x_check = 1
}
turn_timer += 1
if turn_timer = 150 {
	script_execute(scr_enemy_attack_done)
}
}