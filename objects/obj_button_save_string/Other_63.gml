/// @description  Get the user input and save
if (ds_map_find_value(async_load, "id") == get)
{
	if ds_map_find_value(async_load, "status")
	{
		var data = string(ds_map_find_value(async_load, "result"));
		with (controller) 
		{
			save_check_string = cloud_string_save(data, "test data for cloud save");
			show_message_async("save_check_string = "+string(save_check_string));
		}
	}
}