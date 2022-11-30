x = x + ((h_speed)/bouncecount)*.6
y = 112 + sin(((x - startx)/48)*bouncecount*pi)*24
timer += 1 
	if timer = 150*bouncecount {
		instance_destroy(self)
	}

