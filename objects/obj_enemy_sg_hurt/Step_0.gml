timer += 9
instance_destroy(obj_enemy_sg_tongue)
obj_enemy_sg_control.x = 80 + (sin(timer/180*2*pi)*3)
if timer= 450{
	obj_enemy_sg_control.x = 80
	obj_enemy_sg_head.sprite_index = spr_enemy_sg_head
	instance_destroy(self)
}
