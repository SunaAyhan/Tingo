/// @description Insert description here
// You can write your code in this editor
if ds_map_exists(async_load, "id")
    {
    switch(async_load[? "id"])
        {
        case achievement_our_info:
        global.PlayerName = async_load[? "name"];
        global.PlayerID = async_load[? "playerid"];
        show_debug_message("GOOGLE SERVICES: User " + global.PlayerName + " with ID " + string(global.PlayerID) + " has logged in");
        break;
        }
    }