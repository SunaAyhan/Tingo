/// @description  Initialise Google Play Games

// Google Play Games
global.ach1 = 0;
global.ach2 = 0;
global.ach3 = 0;
if achievement_available() achievement_login();
if achievement_login_status() show_debug_message("Google Play Games login OK");

// Load Dsmap

// Initialise check variables
cloud_check_file = 0;
save_check_file = 0;
global.PlayerName = "Anon";
global.PlayerID = -1;

