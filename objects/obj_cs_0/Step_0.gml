timer += 1
if timer = 100 && check = 0 {
	text_talking = 1
	text_string[0] = "Aaaah!//Get away from me!"
	text_voice[0] = snd_voice_bs
	text_portrait[0] = spr_bs_p
}
if !audio_is_playing(snd_rain) {
	audio_play_sound(snd_rain,1,1)
}
