timer += 1
if global.pause_check = 0 {
if global.stev_direction=0 {
	targetx = obj_stev.x
	targety= obj_stev.y+16
	target_sprite = spr_kevin_b
}
if global.stev_direction = 1 {
	targetx = obj_stev.x - 16
	targety = obj_stev.y 
	target_sprite = spr_kevin_r
}
if global.stev_direction = 2 {
	targetx = obj_stev.x
	targety = obj_stev.y - 16
	target_sprite= spr_kevin_f
}
if global.stev_direction = 3 {
	targetx = obj_stev.x + 16
	targety = obj_stev.y 
	target_sprite = spr_kevin_l
}
if ((targetx != x || targety != y) || (obj_stev.h_speed != 0 || obj_stev.v_speed != 0)) && (!place_meeting(targetx,targety,obj_wall_parent)) {
	if point_distance(x,y,targetx,targety) > 100 {
mp_potential_step_object(targetx,targety,point_distance(x,y,targetx,targety)/10,obj_wall_parent)
	}
	else if point_distance(x,y,targetx,targety) >= 1 {
		mp_potential_step_object(targetx,targety,1,obj_wall_parent)
	}
	else {
		mp_potential_step_object(targetx,targety,point_distance(x,y,targetx,targety),obj_wall_parent)
	}
image_speed = 1 
 if direction > 315 || direction <= 45{
	 sprite_index = spr_kevin_r
 }
 if direction > 45 && direction <= 135 {
	 sprite_index = spr_kevin_b
 }
 if direction > 135 && direction <= 225 {
	 sprite_index = spr_kevin_l
 }
 if direction > 225 && direction <= 315 {
	 sprite_index = spr_kevin_f
 }
 if (obj_stev.h_speed != 0 && obj_stev.v_speed != 0) || (targetx = x && targety = y) {
	 sprite_index = target_sprite
 }
}

 else {
	image_speed = 0
	image_index = 0
	sprite_index = target_sprite
 }
}
if global.pause_check = 1 {
	image_speed = 0
	image_index = 0
}
 depth = -y - 16
