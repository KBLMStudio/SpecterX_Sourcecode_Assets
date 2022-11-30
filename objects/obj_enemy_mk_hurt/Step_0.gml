timer += 9
obj_enemy_mk_control.x = 80 + (sin(timer/180*2*pi)*3)
if timer= 450{
	obj_enemy_mk_control.x = 80
	obj_enemy_mk_head.sprite_index = spr_enemy_mk_head
	instance_destroy(self)
}
