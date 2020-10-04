function scrConnectToStore() {
	switch (os_type)
	{
		case os_android:
		{
			GPBilling_ConnectToStore();   // Will return a connection event in objIAPController's IAP event
			break;
		}
	}



}
