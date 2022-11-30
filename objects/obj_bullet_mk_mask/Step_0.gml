
if image_xscale != 1 && timer = 0 {
image_xscale += .1
image_yscale += .1
image_angle += 36
}
else {
	timer += 1
	if timer = 20 {
		sprite_index = spr_enemy_mk_head_ouch
		if mask_check = 0 {
			direction_check = 270
		}
		if mask_check = 1 { 
			direction_check = 180
		}
		if mask_check = 2 {
			direction_check = 270
		}
		if mask_check = 3 {
			direction_check = 0
		}
		check_red = irandom_range(0,5)
			if check_red = 0 {
				bullet_type = obj_bullet_soul_red
			}
			else {
				bullet_type = obj_bullet_soul
			}
			instance_create_depth(x,y+6,depth-1,bullet_type)
			audio_play_sound(snd_attack_mk_breath,1,0)
			bullet_id.direction = direction_check
					check_red = irandom_range(0,5)
			if check_red = 0 {
				bullet_type = obj_bullet_soul_red
			}
			else {
				bullet_type = obj_bullet_soul
			}
			instance_create_depth(x,y+6,depth-1,bullet_type)
			bullet_id.direction = direction_check - 22.5
					check_red = irandom_range(0,5)
			if check_red = 0 {
				bullet_type = obj_bullet_soul_red
			}
			else {
				bullet_type = obj_bullet_soul
			}
			instance_create_depth(x,y+6,depth-1,bullet_type)
			bullet_id.direction = direction_check + 22.5
	}
	if timer >= 70 {
		image_xscale -= .1
		image_yscale -= .1
		image_angle -= 36
		if image_xscale = 0 {
			instance_destroy(self)
		}
	}
}
