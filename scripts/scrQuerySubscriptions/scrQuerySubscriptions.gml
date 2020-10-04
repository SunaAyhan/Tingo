function scrQuerySubscriptions() {
	/*
	   In this script we query for details of all SUBSCRIPTIONS purchase-able on Google Play.
   
	   Google Play is the only store to have a distinction between products and subscriptions, so none of the others are added here. (You should also not call this on Amazon, but up to you how you implement that.)
   
	   Note that this script is not doing anything with purchases - we're just asking the store for the detailed info on all the things our 
	   players COULD buy, so that our functions for returning the price, title, icon, etc., will all work later.
	*/

	if (os_type == os_android) { GPBilling_QuerySubscriptions(); }



}
