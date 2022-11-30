// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_mk_attack_knives(){
		if timer = 0 {
			talk_check = irandom_range(0,2)
	if talk_check = 0  {
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
		knife_check = 0
		knife_timer = 0
		knife_count = 0 
	}
	timer += 1
		
if !instance_exists(obj_text_bubble) {
		if !instance_exists(obj_bullet_knife_big) {
		knife_check = 0
	}
		knife_timer += 1
if knife_check = 0 && knife_timer >= 25 {
knife_timer = 0

		knifecheck = irandom_range(0,1) 
		if knifecheck = 0 {
		instance_create_depth(80+34,112-29,depth - 9,obj_bullet_knife_big)
}
else if knifecheck = 1 {
	instance_create_depth(80-34,112-29,depth-9,obj_bullet_knife_big)
	obj_bullet_knife_big.image_xscale = -1
}
knife_check = 1
knife_count+= 1
}
if knife_count = global.battle_turn + 2 || timer = 300 {
	script_execute(scr_enemy_attack_done)
}
}
}
