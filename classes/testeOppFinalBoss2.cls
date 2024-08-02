@isTest
public class testeOppFinalBoss2 {

    @isTest
    public static void naoGeraTarefa(){
        Opportunity opp = new Opportunity(Name = 'Oláaaa159', CloseDate = date.today()+30, StageName = 'Prospecting', Amount = 5000);
        insert opp;
        
        Boolean criouTarefa = false;
        opp.StageName = 'Closed Won';
        update opp; 
        
        try{
        	Task task = [Select id, Subject, whatId from Task where whatId = :opp.Id];
        }catch (Exception e){
            criouTarefa = true;
        }
                              
        System.Assert(criouTarefa,'Num foi :(');
        
    }
    
    @isTest
    public static void geraTarefa(){
        Opportunity opp = new Opportunity(Name = 'Oláaaa159', CloseDate = date.today()+30, StageName = 'Prospecting', Amount = 50000);
        insert opp;
        
        Boolean criouTarefa = false;
        opp.StageName = 'Closed Won';
        update opp; 
        
        try{
        	Task task = [Select id, Subject, whatId from Task where whatId = :opp.Id];
        }catch (Exception e){
            criouTarefa = true;
        }
                              
        System.Assert(!criouTarefa,'Num foi :(');
        
    }
}