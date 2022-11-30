if global.npc_array[15] = 0 {
global.pause_check = 1
if cutscene_check = 0 {

	text_string = ["Why are the lights out in here?","I don't know, but there's something odd about this room..."]
	text_voice = [snd_voice_kev,snd_voice_stev]
	text_portrait = [spr_kevin_p,spr_steve_p]
	text_talking = 1
	cutscene_check = 1
}
if cutscene_check = 1 && text_talking = 0 {
	obj_cs_1_bf.sprite_index = spr_bf_peruse
	cutscene_check = 2 
}
if cutscene_check = 3 && text_talking = 0 {
	text_string = ["...shhh//...if you don't quiet down that thing will hear you...","Did you hear something?","No?","I said stop talking...//Or it'll wake up.","I swear I heard something.","Hm...//I'm not sure."]
	text_voice = [snd_voice_bf_whisp,snd_voice_stev,snd_voice_kev,snd_voice_bf,snd_voice_stev,snd_voice_kev]
	text_portrait = [spr_bf_p,spr_steve_p,spr_kevin_p,spr_bf_p,spr_steve_p,spr_kevin_p]
	text_talking = 1
	cutscene_check = 4
}
if cutscene_check = 4 && text_talking = 0 {
	obj_cs_1_bf.sprite_index = spr_bf_yell
	text_string = ["I SAID...//WOULD YOU TWO...//SHUT UP!"]
	text_voice = [snd_voice_bf_yell]
	text_portrait = [spr_bf_p]
	text_talking = 1
	cutscene_check = 5
}
if cutscene_check = 5 && text_talking = 0 {
	obj_cs_1_bf.sprite_index = spr_bf_scared
	text_string = ["Oh no...."]
	text_voice = [snd_voice_bf]
	text_portrait = [spr_bf_p]
	text_talking = 1
	cutscene_check = 6
}
if cutscene_check = 6 && text_talking = 0 {
	obj_tv.sprite_index = spr_tv_intro
	cutscene_check = 7
}
if instance_exists(obj_pumpkinroller) {
	cutscene_check = 8 
}
if !instance_exists(obj_pumpkinroller) && cutscene_check = 8 {
	audio_stop_all()
	cutscene_check = 9
	text_talking = 1
	obj_cs_1_bf.sprite_index = spr_bf_f
	obj_cs_1_bf.image_speed = 0
	obj_tv.sprite_index = spr_tv_broken
	text_string = ["SEE!//What did I tell you?","...You're welcome.","So now that we SAVED you, are you going to help us find the others?","Are you kidding?//I'm not leaving this room!","We could really use your help...","..."]
	text_voice = [snd_voice_bf,snd_voice_stev,snd_voice_stev,snd_voice_bf,snd_voice_kev,snd_voice_bf]
	text_portrait = [spr_bf_p,spr_steve_p,spr_steve_p,spr_bf_p,spr_kevin_p,spr_bf_p]
}
if cutscene_check = 9 && text_talking = 0 {
	global.npc_array[15] = 1
		obj_tv.sprite_index = spr_tv_broken
	instance_create_depth(208,200,depth,obj_npc_bf)
	instance_destroy(obj_cs_1_bf)
	global.pause_check = 0
}
}

