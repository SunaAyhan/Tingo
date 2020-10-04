function scrMakePurchase(argument0) {
	if (global.iapStatus == false) { show_message_async("Store is not available - check your internet connection and try again"); exit; }


	var productID = argument0;

	switch (os_type)
	{
		case os_android:
		{
			if (productID == BOOST) { GPBilling_PurchaseSubscription(productID); }
			else { GPBilling_PurchaseProduct(productID); }

			break;
		}	
	}



}
