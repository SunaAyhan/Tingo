function scrUnlockPurchase(argument0, argument1) {
	/*
		Here, we handle finishing the purchase process for the product and we also unlock the in-game content for our players.
	
		Subscriptions don't ping the game on a change of status - it's not until your game is restarted will your game notice the subscription has ended. Google Play 
		has an optional real-time notification service which you can opt into, and this will then ping your payment server (not the game directly) and tell your server 
		that a subscription status has changed. You can then make your server send a HTTP event to the game if you want. We would highly recommend opting-in to real-time 
		updates and setting up this push notification-type support!				  
	
		There are some store-specific behaviours to be aware of also:
			Google will automatically refund your player their money and remove a purchase if it is not acknowledged within 48 hours.
	*/


	var sku = argument0;
	var token = argument1;

	switch (sku)
	{
		case GODMODE:
		{
			if (global.boostEnabled) { global.godsLeft += 10; }
			else { global.godsLeft += 5; }
			show_message_async("You bought some GodMode. Thanks!"); // Show a thank-you message

			switch (os_type)
			{
				case os_android:
				{
					GPBilling_ConsumeProduct(token);
					break;
				}
			}
		
			break;
		} 
	
	
		case NOADS:
		{
			global.ads = false;
			show_message_async("Enjoy the lack of ads!");

			switch (os_type)
			{
				case os_android:
				{
					GPBilling_AcknowledgePurchase(token); 
					break;
				}
			}
		
			break;
		}
	
	
		case REFUNDME:
		{	
			global.refundNotHappened = true;
			log("!!!! REFUNDME purchased");
		
			// We do nothing else with our NoAcknowledge product as we want to test the store refund policy mentioned above.
			// (This isn't a scenario you would do in a real game)
		
			break;
		}
	
	
		case BOOST:
		{
			global.boostEnabled = true;
			show_message_async("You now have 5mins of 2x each Coin purchase!");
		
			switch (os_type)
			{
				case os_android:
				{
					GPBilling_AcknowledgePurchase(token);
				
					break;
				}
			}
		
			break;
		} 
	
	
		default:
		{
			log("!!!! Unknown IAP Product attempted to be purchased");
		
			// Google Play doesn't want to know about non-legit purchases, but other stores do, so be careful if you're doing multi-platform, as you will need to handle this

			break;
		}
	
	}



}
