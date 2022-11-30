timer += 1 
if timer = timer_check {
	red_check = irandom_range(0,5) 
	if red_check = 0 {
	instance_create_depth(x,y,depth,obj_bullet_star_red)
	}
	else {
		instance_create_depth(x,y,depth,obj_bullet_star)
	}
	obj_battle_attack_device.star_count += 1
	timer_check = irandom_range(30,45)
	timer = 0
}
