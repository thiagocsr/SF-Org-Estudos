@isTest
public class teste10E3 {
    @isTest
    public static void valorBaixoNaoAlteraFase(){
        Opportunity opp = new Opportunity(Name = 'Aloukj',Amount = 1000, StageName = 'Prospecting', CloseDate = date.today()+30, LeadSource = 'Other');
        insert opp;
        
        boolean deuErro = false;
        opp.StageName = 'Negotiation/Review';
        
        try{
            update opp;
        }catch (Exception e){
            deuErro = true;
        }
        
        System.Assert(deuErro, 'Não foi :(');
    }

    @isTest
    public static void valorAltoAlteraFase(){
        Opportunity opp = new Opportunity(Name = 'Aloukj',Amount = 100000, StageName = 'Prospecting', CloseDate = date.today()+30, LeadSource = 'Other');
        insert opp;
        
        boolean deuErro = false;
        opp.StageName = 'Negotiation/Review';
        
        try{
            update opp;
        }catch (Exception e){
            deuErro = true;
        }
        
        System.Assert(!deuErro, 'Não foi :(');
    }
}