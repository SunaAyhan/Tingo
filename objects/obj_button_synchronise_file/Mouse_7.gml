/// @description  Synchronise with the cloud
with (controller) 
{
    cloud_check_file = cloud_synchronise();
    show_message_async("cloud_check_file = "+string(cloud_check_file));
}