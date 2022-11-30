// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_sg_attack_boo_bounce(){
if timer = 0 {
	check = irandom_range(0,1)
	if check = 0 {
		ghost_y = 112 -12
		instance_create_depth(80+40,124,depth,obj_bullet_ghost_boo)
	}
	else {
		ghost_y = 112 + 12
		instance_create_depth(80+40,112-20,depth,obj_bullet_ghost_boo)

	}
			boo_id.x_check = 1
	ghost_timer = -30
	ghost_count = 0
	turn_timer = 0
}
timer = 1
turn_timer += 1
ghost_timer += 1 
	if ghost_timer = 80 {
		red_check = irandom_range(0,9)
		if red_check = 0 {
		instance_create_depth(80-30,ghost_y,depth,obj_bullet_ghost_bounce_0_red)
		}
		else {
			instance_create_depth(80-30,ghost_y,depth,obj_bullet_ghost_bounce_0)
		}
		ghost_timer = 0
		ghost_count += 1
}
if ghost_count = global.battle_turn*5 + 1 || turn_timer = 300 {
	script_execute(scr_enemy_attack_done)
}
}

