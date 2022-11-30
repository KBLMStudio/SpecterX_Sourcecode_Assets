if sprite_index = spr_tv_intro {
	sprite_index = spr_tv_laugh
	audio_play_sound(snd_tv_laugh,1,0)
}
if sprite_index = spr_tv_laugh && !audio_is_playing(snd_tv_laugh){
	image_speed = 0
	global.battle_index = 3 
	instance_create_depth(x,y,depth,obj_pumpkinroller)
}
