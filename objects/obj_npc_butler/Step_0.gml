if global.npc_array[npc_index] = 0 {
	text_string[0] =  "Jeez...//This poor ghost must've been cleaning for decades!"
	text_string[1] = "...Why doesn't he just...//...Stop?"
	text_string[2] = "It's his job!//You gotta earn money somehow!"
	text_string[3] = "...?"
	text_voice[0] = snd_voice_stev
	text_voice[2] = snd_voice_stev
	text_voice[1] = snd_voice_kev
	text_voice[3] = snd_voice_kev
	text_portrait[0] = spr_steve_p
	text_portrait[2] = spr_steve_p
	text_portrait[1] = spr_kevin_p
	text_portrait[3] = spr_kevin_p
}
else {
	text_string[0] = "Does he...//Uh...//Need help..?"
	text_string[1] = "Theres nothing you can do about it."
	text_string[2] = "Why?"
	text_string[3] = "The vaccum's kinda...//...incorporeal."
		text_voice[1] = snd_voice_stev
	text_voice[3] = snd_voice_stev
	text_voice[0] = snd_voice_kev
	text_voice[2] = snd_voice_kev
	text_portrait[1] = spr_steve_p
	text_portrait[3] = spr_steve_p
	text_portrait[0] = spr_kevin_p
	text_portrait[2] = spr_kevin_p
}
