/// @description  Receive async messages from the cloud saving service
if ds_map_find_value(async_load, "id") == cloud_check_file
{
    if ds_map_find_value(async_load, "status") < 0
    {
        show_message_async("Cloud Services not available.");
    }
    else
    {
        if ds_map_find_value(async_load, "status") == 0
        {
            // Saving a file
            var file = file_text_open_write("data.sv");
            file_text_write_string(file, async_load);
            file_text_close(file);
            
        }
    }
}