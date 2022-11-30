if global.npc_array[1] != 0 {
if text_talking = 1 {
	draw_sprite_ext(spr_save_bubble,0,256/2,256/2,200/32,100/32,0,c_white,1)
	draw_set_halign(fa_center)

	if save_check = 0 {
		draw_text(256/2,256/2-4,"Press Z to SAVE")
		draw_text(256/2,256/2+4,"Press X to CANCEL")
}
if save_check = 1 {
	draw_text(256/2,256/2-4,"SAVING...")
}
}
}
else {
	script_execute(scr_text_draw_npc)
}
