@isTest
public class testNewLead {

    @isTest
    public static void testaLead(){
        Lead lead = new Lead(LastName = 'Test', company = 'Test', Status = 'Open - Not Contacted');
        insert lead;
        
        Lead lead2 = [Select Id, Fax, Website, AnnualRevenue from Lead where Id = :lead.id];
        
        System.Assert(lead2.AnnualRevenue == 10000, 'Não foi');
        System.Assert(lead2.Fax == '(55) 5555555', 'Não foi');
        System.Assert(lead2.Website == 'www.google.com', 'Não foi');
    }
}