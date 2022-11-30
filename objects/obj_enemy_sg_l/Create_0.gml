destroy_check = 0
starty = y
timer = 0 
ghost_path = path_add()
path_add_point(ghost_path,x,y,1)
path_add_point(ghost_path,x+16*3,y,1)
path_start(ghost_path,50,path_action_reverse,0)

