if x > 88 + 32 {
	x = x - 1
}
if x < 88 + 32 {
	x = x + 1
}
if y != 112 {
	y -= 1
}
if point_distance(x,y,88+32,112) < 1{
	sprite_index = spr_bf_side
	image_speed = 0
}

