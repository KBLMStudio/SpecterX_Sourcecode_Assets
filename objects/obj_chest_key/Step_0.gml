if text_talking = 1 || global.npc_array[10] != 0 {
	image_index = 1
}
if global.npc_array[npc_index] = 0 && global.npc_array[8] = 1{
	text_string = ["Hey, a key!//This probably unlocks the door in the entrance.","Well, it's worth a shot."]
	text_voice = [snd_voice_stev,snd_voice_kev]
	text_portrait = [spr_steve_p,spr_kevin_p]
}
else if global.npc_array[npc_index] = 0 && global.npc_array[8] = 0 {
	text_string = [ "Hey, a key!//We should probably look for a//locked door.","I think I might've seen one in the main entrance."]
	text_voice = [snd_voice_stev,snd_voice_kev]
	text_portrait = [spr_steve_p,spr_kevin_p]
} 
else if global.npc_array[npc_index] = 1 && global.npc_array[9] = 0 {
	text_string = ["Empty.//I figured as much."] 
	text_voice = [snd_voice_stev]
	text_portrait = [spr_steve_p]
}
else if global.npc_array[9] = 1 {
	text_string = ["Huh, that key left behind a ghost key...","What?!//Really?","No...//That's the dumbest thing I've ever heard."]
	text_voice = [snd_voice_stev,snd_voice_kev,snd_voice_stev]
	text_portrait = [spr_steve_p,spr_kevin_p,spr_steve_p]
}
