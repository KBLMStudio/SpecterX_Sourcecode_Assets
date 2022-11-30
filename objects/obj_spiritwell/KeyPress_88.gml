if global.npc_array[npc_index] != 0 {
if save_check = 0 {
	if text_talking =1 {
		audio_play_sound(snd_back,1,0)
	text_talking = 0
	global.pause_check = 0
	}
}
}

