function scrInitProducts() {
	var productAddResult = "";

	switch (os_type)
	{
		case os_android:
		{
			productAddResult = GPBilling_AddProduct(GODMODE);		
			show_debug_message("GODMODE added: " + string(productAddResult));
			
			productAddResult = GPBilling_AddProduct(NOADS);		
			show_debug_message("NOADS added: " + string(productAddResult));
			
			productAddResult = GPBilling_AddProduct(REFUNDME);		
			show_debug_message("REFUNDME added: " + string(productAddResult));
		
			productAddResult = GPBilling_AddSubscription(BOOST);
			show_debug_message("BOOST added: " + string(productAddResult));
		
			break;
		}
	}


	with (objIAPController)
	{
		// Need a short delay between calling the two, so the stores don't trip up returning us what we want
		alarm[0] = 1; // Query products
		alarm[1] = game_get_speed(gamespeed_fps) * 0.5; // Query subscriptions
		alarm[2] = game_get_speed(gamespeed_fps); // Query purchases
	}



}
