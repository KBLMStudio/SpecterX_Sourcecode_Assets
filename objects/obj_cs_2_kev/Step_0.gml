if x > targetx {
	x = x - .5
	image_speed = 1
	sprite_index = spr_kevin_l
}
if x < targetx {
	x = x + .5
	image_speed = 1
	sprite_index = spr_kevin_r
}
if y > targety {
	y = y - .5
	image_speed = 1 
	sprite_index = spr_kevin_b
}
if y < targety {
	y = y + .5
	image_speed = 1
	sprite_index = spr_kevin_f
}
if y = targety && x = targetx {
	image_speed = 0
	sprite_index = spr_kevin_b
	image_index= 0
	obj_cs_2.kev_check = 1
}
