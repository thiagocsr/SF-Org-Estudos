@isTest
public class testeOppFinalBoss4 {

    @isTest
    public static void viraNegotiation(){
        Opportunity opp = new Opportunity(Name = 'Aloukj',Amount = 510000, StageName = 'Prospecting', CloseDate = date.today()+30);
        insert opp;
        
        Opportunity opp2 = [Select Name, StageName From Opportunity where id = :opp.Id];        
        System.Assert(opp2.StageName == 'Negotiation/Review', 'Num foi >:(');
    }
    
    @isTest
    public static void naoViraNegotiation(){        
        
        Opportunity opp = new Opportunity(Name = 'Aloukj',Amount = 10000, StageName = 'Prospecting', CloseDate = date.today()+30);
        insert opp;
        
        Opportunity opp2 = [Select Name, StageName From Opportunity where id = :opp.Id];        
        System.Assert(opp2.StageName == opp.StageName, 'Num foi >:(');
    }
}