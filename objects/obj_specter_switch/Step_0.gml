if global.npc_array[npc_index] = 0 {
	if global.npc_array[18] = 0 {
text_string = ["What was that switch for?","It was a spirit switch...//A new area in the mansion must've been opened."]
text_voice = [snd_voice_kev,snd_voice_stev]
text_portrait = [spr_kevin_p,spr_steve_p]
}
else {
	text_string = ["Hey, this is the switch for that spirit barrier!","We should try to hurry back to that room."]
	text_voice = [snd_voice_kev,snd_voice_stev]
	text_portrait = [spr_kevin_p,spr_steve_p]
}
}
else {
text_string = ["Why are you unflipping that switch?","Just...//...Testing it...","I don't think you can break it by flipping it fast.","...//...//...Dang it."]
text_voice = [snd_voice_kev,snd_voice_stev,snd_voice_kev,snd_voice_stev]
text_portrait = [spr_kevin_p,spr_steve_p,spr_kevin_p,spr_steve_p]
}
if global.npc_array[npc_index] = 0 {
	image_index = 0
}
else {
	image_index = 1
}
