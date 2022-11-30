if fade_alpha != 1 && fade_check = 0 {
	fade_alpha += .1
	if fade_alpha = 1 {
		fade_check = 1
		room = rm_next
	}
}
if fade_alpha != 0 && fade_check = 1 {
	fade_alpha -= .1
	if fade_alpha = 0 {
		global.pause_check = 0
	instance_destroy(self)
	}
}

