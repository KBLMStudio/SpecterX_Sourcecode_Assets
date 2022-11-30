if check = 0 {
	timer += .01
}
else {
	timer -= .01
}
if timer =1 {
	audio_stop_all()
	room = rm_main_entrance
	global.room_index =1 

	instance_create_depth(0,0,depth,obj_GUI)
	check =1 
}
if timer = .99 && check = 1 {
		instance_create_depth(96,208,depth,obj_stev)
	instance_create_depth(128,208,depth,obj_kev)
}
if timer = 0 {
		global.pause_check = 0
	instance_destroy(self)

}
