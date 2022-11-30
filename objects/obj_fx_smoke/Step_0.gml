timer += .005
image_angle = timer*360*3
image_alpha = 1 - timer
image_xscale = sin(timer)*.1 + (1-timer)
image_yscale = cos(timer)*.1 + (1-timer)
x = startx + timer*25 + sin(timer*2)*5
y = starty + sin(timer*2)*5 - timer*50
if timer = 1 {
	instance_destroy(self)
}


