function scrVerifyWithServer(argument0, argument1) {
	var purchaseToken = argument0;
	var sku = argument1;

	// You need to change this to be your OWN verification server's IP address and port, or none of this will work!
	// Note that YoYo Games does not offer support for how you should write your web server - instead you should refer to the Google Play docs for up-to-date information on this
	var returnUrl = "http://10.36.11.73:8888/";

	switch (os_type)
	{
		case os_android:
		{
			returnUrl += "google-sub-verify?receiptId=" + purchaseToken + "&skuId=" + sku;
			global.currentPurchase[? "httpID"] = http_get(returnUrl); 
		
			break;
		}
	}

	global.currentPurchase[? "sku"] = sku;
	global.currentPurchase[? "token"] = purchaseToken;

	return returnUrl;



}
