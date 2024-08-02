trigger AccountTrigger1 on Account (before insert, before update) {

    for(Account account : trigger.new){
        if(account.ShippingAddress == null){
			account.ShippingCity = account.BillingCity; 
			account.ShippingCountry = account.BillingCountry;
			account.ShippingPostalCode = account.BillingPostalCode;
			account.ShippingState = account.BillingState;
			account.ShippingStreet = account.BillingStreet;
        }
    }
}