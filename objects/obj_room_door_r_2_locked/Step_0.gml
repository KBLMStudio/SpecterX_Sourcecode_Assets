if global.npc_array[10] = 0 {
if global.npc_array[npc_index] = 0 {
	text_string = ["Dang it!//It's locked!","And my readings show a surge of paranormal energy...","Hmm...//Well let's see if we can't find a key..."]
	text_voice=  [snd_voice_stev,snd_voice_kev,snd_voice_stev]
	text_portrait = [spr_steve_p,spr_kevin_p,spr_steve_p]
}
else {
	text_string = ["Well on further inspection...//...//...","Nope still locked.","Were you expecting it...//...not to be?","No, I was HOPING...//...not expecting."]
	text_voice = [snd_voice_stev,snd_voice_stev,snd_voice_kev,snd_voice_stev]
	text_portrait = [spr_steve_p,spr_steve_p,spr_kevin_p,spr_steve_p]
}
}
else {
	text_string = ["Hey!//The key fit right in!","Perfect!//We should be careful...//My readings are off the charts."]
	text_voice = [snd_voice_stev,snd_voice_kev]
	text_portrait = [spr_steve_p,spr_kevin_p]
}

