/// @description  Receive async messages from the cloud saving service
if ds_map_find_value(async_load, "id") == cloud_check_file
{
    if ds_map_find_value(async_load, "status") < 0
    {
        //show_message_async("Cloud Services not available.");
		//show_debug_message("\nCouldnt save4 ");
		show_message_async("Cloud Services not available. Please try again later");
    }
    else
    {
        if ds_map_find_value(async_load, "status") == 0
        {
            // Saving a file
            var file = file_text_open_write("data.sv");
            file_text_write_string(file, ds_map_find_value(async_load, "resultString"));
            file_text_close(file);
			show_message_async("Your Data synchronised successfully");
			//show_debug_message("\nCould save3 ");
            
        }//else{
			//show_debug_message("\nCouldnt save1 ");
		//}
    }
}