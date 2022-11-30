x = x + .25
y = starty + sin(((x - startx)/48)*4*pi)*16
timer += 1 
	if timer = 150*bouncecount {
		instance_destroy(self)
	}

