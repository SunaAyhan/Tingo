/// @desc Setup

#macro ALLOWLOCALVERIFY true
#macro GODMODE "iap_test_1"
#macro NOADS "iap_test_2"
#macro REFUNDME "iap_test_3"
#macro BOOST "sub_test_1"

global.currentPurchase = ds_map_create();
global.currentPurchase[? "httpID"] = "";
global.currentPurchase[? "token"] = "";
global.currentPurchase[? "sku"] = "";
global.boostEnabled = false;
global.refundNotHappened = false;
global.iapStatus = false;

scrConnectToStore();