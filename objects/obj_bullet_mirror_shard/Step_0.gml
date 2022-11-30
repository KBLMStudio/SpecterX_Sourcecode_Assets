image_angle = point_direction(x,y,80,112)
x = 80 + sin(timer+(pi/2)*pi_index)*40
y = 112 + cos(timer+(pi/2)*pi_index)*40
timer += .02
shard_timer += 1
if shard_timer = 75 {
	shard_check = irandom_range(0,5)
		if shard_check = 0 {
			instance_create_depth(x,y,depth,obj_bullet_crystal_red)
		}
		else {
			instance_create_depth(x,y,depth,obj_bullet_crystal)
		}
		shard_timer= irandom_range(-10,10)
	}
