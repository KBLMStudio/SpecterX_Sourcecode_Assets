// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_tv_attack(){
		script_execute(scr_battle_box_match,50,50)
		if battlebox_check= 1 {
if talk_check = 0 {
	talk_check_0 = irandom_range(0,1)
	if talk_check_0 = 0 {
		instance_create_depth(110,48,depth-9,obj_text_bubble)
	talk_check_0 = irandom_range(0,2)
	if talk_check_0 = 0 {
		obj_text_bubble.text_string[0] = "MOM look I M A STArr..!"
	}
	if talk_check_0 = 1 {
		obj_text_bubble.text_string[0] = "CAN you SEA see THRough THE ST4ATIC?"
	}
	if talk_check_0 = 2 {
		obj_text_bubble.text_string[0] = "NUmbER 1  DEAL  TODAy ONlyyy?!."
	}
	obj_text_bubble.text_voice = snd_attack_tv_static

}
	talk_check =1
}
if !instance_exists(obj_text_bubble) && talk_check = 1{
	if timer = 0 {
		attack_check = irandom_range(0,3)
	}
	if attack_check = 0 {
		script_execute(scr_enemy_tv_attack_tv_spin)
	}

	if attack_check = 2 {
				script_execute(scr_enemy_tv_attack_big_tv)
	}
	if attack_check = 1 {
			script_execute(scr_enemy_tv_attack_star)
	}
	if attack_check = 3 {
		script_execute(scr_enemy_tv_attack_static) 
	}
}
}
		}
