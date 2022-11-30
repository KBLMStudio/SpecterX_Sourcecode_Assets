if place_meeting(x,y,obj_stev) && cs_check = 0{
	global.pause_check = 1
	cs_check = 1
	instance_create_depth(obj_kev.x,obj_kev.y,depth,obj_cs_2_kev)
	instance_create_depth(obj_stev.x,obj_stev.y,depth,obj_cs_2_stev)
	instance_destroy(obj_kev)
	instance_destroy(obj_stev)
}
if cs_check = 1 {  
	if camera_get_view_y(view_camera[0]) != 0 {
		camera_set_view_pos(view_camera[0],0,camera_get_view_y(view_camera[0])-1)
	}
	else if kev_check = 1 && stev_check = 1 {
		text_talking = 1
		text_string = ["You!//Hand over the girl!"]
		text_portrait = [spr_steve_p]
		text_voice = [snd_voice_stev]
		cs_check = 2
	}
}
if text_talking = 0 && cs_check = 2 {
	instance_create_depth(96-32,288,1,obj_cs_2_bs)
	instance_create_depth(96+64,288,1,obj_cs_2_bf)
	text_talking = 1
	text_string = ["...Or else!","Yeah, or else!","..."]
	text_voice = [snd_voice_bs,snd_voice_bf,snd_voice_bf]
	text_portrait = [spr_bs_p,spr_bf_p,spr_bf_p]
	cs_check = 3
}
if text_talking = 0 && cs_check = 3 { 
	obj_cs_2_bf.sprite_index = spr_bf_side_b
	text_talking = 1
	text_string = ["...Wait...//Or else what?"]
	text_voice = [snd_voice_bf]
	text_portrait = [spr_bf_p]
	cs_check = 4
}
if text_talking = 0 && cs_check = 4 {
	obj_cs_2_bs.sprite_index = spr_bs_r
	text_talking = 1
	text_string = ["I don't know, what CAN we do to a ghost?"]
	text_voice = [snd_voice_bs]
	text_portrait = [spr_bs_p]
	cs_check = 5
}
if text_talking = 0 && cs_check = 5 {
	obj_cs_2_bs.sprite_index = spr_bs_b
	obj_cs_2_bf.sprite_index = spr_bf_b
	text_talking = 1
	text_string = ["It doesn't matter, just let the girl go!","...Yeah! Or we'll do something to you...","...That we'll figure out later!"]
	text_portrait = [spr_kevin_p,spr_steve_p,spr_steve_p]
	text_voice = [snd_voice_kev,snd_voice_stev,snd_voice_stev]
	cs_check = 6
}
if text_talking = 0 && cs_check = 6 {
	audio_play_sound(mus_tension_song,1,1)	

	obj_cs_2_mk.anim_check = 1
	cs_check = 7
}
if cs_check = 7  && obj_cs_2_mk.timer = 100 {
	obj_cs_2_bf.sprite_index = spr_bf_scared
	obj_cs_2_bf.scared_check = 1
	obj_cs_2_bs.sprite_index = spr_bs_talk
	obj_cs_2_bs.scared_check = 1
	text_talking = 1 
	text_string = ["W-what's going on?!","I don't know!//But you two should back up...","Before he does whatever he's going to do!"]
	text_voice = [snd_voice_bs,snd_voice_stev,snd_voice_kev]
	text_portrait = [spr_bs_p,spr_steve_p,spr_kevin_p]
	cs_check = 8
}
if cs_check = 8 && text_talking = 0 && !instance_exists(obj_pumpkinroller){
	global.battle_index = 4
	instance_create_depth(x,y,depth,obj_pumpkinroller)
	cs_check = 9

}
if cs_check = 9 && !instance_exists(obj_pumpkinroller) {
	audio_stop_all()
	audio_stop_sound(snd_thebigone)
	audio_sound_pitch(snd_thebigone,0)
		obj_cs_2_mk.destroy_timer = 60*5
	instance_create_depth(obj_cs_2_mk.x,obj_cs_2_mk.y,depth - 99,obj_cs_2_boom)
cs_check = 10
}
if cs_check = 10 && !instance_exists(obj_cs_2_mk) {
	obj_cs_2_bs.scared_check = 0
	obj_cs_2_bs.sprite_index = spr_bs_b
	obj_cs_2_bf.scared_check = 0 
	obj_cs_2_bf.peruse_check = 1
	obj_cs_2_bf.sprite_index = spr_bf_peruse
	instance_create_depth(round(obj_cs_2_kn.x),round(obj_cs_2_kn.y),depth,obj_cs_2_kn_down)
	instance_destroy(obj_cs_2_kn)
	cs_check = 11
}
if cs_check = 11 && !instance_exists(obj_cs_2_kn_down) {
	instance_create_depth(obj_cs_2_bs.x,obj_cs_2_bs.y,depth,obj_cs_2_bs_move)
	instance_create_depth(obj_cs_2_bf.x,obj_cs_2_bf.y,depth,obj_cs_2_bf_move)
	instance_destroy(obj_cs_2_bs)
	instance_destroy(obj_cs_2_bf)
	text_talking = 1
	text_string = ["Oh gosh!//Are you okay?!","Yeah...//You must be terrified!","...I sure am...","I'm fine, gosh being possessed is...","Not fun...","Hey...//Who're you two?","We're the...","...Specter X-Terminators!","Did you two save me?","Yep.","So you hunt ghosts?","Spot on, yes.","Well that guy who just...","...Exploded...","Said they were planning something big...","What!?//Where?","A summer camp...//Called...","Camp GemPond!","You heard the girl!","Let's go!"]
	text_voice = [snd_voice_bs,snd_voice_bf,snd_voice_bf,snd_voice_k,snd_voice_k,snd_voice_k,snd_voice_stev,snd_voice_kev,snd_voice_k,snd_voice_stev,snd_voice_k,snd_voice_kev,snd_voice_k,snd_voice_k,snd_voice_k,snd_voice_stev,snd_voice_k,snd_voice_k,snd_voice_stev,snd_voice_kev]
	text_portrait = [spr_bs_p,spr_bf_p,spr_bf_p,spr_k_p,spr_k_p,spr_k_p,spr_steve_p,spr_kevin_p,spr_k_p,spr_kevin_p,spr_k_p,spr_kevin_p,spr_k_p,spr_k_p,spr_k_p,spr_steve_p,spr_k_p,spr_k_p,spr_steve_p,spr_kevin_p]
	cs_check = 12
}
if cs_check = 12 && text_talking = 0 {
	obj_cs_2_kev.targety = 999
	obj_cs_2_stev.targety = 999
		if !instance_exists(obj_fade) {
		instance_create_depth(x,y,depth,obj_fade_0)
		obj_fade_0.rm_next = rm_credits
	}
}
		
	
