// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_sg_attack_bounce(){
if timer = 0 {
	ghost_count = 0
	check_timer = 0
	check_timer_0 = 5
	turn_timer = 0
}
timer = 1
check_timer += 1 
if check_timer >= check_timer_0 {
	ghost_check = irandom_range(0,1) 
	red_check = irandom_range(0,5)
	if red_check = 0 {
		ghost_obj = obj_bullet_ghost_bounce_red
	}
			else {
				ghost_obj = obj_bullet_ghost_bounce
			}
		if ghost_check = 0 {
			instance_create_depth(56-24,88,depth,ghost_obj)
			ghost_id.h_speed = 1
		}
			if ghost_check = 1 {
				instance_create_depth(104+24,88,depth,ghost_obj)
				ghost_id.h_speed = -1
			}
			if global.battle_turn < 4 {
				ghost_id.bouncecount = irandom_range(1,global.battle_turn)
			}
			else {
				ghost_id.bouncecount = irandom_range(1,4) 
			}
			ghost_count += 1
			check_timer = 0
			if global.battle_turn <10 {
				check_timer_0 = irandom_range(25-global.battle_turn,50)*2.5
			}
			else {
				check_timer_0 = irandom_range(12,50)*2.5
			}
			check_timer = 0
			if ghost_count = global.battle_turn*2 + 1 || turn_timer = 150 {
				script_execute(scr_enemy_attack_done)
			}
		}
	}
