var eventId = async_load[? "id"];

switch (eventId)
{
	case gpb_store_connect:
	{
		log("!!!!! GOOGLE PLAY CONNECTED");
		global.iapStatus = true;
		scrInitProducts(); // Now we are connected, we can activate our Google Play IAPs
		
		break;
	}
	
	
	case gpb_iap_receipt:
	{
		log("!!!!! RECEIVED IAP RECEIPT");  // Note that this will show for cancelled purchases, trying to re-buy a durable/un-acknowledged IAPs, and various other harmless reasons, so debug-only
	
		var responseMap = json_decode(async_load[? "response_json"]);

		scrHandleReceiptEvent(responseMap);
		ds_map_destroy(responseMap);
		
		break;
	}
	

	case gpb_product_data_response:
	{
		if (DEBUG)   // Everything in this event type is relevant to the dev only, not players...
		{ 
			show_debug_message("!!!!! RECEIVED PRODUCT DATA RESPONSE");
		
			var responseMap = json_decode(async_load[? "response_json"]);
		
			if (responseMap != -1)
			{
				scrHandleProductEvent(responseMap);
			
				ds_map_destroy(responseMap);
			}
			else { show_debug_message("!!!!! Product data response was empty"); }
		}
		
		break;
	}
	
	
	case gpb_subscription_data_response:
	{
		if (DEBUG)   // Everything in this event type is relevant to the dev only, not players...
		{ 
			show_debug_message("!!!!! RECEIVED GOOGLE PLAY SUBSCRIPTION DATA RESPONSE");
		
			var responseMap = json_decode(async_load[? "response_json"]);
		
			if (responseMap != -1)
			{
				if (responseMap[? "success"] == true)
				{
					var skusList = responseMap[? "skuDetails"];
					show_debug_message("Subscription List size = " + string(ds_list_size(skusList)));
			
					for (var i = 0; i < ds_list_size(skusList); i++) { scrShowProductDetails(skusList[| i]); }
			
					ds_list_destroy(skusList);
				}
				else{ show_debug_message("!!!!! Subscription data response says no successful products"); }
	
				ds_map_destroy(responseMap);
			}
			else { show_debug_message("!!!!! Subscription data response was empty"); }
		}
		
		break;
	}
	
	
	case gpb_purchase_status:
	{
		log("!!!!! RECEIVED PURCHASE STATUS");
		
		// TODO ?? (Doesn't seem to be required for essential operations)
		
		break;
	}
	

	case gpb_product_consume_response:
	{
		if (DEBUG)   // Everything in this event type is relevant to the dev only, not players...
		{ 
			show_debug_message("!!!!! RECEIVED GOOGLE PLAY PRODUCT CONSUME RESPONSE");
		
			var responseMap = json_decode(async_load[? "response_json"]);
		
			if (responseMap != -1)
			{
				if (ds_map_exists(responseMap, "purchaseToken")) 
				{
					var consumedToken = responseMap[? "purchaseToken"];
					show_debug_message("Purchase token consumed: " + consumedToken);
				}
				else { show_debug_message("!!!!! Consume response says no successful consumes"); }
			
				ds_map_destroy(responseMap);
			}
			else { show_debug_message("!!!!! Consume response was empty"); }
		}
		
		break;
	}
	
	
	case gpb_acknowledge_purchase_response:
	{
		if (DEBUG)   // Everything in this event type is relevant to the dev only, not players...
		{ 
			show_debug_message("!!!!! RECEIVED GOOGLE PLAY ACKNOWLEDGE PURCHASE RESPONSE");
		
			var response_json = async_load[? "response_json"];
			var responseMap = json_decode(response_json);
		
			if (responseMap != -1)
			{
				if (ds_map_exists(responseMap, "responseCode")) 
				{
					var responseCode = responseMap[? "responseCode"];
					show_debug_message("Response code: " + string(responseCode));
				}
				else { show_debug_message("!!!!! Acknowledge response says no successful acknowledges"); }
			
				ds_map_destroy(responseMap);
			}
			else { show_debug_message("!!!!! Purchase response was empty"); }
		}
		
		break;
	}
	

} // End of Switch
