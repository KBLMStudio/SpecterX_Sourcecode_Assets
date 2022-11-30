if y != 112 {
	y += .5
}
if y = 112 && !instance_exists(obj_bullet_mirror_spin_hand) {
	instance_create_depth(x,y,depth - 1,obj_bullet_mirror_spin_hand)
	instance_create_depth(x,y,depth - 1,obj_bullet_mirror_spin_hand)
	mirror_id.image_angle =90
		instance_create_depth(x,y,depth - 1,obj_bullet_mirror_spin_hand)
		mirror_id.image_angle = 270
			instance_create_depth(x,y,depth - 1,obj_bullet_mirror_spin_hand)
			mirror_id.image_angle = 180
}
if y = 112 {
	image_angle += 1
}
	
