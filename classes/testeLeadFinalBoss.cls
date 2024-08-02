@isTest
public class testeLeadFinalBoss {

    @isTest
    public static void naoGeraTarefa(){
        Lead lead = new Lead(LastName = 'Ohayo', Status = 'Open - Not Contacted', Rating = 'Hot', AnnualRevenue = 5000, Company = 'Abluble');
        insert lead;
        Boolean criouTarefa = false;
        
        try{
        	Task task = [Select id, Subject, whatId from Task where whoId = :lead.Id];
        }catch (Exception e){
            criouTarefa = true;
        }
        
        System.Assert(criouTarefa,'Num foi :(');
    }
    
    @isTest
    public static void geraTarefa(){
        Lead lead = new Lead(LastName = 'Ohayo', Status = 'Open - Not Contacted', Rating = 'Hot', AnnualRevenue = 550000, Company = 'Abluble');
        insert lead;
        Boolean criouTarefa = false;
        
        try{
        	Task task = [Select id, Subject, whatId from Task where whoId = :lead.Id];
        }catch (Exception e){
            criouTarefa = true;
        }
        
        System.Assert(!criouTarefa,'Num foi :(');
    }
}