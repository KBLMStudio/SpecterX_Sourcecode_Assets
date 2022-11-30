// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_text_check_z(){
if text_talking = 0 {
	if global.stev_direction = 0 && place_meeting(x,y+1,obj_stev) && global.pause_check = 0 {
		text_talking = 1
		text_index=  1
		global.pause_check = 1
	}
	if global.stev_direction = 1 && place_meeting(x-1,y,obj_stev) && global.pause_check = 0{
				text_talking = 1
		text_index= 1
		global.pause_check = 1
	}
	if global.stev_direction = 2 && place_meeting(x,y-1,obj_stev) && global.pause_check = 0{
			text_talking = 1
		text_index= 1
		global.pause_check = 1
}
if global.stev_direction = 3 && place_meeting(x+1,y,obj_stev) && global.pause_check = 0{
	text_talking = 1
	text_index = 1
	global.pause_check = 1
}
}
}