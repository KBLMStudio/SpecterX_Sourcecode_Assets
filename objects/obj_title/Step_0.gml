if !audio_is_playing(snd_wind) {
	audio_play_sound(snd_wind,1,0)
	audio_sound_gain(snd_wind,random_range(.5,1.5),0)
}
