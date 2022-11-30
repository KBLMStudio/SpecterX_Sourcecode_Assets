if attack_timer = 0 && !instance_exists(obj_text_bubble) && obj_battle_attack_device.text_talking = 0 {
attack_timer = 20
audio_play_sound(snd_battle_ghost_attack,1,0)
}
