/// @description  Synchronise with the cloud
with (controller) 
{
    cloud_check_string = cloud_synchronise();
    show_message_async("cloud_check_string = "+string(cloud_check_string));
}