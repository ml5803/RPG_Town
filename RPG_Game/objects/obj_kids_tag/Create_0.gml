path = path_add()
poss_destinations = [[44,356], [44,448], [310,435], [316,362], [577,474], [198, 204], [260,105], [320,277]]
num_des = 8
mspd = 0.5
wait_at_location = 150
curr_wait_time = 0

at_location = false

if (global.tag_list[0].x == x && global.tag_list[0].y == y)
{
	is_it = true;
}
else
{
	is_it = false;
}

function getDestination()
{
	
	if (is_it == false)
	{
		randomize()
		random_location = poss_destinations[irandom(num_des-1)]
		des_x = random_location[0]
		des_y = random_location[1]
	}
	else
	{
		nearest_inst = instance_nearest(x, y, obj_kids_tag);
		
		des_x = nearest_inst.x;
		des_y = nearest_inst.y
	}
}

getDestination()