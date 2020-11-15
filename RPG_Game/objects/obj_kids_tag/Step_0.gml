event_inherited()

if (is_it == true)
{
	nearest_inst = instance_nearest(x, y, obj_kids_tag);
	des_x = nearest_inst.x;
	des_y = nearest_inst.y;
}

if(point_distance(x,y,des_x,des_y) <= 10){
	at_location = true;
	
	if (is_it == true)
	{
		is_it = false;
		nearest_inst.alarm[0] = 500;
		curr_wait_time = 150;
	}
}

if at_location {
	curr_wait_time += 1
	if curr_wait_time >= wait_at_location {
		getDestination()
		curr_wait_time = 0
		at_location = false
	} 
}

if mp_grid_path(PATH_GRID, path, x, y, des_x, des_y, true){
	path_start(path, mspd, path_action_stop, false)
}
