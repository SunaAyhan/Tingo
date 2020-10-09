/// @description  Synchronise with the cloud
with (controller) 
{
	if(global.PlayerID>0){
	    cloud_check_file = cloud_synchronise();
	}else{
		show_message_async("Can't synchronise data. Please Sign-In from the main menu");
	}
}