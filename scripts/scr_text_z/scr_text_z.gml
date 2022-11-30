// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_text_z(){
	if text_talking = 1 {
	if text_finished = 1 {
		if text_string_array != array_length(text_string) - 1 {
			
			text_index = 1
			text_finished = 0
			text_string_array += 1
		}
		else {
			text_talking = 0
			text_finished = 0
			text_index = 1
			text_string_array = 0
			global.pause_check = false
			if npc_index != -1 {
			global.npc_array[npc_index] += 1
			}
		}
	}
}
}
