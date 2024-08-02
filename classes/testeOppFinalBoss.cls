@isTest
public class testeOppFinalBoss {

    @isTest
    public static void naoPermiteAlterar(){
        Opportunity opp = new Opportunity(Name = 'Oláaaa159', CloseDate = date.today()+30, StageName = 'Closed Lost');
        insert opp;
        
        Boolean deuErro = false;
        opp.StageName = 'Closed Won';
        
        try{
        	update opp;
        }catch (Exception e){
            deuErro = true;
        }
        
        System.Assert(deuErro,'Num foi :(');
        
    }
    
    @isTest
    public static void permiteAlterar(){
        Opportunity opp = new Opportunity(Name = 'Oláaaa159', CloseDate = date.today()+30, StageName = 'Proposition');
        insert opp;
        
        Boolean deuErro = false;
        opp.StageName = 'Closed Won';
        
        try{
        	update opp;
        }catch (Exception e){
            deuErro = true;
        }
        
        System.Assert(!deuErro,'Num foi :(');
        
    }
}