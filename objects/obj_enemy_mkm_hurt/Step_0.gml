timer += 9
obj_enemy_mkm_control.x = 80 + (sin(timer/180*2*pi)*5) 
if timer= 450{
	obj_enemy_mkm_control.x = 80
	obj_enemy_mkm_head.sprite_index = spr_enemy_mkm_head
	instance_destroy(self)
}
