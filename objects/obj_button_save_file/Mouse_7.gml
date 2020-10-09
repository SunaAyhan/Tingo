/// @description  Save the data
with (controller) 
{
	if(global.PlayerID>0){
		save_check_file = cloud_file_save("data.sv", "SavedGame");
		show_message_async("Your Data Saved Successfully");
	}else{
		show_message_async("Can't Save. Please Sign-In from the main menu");
	}
}