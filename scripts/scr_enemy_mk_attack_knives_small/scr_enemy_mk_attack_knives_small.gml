// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_mk_attack_knives_small(){
if timer = 0 {
	talk_check = irandom_range(0,2)
	if talk_check = 0 && global.battle_turn != 2 {
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
	knives_count = 0 
	knives_timer = 0
}
timer += 1 
if !instance_exists(obj_text_bubble) {
knives_check = 0
knives_timer += 1
if knives_timer = 30 {
do {
	checkx = irandom_range(80-24,80+24)
	checky = irandom_range(112-24,112+24)
	if point_distance(checkx,checky,obj_cursor.x,obj_cursor.y) >= 30 {
		knives_check = 1
	}
	
}
until knives_check = 1
red_check = irandom_range(0,5) 
if red_check = 0 {
	instance_create_depth(checkx,checky,depth - 1,obj_bullet_knife_small_red)
}
else {
instance_create_depth(checkx,checky,depth -1 ,obj_bullet_knife_small)
}
knives_timer = 0
knives_count += 1
}
if knives_count = global.battle_turn*5 || timer = 300 {
	script_execute(scr_enemy_attack_done)
}
}
}
