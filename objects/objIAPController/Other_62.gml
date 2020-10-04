log("!!!! RECIEVED ASYNC HTTP RESPONSE");

//if (async_load[? "id"] == global.currentPurchase[? "httpID"])
//{
	if (async_load[? "status"] == 0)
	{
		if (async_load[? "result"] == "success")
		{
			var sku = global.currentPurchase[? "sku"];
			var token = global.currentPurchase[? "token"];
			
			show_debug_message("Unlocking HTTP purchase of " + sku);
			scrUnlockPurchase(sku, token);
			
			global.currentPurchase[? "httpID"] = "";
			global.currentPurchase[? "token"] = "";
			global.currentPurchase[? "sku"] = "";
		}
		else { log("HTTP result '" + string(async_load[? "result"]) + "' does not match the expected 'success', ignoring..."); }
	}
	else { log("HTTP status " + string(async_load[? "status"]) + " does not match the expected '0', ignoring..."); }
//}
//else { log("HTTP ID " + string(async_load[? "id"]) + " does not match the expected '" + string(global.currentPurchase[? "httpID"]) + "', ignoring..."); }