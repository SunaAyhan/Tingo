function scrShowProductDetails(argument0) {
	if (!DEBUG) { exit; }

	switch (os_type)
	{
		case os_android:
		{
			var product = argument0[? "productId"]
			if (product == undefined) { exit; }

			show_debug_message("Product = " + string(product));
			var details = "";

			var result = GPBilling_Sku_GetDescription(product);
			details = "Description: " + string(result) + "\n";
			result = GPBilling_Sku_GetFreeTrialPeriod(product);
			if (result != "") { details += "Free Trial Period: " + string(result) + "\n"; }
			result = GPBilling_Sku_GetIconUrl(product);
			if (result != "") { details += "Icon URL: " + string(result) + "\n"; }
			result = GPBilling_Sku_GetIntroductoryPrice(product);
			if (result != "") { details += "Introductory Price: " + string(result) + "\n"; }
			result = GPBilling_Sku_GetIntroductoryPriceAmountMicros(product);
			if (result != "") { details += "Introductory Price (micros): " + string(result) + "\n"; }
			result = GPBilling_Sku_GetIntroductoryPriceCycles(product);
			if (result != "") { details += "Introductory Price Cycles: " + string(result) + "\n"; }
			result = GPBilling_Sku_GetIntroductoryPricePeriod(product);
			if (result != "") { details += "Introductory Price Period: " + string(result) + "\n"; }
			result = GPBilling_Sku_GetOriginalPrice(product);
			if (result != "") { details += "Original Price: " + string(result) + "\n"; }
			result = GPBilling_Sku_GetOriginalPriceAmountMicros(product);
			if (result != "") { details += "Original Price (micros): " + string(result) + "\n"; }
			result = GPBilling_Sku_GetPrice(product);
			if (result != "") { details += "Price: " + string(result) + "\n"; }
			result = GPBilling_Sku_GetPriceAmountMicros(product);
			if (result != "") { details += "Price (micros): " + string(result) + "\n"; }
			result = GPBilling_Sku_GetPriceCurrencyCode(product);
			if (result != "") { details += "Currency Code: " + string(result) + "\n"; }
			result = GPBilling_Sku_GetSubscriptionPeriod(product);
			if (result != "") { details += "Subscription Period: " + string(result) + "\n"; }
			result = GPBilling_Sku_GetTitle(product);
			if (result != "") { details += "Title: " + string(result) + "\n"; }
			result = GPBilling_Sku_GetType(product);
			if (result != "") { details += "Type: " + string(result) + "\n"; }
		
			break;
		} // End of case os_android
	}

	show_debug_message(details);



}
