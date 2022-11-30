timer += 0.5
if obj_cs_1.cutscene_check = 0 || obj_cs_1.cutscene_check = 1 {
x = startx + sin(timer)
}
if obj_cs_1.cutscene_check > 5 && obj_cs_1.cutscene_check < 8 { 
	x = startx + sin(timer*2)
}
