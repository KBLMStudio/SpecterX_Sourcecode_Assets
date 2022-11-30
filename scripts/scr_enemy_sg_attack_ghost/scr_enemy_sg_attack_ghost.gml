// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_sg_attack_ghost(){
if timer = 0 {
	ghost_count = 0
	ghost_timer = 999
	ghost_timer_check = 5
	turn_timer =0 
}
timer = 1
turn_timer += 1
ghost_timer += 1 
if ghost_timer >= ghost_timer_check {
	red_check = irandom_range(0,5)
	if red_check = 0 {
		ghost_obj = obj_bullet_ghost_red
	}
	else {
		ghost_obj = obj_bullet_ghost
	}
	ghost_direction= irandom_range(0,3) {
		if ghost_direction = 0 {
			ghost_x = irandom_range(80-24,80+24-8)
			instance_create_depth(ghost_x,146+5,depth,ghost_obj)
		ghost_id.direction = 90
		}
		if ghost_direction = 2 {
			ghost_x = irandom_range(80-24,80+24-8)
			instance_create_depth(ghost_x,78-5,depth,ghost_obj)
			ghost_id.direction = 270
		}
		if ghost_direction = 1 {
			ghost_y = irandom_range(112-24,112+24-8)
			instance_create_depth(106+5,ghost_y,depth,ghost_obj)
			ghost_id.direction = 180
	}
	if ghost_direction = 3 {
		ghost_y= irandom_range(112-24,112+24-8)
		instance_create_depth(46-5,ghost_y,depth,ghost_obj)
		ghost_id.direction = 0
}
if global.battle_turn < 4 {
	ghost_timer_check = irandom_range(50-(global.battle_turn-1)*10,100)
}
else {
	ghost_timer_check = irandom_range(12,75)
}
ghost_timer = 0
ghost_count += 1
if ghost_count = global.battle_turn*5+1 || turn_timer = 100 {
	script_execute(scr_enemy_attack_done)
}
	}
}
}
