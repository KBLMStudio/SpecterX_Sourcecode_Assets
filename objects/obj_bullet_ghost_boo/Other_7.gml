if x_check = 0 {
	instance_create_depth(x+8,y+4,depth,obj_bullet_boo)
}
else {
instance_create_depth(x,y+4,depth,obj_bullet_boo)
}
if x_check = 0 {
	boo_id.h_speed = 1
}
else {
	boo_id.h_speed = -1
}
image_index = 1
image_speed = 0
audio_stop_sound(snd_attack_mk_breath)

