timer += 0.1
depth = -y
if direction = 0 {
	sprite_index = spr_sg_r
}
else if direction = 90 {
	sprite_index = spr_sg_b
}
else if direction = 180 {
	sprite_index = spr_sg_l
}
else if direction = 270 {
	sprite_index = spr_sg_f
}
if destroy_check = 1 && !instance_exists(obj_pumpkinroller) {
	instance_destroy(self)
}
if (place_meeting(x,y,obj_stev) || place_meeting(x,y,obj_kev)) && destroy_check = 0 {
	path_end()
	global.battle_index = 1 
	instance_create_depth(x,y,depth,obj_pumpkinroller)
	destroy_check = 1
}
if global.pause_check = 1 {
	speed = 0 
}
 else {
	 speed = 1
 }
 if global.pause_check = 1 {
	speed = 0 
}
 else {
	 speed = 1
 }
if destroy_check = 1 {
	sprite_index = spr_sg_attack
}
