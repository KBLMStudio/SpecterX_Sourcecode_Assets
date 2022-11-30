// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_mk_attack(){
script_execute(scr_battle_box_match,50,50)
if (global.battle_turn = 1 || global.battle_turn = 2) && text_talking = 0 && talk_check_0 = 0{
	instance_create_depth(20,135,depth,obj_text_bubble)
	if global.battle_turn = 1 {	
		obj_text_bubble.text_string = ["Oh jeez... I almost forget! Hey Mckill, is it cool if I explain things to the rookie?","Great!","Now, Kev, y'see that ghost icon there?","That little guy is our pal. And if he gets hit by an incoming attack from a ghost...","We get hurt!","So try dodging Murphy's attack, using the ARROW KEYS, K?"]
}
	if global.battle_turn = 2 {
		obj_text_bubble.text_string = ["Oh Kev! One other thing...","Sometimes enemies will have RED attacks", "If you see one, try pressing the Z button!","Oh, and make sure you press it right BEFORE it collides."]
}

obj_text_bubble.image_yscale += 2
obj_text_bubble.text_voice = snd_voice_stev
} 
talk_check_0 = 1
if !instance_exists(obj_text_bubble) && talk_check_0 = 1{
	
if battlebox_check = 1 {
	if attack_check = -1 && global.battle_turn != 1 && global.battle_turn != 2 {
		attack_check = irandom_range(0,2)
	}
	if attack_check = 0 || global.battle_turn = 1 {

	script_execute(scr_enemy_mk_attack_knives)
}
else if (attack_check = 1 || global.battle_turn = 2){
	script_execute(scr_enemy_mk_attack_knives_small)
}
else {
	script_execute(scr_enemy_mk_attack_mask)
}
}
}
}
