if text_talking = 1 {
	script_execute(scr_text_z)
	if text_talking = 0 {
		check += 1
		if check = 1 {
			instance_create_depth(-32,256+96,depth,obj_cs_bs)
		}
		if check = 10 {
			obj_cs_bs.check = 6
	}
}
}
