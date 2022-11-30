draw_set_halign(fa_center)
if !file_exists("specterx_save.ini"){
draw_text(160/2,160/2-4,"Press X to return to title...")
}
else {
	draw_text(160/2,160/2-8,"Press Z to restart...")
	draw_text(160/2,160/2,"Press X to quit...")
}
