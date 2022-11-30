if !audio_is_playing(mus_incorporeal) {
	repeat_count += 1
	audio_play_sound(mus_incorporeal,1,0)
	audio_sound_pitch(mus_incorporeal,1/repeat_count*.75)
}

