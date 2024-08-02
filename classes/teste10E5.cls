@isTest
public class teste10E5 {

    @isTest
    public static void criaNovaTarefa(){
        Opportunity opp = new Opportunity(Name = 'Aloukj',Amount = 101000, StageName = 'Prospecting', CloseDate = date.today()+30, LeadSource = 'Other');
        insert opp;

		boolean naoCriaTarefa = false;        
        
        try{
            Task task = [Select id, Subject, whatId from Task where whatId = :opp.Id];
        }catch (Exception e){
            naoCriaTarefa = true;
        }

        System.Assert(!naoCriaTarefa, 'Não foi :(');
        
    }
    
    @isTest
    public static void naoCriaNovaTarefa(){
        Opportunity opp = new Opportunity(Name = 'Aloukj',Amount = 10100, StageName = 'Prospecting', CloseDate = date.today()+30, LeadSource = 'Other');
        insert opp;

		boolean naoCriaTarefa = false;        
        
        try{
            Task task = [Select id, Subject, whatId from Task where whatId = :opp.Id];
        }catch (Exception e){
            naoCriaTarefa = true;
        }

        System.Assert(naoCriaTarefa, 'Não foi :(');
        
    }
}