if scared_check = 0 && peruse_check = 0{
if y != 192 -16 {
	y = y - 1
	image_speed = 1
}
else {
	startx = x
	image_speed = 0
	image_index = 0
}
}
else if peruse_check = 0 {
	timer += 0.5
	x = startx + sin(timer*3)
}
else {
	image_speed = 1
}
