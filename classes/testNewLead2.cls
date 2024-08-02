@isTest
public class testNewLead2 {

    @isTest
    public static void testaVazio(){
        Lead lead = new Lead(LastName = 'Test', company = 'Test', Status = 'Open - Not Contacted');
        insert lead;
        
        Lead lead2 = [Select Id, Fax, Website, AnnualRevenue from Lead where Id = :lead.id];
        
        System.Assert(lead2.Fax == 'sem fax', 'Não foi');
        System.Assert(lead2.Website == 'site indefinido', 'Não foi');
        System.Assert(lead2.AnnualRevenue == 0, 'Não foi');
    }
}