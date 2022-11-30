depth = -y
if attack_check = 0 {
	if distance_to_object(obj_stev) <= 100 {
		sprite_index = spr_mirror_intro
	}
}
if attack_check = 1 && global.pause_check = 0 {
	image_angle = sin(timer) * 30
	mp_potential_step(obj_stev.x,obj_stev.y,.75,0)
	if place_meeting(x,y,obj_stev) {
		image_angle = 0
		global.battle_index = 2
		instance_create_depth(x,y,depth,obj_pumpkinroller)
		sprite_index = spr_mirror_surprise
		destroy_check = 1
	}
}
if destroy_check =1 && !instance_exists(obj_pumpkinroller) {
	instance_destroy(self)
}
timer += .1

