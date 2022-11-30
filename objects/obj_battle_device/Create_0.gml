
camera_set_view_size(camera_get_active,160,160)
view_set_hport(view_current,320)
view_set_wport(view_current,320)
surface_resize(application_surface,320,320)
window_set_size(320,320)
global.battle_enemy_health = global.enemy_array[global.battle_index][1]
global.battle_enemy_max_health = global.enemy_array[global.battle_index][1]
global.battle_enemy_name = global.enemy_array[global.battle_index][0]
global.battle_enemy_damage = global.enemy_array[global.battle_index][2]
global.battle_enemy_defense = global.enemy_array[global.battle_index][3]
global.battle_enemy_desc = global.enemy_array[global.battle_index][4]
global.battle_enemy_exp = global.enemy_array[global.battle_index][5]
global.battle_enemy_object = global.enemy_array[global.battle_index][6]
global.battle_enemy_hurt = global.enemy_array[global.battle_index][7]
global.battle_enemy_attack = global.enemy_array[global.battle_index][8]
global.battle_music = global.enemy_array[global.battle_index][9]
if global.battle_music != 0 {
	audio_play_sound(global.battle_music,9,1)
}
instance_create_depth(80,48,depth,global.battle_enemy_object)
frame_check = 0
global.battle_turn = 1
global.battle_defend_kev = 0
global.battle_defend_stev = 0
battle_step = 0
quote_check = irandom_range(0,3) 
if quote_check = 0 {
	start_quote = " floats in!"
}
if quote_check = 1 {
	start_quote = " starts a haunting!"
}
if quote_check =2  {
	start_quote = " is ready to spook!"
}
if quote_check = 3 {
	start_quote = " is ready to tear you from this mortal coil!"
}
start_quote = global.battle_enemy_name + start_quote
script_execute(scr_text_setup)
text_string[0] = start_quote
text_width = 150
text_talking = 1
text_x = 4
text_y = 97

