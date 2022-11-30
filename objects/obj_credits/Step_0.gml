if check = 0 {
	text_talking = 1
	text_string = ["Credits...","Programming, Spritework:// KBLM Studio","Music Made With:// Beepbox// Jummbox","Sound Effects Made With:// JFXR","Sprites Made With:// Piskel","Maps Made With:// Tiled"," Game Made With:// Gamemaker Studio 2","Thanks for Playing!"]
	text_voice = [snd_voice_default,snd_voice_default,snd_voice_default,snd_voice_default,snd_voice_default,snd_voice_default,snd_voice_default,snd_voice_default,snd_voice_default,snd_voice_default,snd_voice_default,snd_voice_default,snd_voice_default,snd_voice_default,snd_voice_default,snd_voice_default,snd_voice_default,snd_voice_default]
	check = 1
}
if check = 1 && text_talking = 0 {
	obj_cungadero.x += 1
	if !instance_exists(obj_fade) {
		instance_create_depth(x,y,depth,obj_fade_0)
		obj_fade_0.rm_next = rm_title
	}
}

