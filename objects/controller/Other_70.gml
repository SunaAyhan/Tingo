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
		case GoogleMobileAds_ASyncEvent:
		var ident = async_load[? "type"];
		switch (ident)
		    {
		    case "banner_load":
		        if async_load[? "loaded"] == 1
		            {
		            var _bw = GoogleMobileAds_BannerGetWidth();
		            var _bh = GoogleMobileAds_BannerGetHeight();
		            var _hh = display_get_height();
		            var _ww = display_get_width();
		            GoogleMobileAds_MoveBanner((_ww / 2) - (_bw / 2), _hh - _bh);
		            }
		        break;
				case "interstitial_load":
	            if async_load[? "loaded"] == 1
	                {
						global.interstitial_loaded = true;
	                }
	            break;
				case "interstitial_closed":
			    GoogleMobileAds_LoadInterstitial();
			    break;
		    }
		break;
        }
    }