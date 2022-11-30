timer += 1
if timer > -1 && timer < 21 {
	image_xscale += .05
	image_yscale += .05
	image_angle += (360 + direction_store)/20
	direction += (360 + direction_store)/20
}
if timer = 11 {
	speed = .6125*.75
	audio_play_sound(snd_attack_mk_whistle,1,0)
}
if timer > 11 {
		audio_sound_gain(snd_attack_mk_whistle,(1/(timer-10)),0)
}
if timer = 80 {

	instance_destroy(self)
}
