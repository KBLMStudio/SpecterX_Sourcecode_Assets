if x != 128 {
	x += .5
}
else {
	sprite_index = spr_mk_f
}
if check = 99 {
	y = - 1
	image_alpha -= .01
	if image_alpha = 1 {
		instance_destroy(self)
	}
}
