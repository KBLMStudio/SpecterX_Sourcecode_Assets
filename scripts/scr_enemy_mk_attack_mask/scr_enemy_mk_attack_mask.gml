// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_mk_attack_mask(){
if timer = 0 {
	mask_index = 0
	talk_check = irandom_range(0,2) 
	if talk_check = 0 {
	instance_create_depth(110,48,depth-9,obj_text_bubble)
	talk_check = irandom_range(0,2)
		if talk_check = 0 {
	obj_text_bubble.text_string[0] = "... ..."
		}
		if talk_check = 1 {
			obj_text_bubble.text_string[0] = "..."
		}
		else {
			obj_text_bubble.text_string[0] = "...."
		}
		obj_text_bubble.text_voice = snd_attack_mk_breathquick
}
}
timer = 1 
if !instance_exists(obj_text_bubble) {
if obj_enemy_mk_head.image_xscale != 0 {
	obj_enemy_mk_head.image_xscale -= .05
	obj_enemy_mk_head.image_yscale -= .05
	obj_enemy_mk_head.image_angle += 22.5

}
else {
	if !instance_exists(obj_bullet_mk_mask) {
		mask_check = irandom_range(0,3)
		if mask_check = 0 {
			instance_create_depth(80,74,depth,obj_bullet_mk_mask)
		}
		if mask_check = 1 {
			instance_create_depth(76+25+16,108,depth,obj_bullet_mk_mask)
		}
		if mask_check = 2 {
			instance_create_depth(80,74,depth,obj_bullet_mk_mask)
		}
		if mask_check = 3 {
			instance_create_depth(80-25-12,108,depth,obj_bullet_mk_mask)
		}
		obj_bullet_mk_mask.mask_check = mask_check
		mask_index += 1
		if mask_index = global.battle_turn + 2 || mask_index = 6 {
			script_execute(scr_enemy_attack_done)
		}
	}
}
}
}

