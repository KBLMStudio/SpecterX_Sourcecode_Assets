if ghost_alpha != 1 && title_check = 0{
ghost_alpha += .01
}
if ghost_alpha != 0 && title_check = 1 {
	ghost_alpha -= .1
}
if ghost_alpha = 0 && title_check = 1 && ghost_alpha_0 != 1 {
	ghost_alpha_0 += .1
}
image_alpha = ghost_alpha - abs(sin(timer*.1)*.25)
y = 128 + sin(timer*.25)*5
timer += .25
draw_sprite_part(spr_title,0,0,0,256,56,x-64,y-64)
index = 0
repeat 14 {
	draw_sprite_part(spr_title,0,0,56 + index,256,1,x-64 + sin(timer*.5+index*pi/2),y-8+index)
	index += 1
}
draw_sprite_part(spr_title,0,0,70,256,256-70,x-64,y+6)
draw_self()
if ghost_alpha != 0 {
draw_sprite_ext(spr_title_ghost_hands,0,x,y + sin(timer*.3)*2.5,1,1,0,c_white, ghost_alpha + cos(timer*.5)*.25)
}
if ghost_alpha = 1 && timer > 60 && title_check = 0 {
	draw_set_halign(fa_center)
	draw_set_font(global.def_font)
	draw_text(x,y+32,"Press Any Key")
}
if ghost_alpha = 0 && title_check = 1 {
	draw_set_halign(fa_center)
	draw_text(128,128+32,"Press Z")
	draw_text(128,128+40,"CONTINUE")
	draw_text(128,128+48,"NEW GAME")
	draw_sprite_ext(spr_ghost_icon,0,90,128+40+8*cursor_check,1,1,0,c_white,ghost_alpha_0)
}
