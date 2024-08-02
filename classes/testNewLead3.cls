@isTest
public class testNewLead3 {

    @isTest
    public static void testaCold(){
        Lead lead = new Lead(LastName = 'Test', company = 'Test', Status = 'Open - Not Contacted', AnnualRevenue = 5000);
        insert lead;
        
        Lead lead2 = [Select Id, Fax, Website, AnnualRevenue, Rating from Lead where Id = :lead.id];
        
        System.Assert(lead2.Rating == 'Cold', 'Não foi');
    }
    
    @isTest
    public static void testaWarm(){
        Lead lead = new Lead(LastName = 'Test', company = 'Test', Status = 'Open - Not Contacted', AnnualRevenue = 50000);
        insert lead;
        
        Lead lead2 = [Select Id, Fax, Website, AnnualRevenue, Rating from Lead where Id = :lead.id];
        
        System.Assert(lead2.Rating == 'Warm', 'Não foi');
    }
    
    @isTest
    public static void testaHot(){
        Lead lead = new Lead(LastName = 'Test', company = 'Test', Status = 'Open - Not Contacted', AnnualRevenue = 500000);
        insert lead;
        
        Lead lead2 = [Select Id, Fax, Website, AnnualRevenue, Rating from Lead where Id = :lead.id];
        
        System.Assert(lead2.Rating == 'Hot', 'Não foi');
    }
}