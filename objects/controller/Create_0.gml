/// @description  Initialise Google Play Games

// Google Play Games
global.ach1 = 0;
global.ach2 = 0;
global.ach3 = 0;
if (isLoggedIn()=1){
	if achievement_available() achievement_login();
	if achievement_login_status() show_debug_message("Google Play Games login OK");
}
// Load Dsmap

// Initialise check variables
cloud_check_file = 0;
save_check_file = 0;
global.PlayerName = "Anon";
global.PlayerID = -1;

global.app_id = "ca-app-pub-3871453776891057~1453889186";
global.banner_id = "ca-app-pub-3871453776891057/3442516449";
global.interstitial_id = "ca-app-pub-3871453776891057/2180749125";
//rewarded_id = "ca-app-pub-4337965814269841/5893055399";

GoogleMobileAds_Init(global.interstitial_id, global.app_id);
GoogleMobileAds_LoadInterstitial();
global.interstitial_loaded = false;