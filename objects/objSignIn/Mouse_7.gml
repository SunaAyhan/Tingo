
show_debug_message("Signing-in to Google Play Services");
with(controller){
	if achievement_available() achievement_login();
	if achievement_login_status() show_message_async("Google Play Games login OK");
}