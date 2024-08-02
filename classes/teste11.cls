@isTest
public class teste11 {

    @isTest
    public static void oppInsideIf(){
        Opportunity opp = new Opportunity(Name = 'Aloukj',Amount = 300000, StageName = 'Prospecting', CloseDate = date.today()+30, LeadSource = 'Other');
        insert opp;      

        Opportunity opp2 = [Select id, StageName From Opportunity where id = :opp.Id];

        System.Assert(opp2.StageName == 'Waiting', 'Não foi :(');
        
    }
    
    @isTest
    public static void oppOutsideIf(){
        Opportunity opp = new Opportunity(Name = 'Aloukj',Amount = 3000000, StageName = 'Prospecting', CloseDate = date.today()+30, LeadSource = 'Other');
        insert opp;      

        Opportunity opp2 = [Select id, StageName From Opportunity where id = :opp.Id];

        System.Assert(opp2.StageName == 'Payment', 'Não foi :(');
        
    }
}