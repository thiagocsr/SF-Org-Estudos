@isTest
public class teste10E4 {

    @isTest
    public static void daErroAoAlterarFase(){
        Opportunity opp = new Opportunity(Name = 'Aloukj',Amount = 100000, StageName = 'Closed Won', CloseDate = date.today()+30, LeadSource = 'Other');
        insert opp;
        
        boolean deuErro = false;
        opp.StageName = 'Negotiation/Review';
        
        try{
            update opp;
        }catch (Exception e){
            deuErro = true;
            //System.Assert(false, 'Nao deu');
           //System.Assert(e.getMessage().contains('Erro'));
        }
        
        System.Assert(deuErro, 'Não foi :(');
    }
    
    @isTest
    public static void naoDaErroAoAlterarFase(){
        Opportunity opp = new Opportunity(Name = 'Aloukj',Amount = 100000, StageName = 'Closed Won', CloseDate = date.today()+30, LeadSource = 'Other');
        insert opp;
        
        boolean deuErro = false;
        opp.Amount = 200000;
        
        try{
            update opp;
        }catch (Exception e){
            deuErro = true;
        }
        
        System.Assert(!deuErro, 'Não foi :(');
    }
}