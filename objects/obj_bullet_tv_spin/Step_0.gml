image_angle += 5
if y != 112 {
	y += .5
}
else {
	timer += 1
	if timer = timer_check {
		red_check = irandom_range(0,5)
		if red_check = 0 {
			instance_create_depth(x,y,depth,obj_bullet_static_red)
		}
		else {
			instance_create_depth(x,y,depth,obj_bullet_static)
		}
		obj_battle_attack_device.bullet_count += 1
		timer_check = irandom_range(20,30)
		timer = 0
	}
}
