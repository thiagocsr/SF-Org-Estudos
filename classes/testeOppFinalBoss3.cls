@isTest
public class testeOppFinalBoss3 {

    @isTest
    public static void contaComDesconto(){        
        Account act = new Account(Name = 'Viposa', Vip__c = true);
        insert act;
        
        Opportunity opp = new Opportunity(Name = 'Aloukj', AccountId = act.Id, Amount = 10000, StageName = 'Prospecting', CloseDate = date.today()+30);
        insert opp;                   
        
        Opportunity opp2 = [Select Id, Amount from Opportunity where Id = :opp.Id];
        
        System.Assert(opp2.Amount == 9000, 'Num foi :(');
    }
    
    @isTest
    public static void contaSemDesconto(){        
        Account act = new Account(Name = 'Não Viposa', Vip__c = false);
        insert act;
        
        Opportunity opp = new Opportunity(Name = 'Lkasx', AccountId = act.Id, Amount = 10000, StageName = 'Prospecting', CloseDate = date.today()+30);
        insert opp;                   
        
        Opportunity opp2 = [Select Id, Amount from Opportunity where Id = :opp.Id];
        
        System.Assert(opp2.Amount == 10000, 'Num foi :(');
    }
}