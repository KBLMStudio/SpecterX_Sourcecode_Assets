timer += 9
obj_mirrorghost_control.x = 80 + (sin(timer/180*2*pi)*3)
obj_mirrorghost_head.image_angle += sin(timer/180*4*pi)*5
if timer= 450{
	obj_mirrorghost_control.x = 80
	obj_mirrorghost_head.sprite_index = spr_mirrorghost_head
	instance_destroy(self)
}
