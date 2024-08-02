@isTest
public class teste10E1 {
	
    @isTest
    public static void oppSupimpa(){
        Opportunity opp = new Opportunity(Name = 'Aloukj',Amount = 510000, StageName = 'Prospecting', CloseDate = date.today()+30, LeadSource = 'Web');
        insert opp;
        
        Opportunity opp2 = [Select Id, StageName, Description From Opportunity where id = :opp.id];
        
        System.Assert(opp2.StageName == 'Qualification', 'Num foi :(');
        System.Assert(opp2.Description == 'Essa oportunidade deverá ter uma atenção especial, alta chance de fechamento!!!', 'Num foi :(');
    }
    
    @isTest
    public static void oppNaoSupimpa(){
        Opportunity opp = new Opportunity(Name = 'Aloukj',Amount = 510000, StageName = 'Prospecting', CloseDate = date.today()+30, LeadSource = 'Other');
        insert opp;
        
        Opportunity opp2 = [Select Id, StageName, Description From Opportunity where id = :opp.id];
        
        System.Assert(opp2.StageName == opp.StageName, 'Num foi :(');
        System.Assert(opp2.Description != 'Essa oportunidade deverá ter uma atenção especial, alta chance de fechamento!!!', 'Num foi :(');
    }
}