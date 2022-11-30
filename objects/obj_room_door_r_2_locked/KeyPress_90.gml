if text_talking = 0 {
script_execute(scr_text_check_z)
if text_talking = 1 && global.npc_array[9] = 1{
	global.room_index += 2
	instance_create_depth(x,y,depth,obj_fade_r_to_l)
}
}
if text_talking = 1 {
script_execute(scr_text_z)
if text_talking = 0 && global.npc_array[10] != 0 {
	global.npc_array[9] = 1
}
}
