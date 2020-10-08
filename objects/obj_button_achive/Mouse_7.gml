/// @description  Save the data
with (controller) 
{
	if achievement_available()
	{
	    achievement_show_achievements()
	}
	else
	{
	    if !achievement_login_status()
	    {
	        achievement_login();
	    }
	}
}