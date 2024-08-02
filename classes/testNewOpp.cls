@isTest
public class testNewOpp {

    @isTest
    public static void criaOppSemMotivo(){
        Opportunity opp = new Opportunity(Name = 'Oláaaa159', CloseDate = date.today()+30, StageName = 'Prospecting');
        insert opp;
        
        opp.StageName = 'Closed Lost';
        
        Boolean ocorreuExcecao = false;
        
        try{
            update opp;
        }catch (Exception e){
            ocorreuExcecao = true;
        }
        
        System.assert(ocorreuExcecao, 'Não deu erro!!!');
        
    }
    
    @isTest
    public static void criaOppComMotivo(){
        Opportunity opp = new Opportunity(Name = 'Oláaaa159', CloseDate = date.today()+30, StageName = 'Prospecting');
        insert opp;
        
        opp.Motivo_Perda__c = 'Sem estoque';
        opp.StageName = 'Closed Lost';
        
        update opp;
        
        Opportunity opp2 = [Select id, name, closeDate from Opportunity where name like '%Gerada automaticamenteeee%'];
        
        System.Assert(opp2.CloseDate == opp.CloseDate + 15, 'Não foi');
    }
}