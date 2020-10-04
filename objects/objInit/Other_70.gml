var name;
var ident = async_load[? "id"];


if (ident == achievement_our_info)
{
	show_debug_message("Social async event achievement_our_info received");
	
    var name = ds_map_find_value(async_load, "name" );
    var playerid = ds_map_find_value(async_load, "playerid" );
    show_debug_message("Found name " + string(name) + " playerid " + string(playerid));
  
    global.OurName = name;
    global.OurId = playerid;
	
    // If we are now logged-in, let's look for any cloud saves
	if (playerid != -1) { global.cloudLoadID = cloud_synchronise(); }
}
else { show_debug_message("!! Unhandled social event received !! ID = " + string(ident)); }
