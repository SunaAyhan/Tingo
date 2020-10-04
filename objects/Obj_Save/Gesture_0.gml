/// @description Insert description here
// You can write your code in this editor

if (GooglePlayServices_Status() != GooglePlayServices_SUCCESS) { GooglePlayServices_Init(); }

// ...And then confirm all is okay or handle a fail
if (GooglePlayServices_Status() == GooglePlayServices_SUCCESS) { achievement_login(); }
else { show_message_async("Error initialising Google Play Services, status code = " + string(GooglePlayServices_Status())); }

global.cloudSaveID = cloud_file_save("data.sv", "General save game data");

show_message_async("Successfully saved to cloud");