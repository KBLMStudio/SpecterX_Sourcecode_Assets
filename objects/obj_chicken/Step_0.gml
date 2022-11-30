if global.npc_array[npc_index] = 0 {
	text_string = ["Jeez, what happened to this roast turkey?","It's been...//Eviscerated..."]
	text_voice = [snd_voice_stev,snd_voice_kev]
	text_portrait = [spr_steve_p,spr_kevin_p]
	}
	else {
		text_string = ["Keep an eye out for any...//vengeful...//...Turkey ghosts.","Are those...//...common?","I've only seen two..//...Or three...//So far...","..."]
		text_voice = [snd_voice_stev,snd_voice_kev,snd_voice_stev,snd_voice_kev]
		text_portrait = [spr_steve_p,spr_kevin_p,spr_steve_p,spr_kevin_p]
	}
