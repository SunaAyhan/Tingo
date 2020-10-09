/// @description Insert description here
// You can write your code in this editor
if ds_map_exists(async_load, "id")
    {
    switch(async_load[? "id"])
        {
        case achievement_our_info:
        global.PlayerName = async_load[? "name"];
        global.PlayerID = async_load[? "playerid"];
        //show_debug_message("GOOGLE SERVICES: User " + global.PlayerName + " with ID " + string(global.PlayerID) + " has logged in");
        break;
		case achievement_achievement_info:
	    global.ach1 = ds_map_find_value(async_load, "AchComp" + string(1));
	    global.ach2 = ds_map_find_value(async_load, "AchComp" + string(1));
	    global.ach3 = ds_map_find_value(async_load, "AchComp" + string(1));
		//show_debug_message("ach get" + global.ach1 + " -1- " + global.ach2 + " -2- " + global.ach3 + " -3- ");

	    break;
        }
    }