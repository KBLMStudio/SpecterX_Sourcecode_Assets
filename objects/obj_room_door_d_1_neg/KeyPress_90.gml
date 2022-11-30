if text_talking = 0 {
script_execute(scr_text_check_z)
if text_talking = 1 {
	global.room_index -= 1
	instance_create_depth(x,y,depth,obj_fade_d_to_u)
}
}
