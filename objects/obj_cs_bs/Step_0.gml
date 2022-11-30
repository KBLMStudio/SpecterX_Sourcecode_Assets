depth = -y
if check = 0 && x!= 32 {
	x += .5
	sprite_index = spr_bs_r
	if x = 32 {
		check = 1
		image_speed = 0
				image_index= 0 
	}
}
if check =1 {
	timer += 1
	if timer = 16 {
		sprite_index = spr_bs_l
				image_index= 0 
		image_speed = 0
		check = 2
		timer = 0
	}
}
if check = 2 {
	timer += 1
	if timer = 16 {
		check = 3
		timer = 0
		obj_cs_0.text_talking = 1
		obj_cs_0.text_string[0] = "Huff... Huff...//Oh, thank goodness, I think I lost him..."
	}
}
if check =3 && obj_cs_0.text_talking = 0 {
	timer +=1 
	if timer = 16 {
		sprite_index = spr_bs_r
		image_index= 0 
		check = 4 
		timer = 0
		obj_cs_0.text_talking = 1
		obj_cs_0.text_string[0] = "I just need to get this stupid car running...//And I'll be home free!"
	}
}
if check = 4 && obj_cs_0.text_talking = 0 {
	if x != 64+16 {
		x = x + .5
		image_speed = 1
	}
	else {
		visible = 0
		check = 5
				obj_cs_0.text_talking = 1
		obj_cs_0.text_string[0] = "C'mon...//C'mon..."
	}
}
if check =  5 && obj_cs_0.text_talking = 0 && obj_car.check = 0 {
obj_car.check = 1
}
if check = 6 && x != 128 {
	x = x + .5
	visible = 1
	image_speed = 1
	if x = 128 {
	image_speed = 0
	image_index = 0
		check = 7 
		timer = 0
		audio_play_sound(mus_mckiller,999,1)
	}
}
if check = 7 {
	timer += 1 
	sprite_index = spr_bs_l
	if timer = 15 {
		obj_cs_0.text_talking = 1
		obj_cs_0.text_portrait[1] = spr_bs_p
		obj_cs_0.text_string = ["Oh no...//OH NO...//OH NO!","He's here...//Somebody, anybody HELP!"]
		obj_cs_0.text_voice = [snd_voice_bs,snd_voice_bs]
		check = 8
		sprite_index = spr_bs_talk
		image_speed = 1
	}
}
if check = 8 && obj_cs_0.text_talking = 0 {
	sprite_index = spr_bs_b
	image_speed = 0
	image_index= 0
			instance_create_depth(-32,320,depth,obj_cs_mk)
			obj_cs_0.text_talking =1 
			obj_cs_0.text_portrait = [spr_steve_p,spr_kevin_p]
			obj_cs_0.text_string = ["Is something the matter?//We heard yelling over here!","Yeah...//Really loud yelling...//Is this normal on the job?"]
			obj_cs_0.text_voice = [snd_voice_stev,snd_voice_kev]
			check = 9
					instance_create_depth(256+32,352,depth,obj_cs_0_stev)
}
if check = 9 && obj_cs_0.text_talking = 0 && obj_cs_0_stev.x = 160 {
	obj_cs_0.text_talking = 1 
	obj_cs_0.text_portrait = [spr_steve_p,spr_kevin_p,spr_steve_p,spr_steve_p,spr_steve_p,spr_kevin_p,spr_steve_p,spr_bs_p]
	obj_cs_0.text_string = ["Hey who're...//...//YOU!","What, what is it?//...//A GHOST!","Not just any ghost...//it's...//...Murphy Mckill!","If I had a dollar for everytime I had to deal with this guy!//...","What am I saying?//This is my job...//I DO have a dollar for everytime!","So what do we do next?","Okay, just follow my lead!","...//...//Who are you...?"]
	obj_cs_0.text_voice = [snd_voice_stev,snd_voice_kev,snd_voice_stev,snd_voice_stev,snd_voice_stev,snd_voice_kev,snd_voice_stev,snd_voice_bs]
	check = 10
}
if check = 10 && obj_cs_0.text_talking = 0 && !instance_exists(obj_pumpkinroller) {
	instance_create_depth(0,0,depth,obj_pumpkinroller)
	global.battle_index = 0
	check = 11
}
if check = 11 && !instance_exists(obj_pumpkinroller) {
	sprite_index = spr_bs_r
	obj_cs_0_stev.sprite_index = spr_steve_l
	obj_cs_mk.check = 99
	obj_cs_0.text_voice = [snd_voice_bs,snd_voice_bs,snd_voice_stev,snd_voice_stev,snd_voice_bs,snd_voice_stev,snd_voice_kev,snd_voice_stev,snd_voice_kev]
	obj_cs_0.text_portrait = [spr_bs_p,spr_bs_p,spr_steve_p,spr_steve_p,spr_bs_p,spr_steve_p,spr_kevin_p,spr_steve_p,spr_kevin_p]
	obj_cs_0.text_string = ["Oh thank Goodness!//He's gone!","...//Who are you guys, by the way?","US?//We're the...","Specter X-Terminators!//Taking care of all your specter problems!","Neat...//How did you get rid of that ghost guy?","Oh, we just slapped him around a bit...//In fact he returns yearly!","Uh...//...Steve, are you aware that Mckill... Didn't leave?","What?!","Well...//My readings say he went...//There!"]
	obj_cs_0.text_talking = 1
check = 12
}
if check = 12 && obj_cs_0.text_talking = 0 {
	if camera_get_view_y(view_camera[0]) != 0 {
		camera_set_view_pos(view_camera[0],0,camera_get_view_y(view_camera[0])-2)
	}
	else {
		check = 13
		obj_cs_0.text_string= ["The mansion!?//My friends are in there!","Why are they in an abandoned...//...HAUNTED...//Mansion!?","Can you think of a better location for a halloween party?","...//...Good point.","Alright Kevin let's go!","...sigh."]
		obj_cs_0.text_voice = [snd_voice_bs,snd_voice_stev,snd_voice_bs,snd_voice_stev,snd_voice_stev,snd_voice_kev]
		obj_cs_0.text_portrait = [spr_bs_p,spr_steve_p,spr_bs_p,spr_steve_p,spr_steve_p,spr_kevin_p]
		obj_cs_0.text_talking = 1
	}
}
if check = 13 && obj_cs_0.text_talking = 0 {
	instance_create_depth(0,0,depth,obj_fade_cs_0)
}
