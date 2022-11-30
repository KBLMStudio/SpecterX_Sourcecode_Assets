timer += .5
if timer > 0 && timer < 10 {
	if image_xscale= 1 {
	image_angle -= 2.5
	}
	else {
		image_angle += 2.5
	}
}
if timer = 11 {
	audio_play_sound(snd_attack_mk_whistle,1,0)
}
if timer > 10 && timer < 15 {
	if image_xscale = 1 {
	image_angle += 5
	}
	else {
		image_angle -= 5
	}
}
	if timer > 10 {
		audio_sound_gain(snd_attack_mk_whistle,1/(timer-9),0)
		y += 2
	}
if timer = 30 {
	instance_destroy(self)
}
