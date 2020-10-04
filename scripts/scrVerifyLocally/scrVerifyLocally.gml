function scrVerifyLocally(argument0, argument1) {
	var purchaseToken = argument0;
	var product = argument1;			
	var verifyResult = false;

	switch (os_type)
	{
		case os_android:
		{
			// Google Play
			var signature = GPBilling_Purchase_GetSignature(purchaseToken);
			var purchaseJson = GPBilling_Purchase_GetOriginalJson(purchaseToken);
			
			if (GPBilling_Purchase_VerifySignature(purchaseJson, signature))
			{
				log("!!!!! LOCAL VERIFIED purchase: " + purchaseToken);
				scrUnlockPurchase(product, purchaseToken);
				verifyResult = true;
			}

			break;
		} // End of case android
		
	}

	if (!verifyResult)
	{
		log("!!!!! FAILED verification of " + product + " purchase: " + purchaseToken);
	}



}
