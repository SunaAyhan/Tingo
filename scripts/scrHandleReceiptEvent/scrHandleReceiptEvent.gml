function scrHandleReceiptEvent(argument0) {
	var mapId = argument0;

	show_debug_message("Handling IAP receipt");

	switch (os_type)
	{
		case os_android:
		{
			if (ds_map_exists(mapId, "purchases")) 
			{
				var purchases = mapId[? "purchases"];
				var purchasesSize = ds_list_size(purchases);
				
				for (var i = 0; i < purchasesSize; i++;)
				{
					var purchaseMap = purchases[| i];
					var purchaseToken = purchaseMap[? "purchaseToken"];
					var sku = purchaseMap[? "productId"];
					
					if (ALLOWLOCALVERIFY == false) // This is set to true by default in objIAPController's Create event, but only for the purposes of testing local verification - it SHOULD be false!
					{		
						var url = scrVerifyWithServer(purchaseToken, sku);
						log("Verifying purchase of " + sku + " via URL: " + url); 
					}
					else
					{	
						if (sku != BOOST) { scrVerifyLocally(purchaseToken, sku); }
						else { show_message_async("Local verification is enabled, so you can't buy subscriptions"); }
					}
					
				} // End of for...
			} // End of if (ds_map_exists(mapId, "purchases"))
		
			break;
		} // End of case android
	
	} // End of switch (os_type)



}
