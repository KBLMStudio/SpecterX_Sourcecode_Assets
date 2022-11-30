draw_set_color(#00b800)
draw_set_halign(fa_left)
if battle_step != 3 {
draw_sprite_ext(spr_battlebox,0,80,95+17,156/18,36/18,0,c_white,1)
}
draw_set_color(c_white)
if battle_step = 0 {
script_execute(scr_text_draw)
}
if battle_step = 1 or battle_step = 2 {
	if step_check = 0 {
	draw_text(12,65+43,"Fight")
	draw_text(115,65+43,"Defend")
	draw_text(12,65+52,"Check")
	if battle_step =1 {
	draw_text(4,65+32,"Steve")
	}
	else {
		draw_text(4,65+32,"Kevin")
	}
	if cursor_index = 0 {
		draw_sprite(spr_ghost_icon,0,3,65+43)
	}
	if cursor_index = 1 {
		draw_sprite(spr_ghost_icon,0,106,65+43)
	}
	if cursor_index = 2 {
		draw_sprite(spr_ghost_icon,0,3,65+52)
	}
}
else if cursor_index != 0 || step_check = 3 {

	script_execute(scr_text_draw)
}
}
if frame_check = 0{
	frame_check = 1
}
if battle_step = 4 {
script_execute(scr_text_draw)
}
