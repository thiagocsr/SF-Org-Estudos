@isTest
public class testeAccountFinalBoss2 {

    @isTest
    public static void semEndereco(){
        Account act = new Account(Name = 'Ia beurifó');
        act.BillingCity = 'Hellcife';
        act.BillingCountry = 'Brezel';
        act.BillingState = 'PE';
        act.BillingStreet = 'Rua x';
        act.BillingPostalCode = '123';
        insert act;
        
        Account act2 = [Select id, BillingCity, BillingCountry, BillingState, BillingStreet, BillingPostalCode,
                        ShippingCity, ShippingCountry, ShippingState, ShippingStreet, ShippingPostalCode
                        from Account where id = :act.Id];   
        
        System.Assert(act2.BillingCity == act2.ShippingCity);
        System.Assert(act2.BillingCountry == act2.ShippingCountry);
        System.Assert(act2.BillingState == act2.ShippingState);
        System.Assert(act2.BillingStreet == act2.ShippingStreet);
        System.Assert(act2.BillingPostalCode == act2.ShippingPostalCode);
    }
}