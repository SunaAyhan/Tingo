function scrQueryProducts() {
	/*
	   In this script we query for details of all PRODUCTS purchase-able on the store. Note that this script is not doing anything with purchases - we're just asking the store for the detailed info
	   on all the things our players could buy, so that our functions for returning the price, title, icon, etc., will all work later.
	*/

	switch (os_type)
	{
		case os_android:
		{
			GPBilling_QueryProducts();
		
			break;
		}
	}



}
