/// @description  Initialise Google Play Games

// Google Play Games
if achievement_available() achievement_login();
if achievement_login_status() show_message_async("Google Play Games login OK");

// Load Dsmap

// Initialise check variables
cloud_check_file = 0;
save_check_file = 0;
global.PlayerName = "Anon";
global.PlayerID = -1;