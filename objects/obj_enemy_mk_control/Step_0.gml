timer += .075
obj_enemy_mk_head.x = x
obj_enemy_mk_body.x = x
obj_enemy_mk_legs.x = x
obj_enemy_mk_r_arm.x = x+10
obj_enemy_mk_l_arm.x = x-10
obj_enemy_mk_head.y = y-16 + sin(timer)*2.5
obj_enemy_mk_head.image_angle = 0 + sin(timer)*10
obj_enemy_mk_body.y = y + sin(timer)*2
obj_enemy_mk_legs.y = y + 7 + sin(timer)*1.75
obj_enemy_mk_l_arm.y = y-10 + sin(timer)*2.125
obj_enemy_mk_r_arm.y = y-10 + sin(timer)*2.125
obj_enemy_mk_l_arm.image_yscale = 1 + sin(timer)*.0625
obj_enemy_mk_r_arm.image_yscale = 1 + sin(timer)*.0625
obj_enemy_mk_l_arm.image_angle = 0 + sin(timer)*5
obj_enemy_mk_r_arm.image_angle = 0 - sin(timer)*5
if obj_battle_device.battle_step != 3 && obj_battle_device.battle_step != 3 {
	if obj_enemy_mk_head.image_xscale != 1 {
		obj_enemy_mk_head.image_xscale += .1
		obj_enemy_mk_head.image_yscale += .1
		obj_enemy_mk_head.image_angle += 36
	}
}
