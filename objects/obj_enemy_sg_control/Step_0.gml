timer += .025*pi
obj_enemy_sg_head.x = x
obj_enemy_sg_body.x = x
obj_enemy_sg_r_hand.x = x+17
obj_enemy_sg_l_hand.x = x-17
obj_enemy_sg_head.y = y + sin(timer)*2.75
obj_enemy_sg_body.y = y + sin(timer)*2
obj_enemy_sg_l_hand.y = y + sin(timer/2) * 5
obj_enemy_sg_r_hand.y = y - sin(timer/2) * 5
obj_enemy_sg_body.image_xscale = 1 + sin(timer)*.125/1.25
obj_enemy_sg_body.image_yscale = 1 + abs(sin(timer))*.125
obj_enemy_sg_l_hand.image_angle = sin(timer)*22.5
obj_enemy_sg_r_hand.image_angle = sin(timer)*22.5
if instance_exists(obj_enemy_sg_tongue){
	obj_enemy_sg_tongue.y = y + sin(timer)*2.75
	obj_enemy_sg_tongue.image_angle = image_angle + sin(timer*2)*12.5
}
if timer = 30*pi {
	obj_enemy_sg_head.sprite_index = spr_enemy_sg_head_0
	instance_create_depth(x,y+1,depth-3,obj_enemy_sg_tongue)
}
if timer = 44*pi{
	obj_enemy_sg_head.sprite_index = spr_enemy_sg_head
	instance_destroy(obj_enemy_sg_tongue)
timer = 0
}

