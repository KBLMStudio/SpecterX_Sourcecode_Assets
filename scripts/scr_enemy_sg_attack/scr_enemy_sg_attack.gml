// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_sg_attack(){
		script_execute(scr_battle_box_match,50,50)
		if battlebox_check= 1 {
if talk_check = 0 {
	talk_check_0 = irandom_range(0,1)
	if talk_check_0 = 0 {
		instance_create_depth(110,48,depth-9,obj_text_bubble)
	talk_check_0 = irandom_range(0,2)
	if talk_check_0 = 0 {
		obj_text_bubble.text_string[0] = "BOO! Hahahah..."
	}
	if talk_check_0 = 1 {
		obj_text_bubble.text_string[0] = "Ooooo...."
	}
	if talk_check_0 = 2 {
		obj_text_bubble.text_string[0] = "Hehe! Haha! Huhu! Hoho!"
	}
	obj_text_bubble.text_voice = snd_attack_sg_oo

}
	talk_check =1
}
if !instance_exists(obj_text_bubble) && talk_check = 1{
	if timer = 0 {
		attack_check_0 = irandom_range(0,1)
		attack_check = irandom_range(0,2)
	}
	if attack_check = 0 {
		script_execute(scr_enemy_sg_attack_ghost)
	}

	if attack_check = 2 {
				script_execute(scr_enemy_sg_attack_bounce)
	}
	if attack_check = 1 {
	if global.battle_turn > 3 && attack_check_0 = 1 {
		script_execute(scr_enemy_sg_attack_boo_bounce)
	}
	else {
	script_execute(scr_enemy_sg_attack_boo)
	}
}
}
		}
}

