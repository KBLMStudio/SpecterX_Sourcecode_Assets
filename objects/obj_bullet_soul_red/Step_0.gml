image_angle = direction
timer += 1
if timer > 60 {
	image_alpha -= .1
}
if image_alpha = 0 {
	instance_destroy(self)
}
