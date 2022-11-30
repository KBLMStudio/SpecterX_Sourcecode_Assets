// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_battle_box_match(targetx,targety){
	if battlebox_check = 0 {
if targetx < battlebox_x {
	battlebox_x -= 2
}
if targetx > battlebox_x { 
battlebox_x += 2
}
if targety < battlebox_y {
	 battlebox_y -= 2
}
if targety > battlebox_y{
	battlebox_y += 2
}
if battlebox_y = targety && battlebox_x = targetx {
	battlebox_check = 1 
	instance_create_depth(80,112,depth,obj_battlebox)
	obj_battlebox.image_xscale = targetx/18
	obj_battlebox.image_yscale = targety/18
	instance_create_depth(80-4,112-4,depth,obj_cursor)
}
draw_set_color(#00b800)
draw_sprite_ext(spr_battlebox,0,80,112,battlebox_x/18,battlebox_y/18,0,c_white,1)
}
}
