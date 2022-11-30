if global.npc_array[1] != 0 {
if text_talking = 1 {
	if save_check = 0 {
		save_check = 1
		audio_play_sound(snd_select,1,0)
	}
}
}
else {
		script_execute(scr_text_z)
}
if text_talking = 0 {
script_execute(scr_text_check_z)
if text_talking = 1 {
if save_check = -1 {
	save_check = 0
}
}
}


