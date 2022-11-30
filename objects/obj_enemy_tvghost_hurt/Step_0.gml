timer += 9
obj_enemy_tvghost_mouth.sprite_index = spr_enemy_tvghost_mouth_hurt
obj_enemy_tvghost_control.x = 80 + (sin(timer/180*2*pi)*3)
obj_enemy_tvghost_eye.image_xscale = 1 +sin(timer/180*4*pi)*.25
obj_enemy_tvghost_eye.image_yscale = 1 + sin(timer/180*4*pi)*.25
if timer= 450{
	obj_enemy_tvghost_control.x = 80
	obj_enemy_tvghost_eye.sprite_index = spr_enemy_tvghost_eye
	obj_enemy_tvghost_mouth.sprite_index = spr_enemy_tvghost_mouth
	obj_enemy_tvghost_eye.image_xscale = 1
	obj_enemy_tvghost_eye.image_yscale = 1
	instance_destroy(self)
}
