script_execute(scr_text_setup)
npc_index = 998
if global.npc_array[15] = 0 {
		audio_stop_all()
	audio_play_sound(snd_static_longer,1,1)
	cutscene_check = 0
}
else {
	global.npc_array[15] = 1
		obj_tv.sprite_index = spr_tv_broken
	instance_create_depth(obj_cs_1_bf.x,obj_cs_1_bf.y,depth,obj_npc_bf)
	instance_destroy(obj_cs_1_bf)
}
