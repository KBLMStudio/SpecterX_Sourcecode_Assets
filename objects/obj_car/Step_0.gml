depth = -y -1
if check = 1 {
	if timer = 0 && car_check = 0 {
		audio_play_sound(snd_car,1,0)
		car_check = 1
	}
	if car_check = 1 && !audio_is_playing(snd_car){
	timer += 1
}
if car_check = 1 && !audio_is_playing(snd_car) && timer > 60 {
	audio_play_sound(snd_car,1,0)
	car_check = 2

}
if car_check = 2 && !audio_is_playing(snd_car) {
	instance_create_depth(x+64,y+16,depth,obj_fx_smoke_gen)
		obj_cs_0.check = 9
	obj_cs_0.text_talking = 1
	obj_cs_0.text_string[0] = "OH COME ON!//You've gotta be kidding me!"
	car_check = 3
}
}
if audio_is_playing(snd_car) {
	x = startx + random_range(-1,1)
	y = starty + random_range(-1,1)
}
else {
	x = startx
	y = starty
}
