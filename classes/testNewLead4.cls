@isTest
public class testNewLead4 {

    @isTest
    public static void tentaAlterarRating(){
        Lead lead = new Lead(LastName = 'Ohayo', Status = 'Open - Not Contacted', Rating = 'Hot', AnnualRevenue = 500000, Company = 'Abluble');
        insert lead;
        
        lead.Rating = 'Cold';
        
        Boolean ocorreuExcecao = false;
        
        try{
            update lead;
        }catch (Exception e){
            ocorreuExcecao = true;
        }
        
        System.assert(ocorreuExcecao, 'Não deu erro!!!');
        
    }
    
}