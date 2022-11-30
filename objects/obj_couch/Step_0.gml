if global.npc_array[npc_index] = 0 {
	text_string = ["Jeez!//This thing is super dusty!","How long do you think it's been since a living person used this couch?","Decades...//Or days, I honestly have no idea."]
	text_voice = [snd_voice_stev,snd_voice_kev,snd_voice_stev]
	text_portrait = [spr_steve_p,spr_kevin_p,spr_steve_p]
	}
	else {
		text_string = ["If ghosts can float, why do they need couches?","If humans can walk why do they need chairs?//Exactly."]
		text_voice = [snd_voice_kev,snd_voice_stev]
		text_portrait = [spr_kevin_p,spr_steve_p]
	}
