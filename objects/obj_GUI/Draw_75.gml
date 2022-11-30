if room != rm_battle && room != rm_death {
draw_set_halign(fa_left)
draw_set_color(c_black)
draw_rectangle(0,0,256,16*2,0)
draw_set_color(c_white)
draw_set_font(global.def_font)
draw_text(2,2,"Steve")
draw_sprite(spr_steve_p_small,0,2,11)
draw_text(14,11,"HP: " + string(global.stev_array[0]) + "/" + string(global.stev_array[1]))
draw_text(14,20,"EXP: " + string(global.stev_array[4]))
draw_text(183+16-8,11,"HP: " + string(global.kev_array[0])  + "/" + string(global.kev_array[1]))
draw_text(183+16-8,20,"EXP: " + string(global.kev_array[4]))
draw_text(171+16-8,2,"Kevin")
draw_sprite(spr_kevin_p_small,0,171+16-8,11)
}

