///@desc Show our IAP product details when the store tells us which products are available to purchase
function scrHandleProductEvent(argument0) {

	if (!DEBUG) { exit; }  // Everything in this script is relevant to the dev only, not players...


	var skusMap = argument0;

	switch (os_type)
	{
		case os_android:
		{
			if (skusMap[? "success"] == true)
			{
				var skusList = skusMap[? "skuDetails"];
				show_debug_message("Product List size = " + string(ds_list_size(skusList)));
			
				for (var i = 0; i < ds_list_size(skusList); i++) { scrShowProductDetails(skusList[| i]); }
			
				ds_list_destroy(skusList);
			}
			else { show_debug_message("!!!!! Product data response says no successful products"); }
		
			break;
		} // End of case android

	} // End of switch (os_type)



}
