		//steve saves
		ini_open("specterx_save.ini")
	global.stev_array[0] = ini_read_real("steve","health",0)
	global.stev_array[1] = ini_read_real("steve","maxhealth",0)
	global.stev_array[2] = ini_read_real("steve","damage",0)
	global.stev_array[3] = ini_read_real("steve","defense",0)
	global.stev_array[4] = ini_read_real("steve","exp",0)
	global.stev_array[5] = ini_read_real("steve","level",0)
	global.stev_x = ini_read_real("steve","x",0)
	global.stev_y = ini_read_real("steve","y",0)
	//kevin saves
	global.kev_array[0] = ini_read_real("kevin","health",0)
	global.kev_array[1] = ini_read_real("kevin","maxhealth",0)
	global.kev_array[2] = ini_read_real("kevin","damage",0)
	global.kev_array[3] = ini_read_real("kevin","defense",0)
	global.kev_array[4] = ini_read_real("kevin","exp",0)
	global.kev_array[5] = ini_read_real("kevin","level",0)
	global.kev_x = ini_read_real("kevin","x",0)
	global.kev_y = ini_read_real("kevin","y",0)
	//general saves
	global.room_index = ini_read_real("room","roomindex",0)
	index = 0
	repeat 999 {
		global.npc_array[index] = ini_read_real("saves",string(index),0)
		index += 1
	}
	ini_close()
	instance_create_depth(0,0,depth,obj_fade_start)
