@isTest
public class teste10E2 {

    @isTest
    public static void tentaAlterarOrigem(){
        Opportunity opp = new Opportunity(Name = 'Aloukj',Amount = 510000, StageName = 'Prospecting', CloseDate = date.today()+30, LeadSource = 'Web');
        insert opp;
        
        boolean deuErro = false;
        opp.LeadSource = 'Other';
        
        try{
            update opp;
        }catch (Exception e){
            deuErro = true;
        }
        
        System.Assert(deuErro, 'Não foi :(');
    }
    
    @isTest
    public static void naoTentaAlterarOrigem(){
        Opportunity opp = new Opportunity(Name = 'Aloukj',Amount = 510000, StageName = 'Prospecting', CloseDate = date.today()+30, LeadSource = 'Web');
        insert opp;
        
        boolean deuErro = false;
        opp.Amount = 520000;
        
        try{
            update opp;
        }catch (Exception e){
            deuErro = true;
        }
        
        System.Assert(!deuErro, 'Não foi :(');
    }
}