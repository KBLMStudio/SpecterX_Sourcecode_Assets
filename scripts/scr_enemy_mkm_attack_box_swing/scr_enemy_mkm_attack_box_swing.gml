// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_mkm_attack_box_swing(){
	if swing_timer = 0 && !instance_exists(obj_text_bubble){
		obj_enemy_mkm_control.hand_check = 1
	obj_enemy_mkm_l_hand.direction = point_direction(obj_enemy_mkm_l_hand.x,obj_enemy_mkm_l_hand.y,obj_battlebox.x - obj_battlebox.image_xscale*18/2 - 5,112)
	obj_enemy_mkm_l_hand.speed = point_distance(obj_enemy_mkm_l_hand.x,obj_enemy_mkm_l_hand.y,obj_battlebox.x - obj_battlebox.image_xscale*18/2 - 5,112)/10
		obj_enemy_mkm_r_hand.direction = point_direction(obj_enemy_mkm_r_hand.x,obj_enemy_mkm_r_hand.y,obj_battlebox.x + obj_battlebox.image_xscale*18/2 +5,112)
	obj_enemy_mkm_r_hand.speed = point_distance(obj_enemy_mkm_r_hand.x,obj_enemy_mkm_r_hand.y,obj_battlebox.x + obj_battlebox.image_xscale*18/2 + 5,112)/10

		}
		if obj_enemy_mkm_l_hand.x = obj_battlebox.x - obj_battlebox.image_xscale*18/2 - 5 && obj_enemy_mkm_l_hand.y =112 {
			obj_enemy_mkm_l_hand.speed = 0
		}
		if obj_enemy_mkm_r_hand.x = obj_battlebox.x + obj_battlebox.image_xscale*18/2 +5 && obj_enemy_mkm_r_hand.y = 112 {
			obj_enemy_mkm_r_hand.speed = 0
		}
	if swing_timer > 10 {
		
		obj_enemy_mkm_l_hand.speed = 0
		obj_enemy_mkm_r_hand.speed = 0
		obj_enemy_mkm_r_hand.x =obj_battlebox.x + obj_battlebox.image_xscale*18/2 + 5
		obj_enemy_mkm_l_hand.x = obj_battlebox.x - obj_battlebox.image_xscale*18/2 - 5
		obj_enemy_mkm_r_hand.y = 112
		obj_enemy_mkm_l_hand.y = 112
		timer = obj_enemy_mkm_control.timer
			obj_enemy_mkm_r_hand.direction = point_direction(obj_enemy_mkm_r_hand.x,obj_enemy_mkm_r_hand.y,80 + 23 - sin(timer*1.5)*3  - cos(timer/5)*4,48 + 14 - (cos(timer*1.5)*3) - (sin(timer/5)*5) - abs(sin(timer/10)*20))
	obj_enemy_mkm_l_hand.speed = point_distance(obj_enemy_mkm_r_hand.x,obj_enemy_mkm_r_hand.y,80 + 23 - sin(timer*1.5)*3  - cos(timer/5)*4,48 + 14 - (cos(timer*1.5)*3) - (sin(timer/5)*5) - abs(sin(timer/10)*20))/10
	obj_enemy_mkm_r_hand.speed =point_distance(obj_enemy_mkm_l_hand.x,obj_enemy_mkm_l_hand.y,80 - 24 + sin(timer*1.5)*3  + cos(timer/5)*4,48 + 14 + cos(timer*1.5)*3 + sin(timer/5)*5 - abs(sin(timer/10)*20))/10
	obj_enemy_mkm_l_hand.direction = point_direction(obj_enemy_mkm_l_hand.x,obj_enemy_mkm_l_hand.y,80 - 24 + sin(timer*1.5)*3  + cos(timer/5)*4,48 + 14 + cos(timer*1.5)*3 + sin(timer/5)*5 - abs(sin(timer/10)*20))
	obj_enemy_mkm_l_hand.timer = 10
	obj_enemy_mkm_r_hand.timer = 10
	if obj_battlebox.attack_end != 1 {
obj_battlebox.x += swing_check_1 
if obj_battlebox.x = 80-20 || obj_battlebox.x = 80+20 {
	swing_check_1 *= -1
}
}
if obj_battlebox.attack_end = 1{
	
}
}
swing_timer += 1
}

