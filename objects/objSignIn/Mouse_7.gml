if(real(global.PlayerID)<0){
	show_debug_message("Signing-in to Google Play Services");
	with(controller){
		if achievement_available() achievement_login();
		if achievement_login_status() LogIn();
	}
}