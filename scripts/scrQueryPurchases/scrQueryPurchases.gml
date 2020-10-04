function scrQueryPurchases() {
	/*
	   In this script we query for existing purchases made in a previous run of the game - such as any unacknowledged purchases, durables and active subscriptions.
   
	   This script largely replicates the flow for a new purchase, but does so via the ..._QueryPurchases() functions, which will return the result immediately 
	   rather than waiting for the async, so we do kinda have to have this code twice...
	*/

	switch (os_type)
	{
		case os_android:
		{
			var queryPurchasesRes = GPBilling_QueryPurchases(gpb_purchase_skutype_inapp);
			var purchaseMapIndex = json_decode(queryPurchasesRes);
		
			if (purchaseMapIndex >= 0)
			{
				var list = purchaseMapIndex[? "purchases"];
				var size = ds_list_size(list);
			
				for (var n = 0; n < size; n++;)
				{
					var purchaseMap = list[| n];
					var purchaseToken = purchaseMap[? "purchaseToken"];
					var sku = purchaseMap[? "productId"];
					
					show_debug_message("Found a purchase of " + sku);
				
					if (ALLOWLOCALVERIFY) { scrVerifyLocally(purchaseToken, sku); } // You should not be doing it this way...
					else { var url = scrVerifyWithServer(purchaseToken, sku); } // You should be doing it this way...
				}
				
				ds_map_destroy(purchaseMapIndex);
			}
			
			queryPurchasesRes = GPBilling_QueryPurchases(gpb_purchase_skutype_subs);
			purchaseMapIndex = json_decode(queryPurchasesRes);
		
			if (purchaseMapIndex >= 0)
			{
				var list = purchaseMapIndex[? "purchases"];
				var size = ds_list_size(list);
			
				for (var n = 0; n < size; n++;)
				{
					var purchaseMap = list[| n];
					var purchaseToken = purchaseMap[? "purchaseToken"];
					var sku = purchaseMap[? "productId"];
					
					show_debug_message("Found a purchase of " + sku);

					var url = scrVerifyWithServer(purchaseToken, sku);
				}
				
				ds_map_destroy(purchaseMapIndex);
			}
		
			break;
		} // End of case android:


	} // End of switch (os_type)



}
