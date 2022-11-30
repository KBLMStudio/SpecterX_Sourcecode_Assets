timer += .1
obj_enemy_mkm_head.image_angle = sin(timer)*15
obj_enemy_mkm_head.x = x + sin(timer)*4
obj_enemy_mkm_head.y = y - 13 + cos(timer)*3
obj_enemy_mkm_head.image_yscale = 1 + sin(timer)*.0625
obj_enemy_mkm_body.x = x + sin(timer)*2
obj_enemy_mkm_body.y = y + cos(timer)*2
obj_enemy_mkm_body.image_xscale = 1 +sin(timer)*.0625
obj_enemy_mkm_body.image_yscale = 1 +cos(timer)*.0625
obj_enemy_mkm_body.image_angle = sin(timer*2)*15
obj_enemy_mkm_cloak.x = x + sin(timer)*1.5
obj_enemy_mkm_cloak.y = y + cos(timer)*1.5
obj_enemy_mkm_cloak.image_xscale = 1 + cos(timer)*.0625
obj_enemy_mkm_l_leg_0.image_angle = (sin(timer/3)*30)*-1
obj_enemy_mkm_l_leg_0.x = x -2+ sin(timer)*2
obj_enemy_mkm_l_leg_0.y = y + 13 + cos(timer)*2
obj_enemy_mkm_r_leg_0.image_angle = (sin(timer/3)*30)
obj_enemy_mkm_r_leg_0.x = x + 2 + sin(timer)*2
obj_enemy_mkm_r_leg_0.y = y + 13 + cos(timer)*2
obj_enemy_mkm_l_leg_1.image_angle = obj_enemy_mkm_l_leg_0.image_angle + abs(sin(timer/10))*-15
obj_enemy_mkm_l_leg_1.x = x - 6 + sin(timer)*2 - (sin(timer/3)*3)
obj_enemy_mkm_l_leg_1.y = y + 21 + cos(timer)*2 - (sin(timer/3)*3)
obj_enemy_mkm_r_leg_1.image_angle = obj_enemy_mkm_r_leg_0.image_angle + abs(sin(timer/10))*15
obj_enemy_mkm_r_leg_1.x = x + 6 + sin(timer)*2 + (sin(timer/3)*3)
obj_enemy_mkm_r_leg_1.y = y + 21 + cos(timer)*2 - (sin(timer/3)*3)


obj_enemy_mkm_l_hand_piece_2.x = x-9 + (obj_enemy_mkm_l_hand.x-(x-9))*(3/4)
obj_enemy_mkm_l_hand_piece_2.y = y-4 + (obj_enemy_mkm_l_hand.y-(y-4))*(3/4)
obj_enemy_mkm_l_hand_piece_1.x = x-9 + (obj_enemy_mkm_l_hand.x-(x-9))*(2/4)
obj_enemy_mkm_l_hand_piece_1.y = y-4 + (obj_enemy_mkm_l_hand.y-(y-4))*(2/4)
obj_enemy_mkm_l_hand_piece_0.x = x-9 + (obj_enemy_mkm_l_hand.x-(x-9))*(1/4)
obj_enemy_mkm_l_hand_piece_0.y = y-4 + (obj_enemy_mkm_l_hand.y-(y-4))*(1/4)
if hand_check = 0 {
			obj_enemy_mkm_r_hand.speed = 0
		obj_enemy_mkm_l_hand.speed = 0
		obj_enemy_mkm_r_hand.x = x + 23 - sin(timer*1.5)*3  - cos(timer/5)*4
obj_enemy_mkm_r_hand.y = y + 14 - (cos(timer*1.5)*3) - (sin(timer/5)*5) - abs(sin(timer/10)*20)
		obj_enemy_mkm_l_hand.x = x - 24 + sin(timer*1.5)*3  + cos(timer/5)*4
obj_enemy_mkm_l_hand.y = y + 14 + cos(timer*1.5)*3 + sin(timer/5)*5 - abs(sin(timer/10)*20)
		obj_enemy_mkm_l_hand.image_angle = sin(timer)*15
obj_enemy_mkm_r_hand.image_angle = sin(timer)*15
}

obj_enemy_mkm_r_hand_piece_2.x = x+8 + (obj_enemy_mkm_r_hand.x-(x+8))*(3/4)
obj_enemy_mkm_r_hand_piece_2.y = y-4 + (obj_enemy_mkm_r_hand.y-(y-4))*(3/4)
obj_enemy_mkm_r_hand_piece_1.x = x+8 + (obj_enemy_mkm_r_hand.x-(x+8))*(2/4)
obj_enemy_mkm_r_hand_piece_1.y = y-4 + (obj_enemy_mkm_r_hand.y-(y-4))*(2/4)
obj_enemy_mkm_r_hand_piece_0.x = x+8 + (obj_enemy_mkm_r_hand.x-(x+8))*(1/4)
obj_enemy_mkm_r_hand_piece_0.y = y-4 + (obj_enemy_mkm_r_hand.y-(y-4))*(1/4)
if obj_battle_device.battle_step != 3 && obj_battle_device.battle_step != 3 {
	if obj_enemy_mkm_head.image_xscale != 1 {
		obj_enemy_mkm_head.image_xscale += .1
	}

}
