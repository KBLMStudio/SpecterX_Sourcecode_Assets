spiritcheck = irandom_range(0,10)
if spiritcheck = 0 {
	instance_create_depth(x+16+irandom_range(-3,3),y+8,depth-1,obj_spiritwell_spirit)
}
if save_check =1 {
	ini_open("specterx_save.ini")
	global.stev_array[0] = global.stev_array[1]
	global.kev_array[0] = global.kev_array[1]
	//steve saves
	ini_write_real("steve","health",global.stev_array[0])
	ini_write_real("steve","maxhealth",global.stev_array[1])
	ini_write_real("steve","damage",global.stev_array[2])
	ini_write_real("steve","defense",global.stev_array[3])
	ini_write_real("steve","exp",global.stev_array[4])
	ini_write_real("steve","level",global.stev_array[5])
	ini_write_real("steve","x",obj_stev.x)
	ini_write_real("steve","y",obj_stev.y)
	//kevin saves
	ini_write_real("kevin","health",global.kev_array[0])
	ini_write_real("kevin","maxhealth",global.kev_array[1])
	ini_write_real("kevin","damage",global.kev_array[2])
	ini_write_real("kevin","defense",global.kev_array[3])
	ini_write_real("kevin","exp",global.kev_array[4])
	ini_write_real("kevin","level",global.kev_array[5])
	ini_write_real("kevin","x",obj_kev.x)
	ini_write_real("kevin","y",obj_kev.y)
	//general saves
	ini_write_real("room","roomindex",global.room_index)
	index = 0
	repeat 999 {
		ini_write_real("saves",string(index),global.npc_array[index])
		index += 1
	}
	ini_write_string("SECRET","PRIVATE!","What are you doing here?  Y'know this is a bad idea, I mean tampering in here, that could cause SERIOUS problems...  I'm asking you nicely, LEAVE, before you break something.")
	ini_close()
save_check = -1
text_talking = 0
global.pause_check = 0

}
