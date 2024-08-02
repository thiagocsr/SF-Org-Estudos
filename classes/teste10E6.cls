@isTest
public class teste10E6 {
    
	@isTest
    public static void oppOver250k(){
        Opportunity opp = new Opportunity(Name = 'Aloukj',Amount = 251000, StageName = 'Negotiation/Review', CloseDate = date.today()+30, LeadSource = 'Other');
        insert opp;
        
        opp.StageName = 'Closed Won';
        update opp;

		boolean naoCriaCaso = false;        
        
        try{
            Case case1 = [Select id, Subject from case where Subject = 'Novo procedimento de instalação' and Status = 'New' and Type = 'Structural' and Reason = 'Installation'];
        }catch (Exception e){
            naoCriaCaso = true;
        }

        System.Assert(!naoCriaCaso, 'Não foi :(');
        
    }
    
    @isTest
    public static void oppLess250k(){
        Opportunity opp = new Opportunity(Name = 'Aloukj',Amount = 51000, StageName = 'Negotiation/Review', CloseDate = date.today()+30, LeadSource = 'Other');
        insert opp;
        
        opp.StageName = 'Closed Won';
        update opp;

		boolean naoCriaCaso = false;        
        
        try{
            Case case1 = [Select id, Subject from case where Subject = 'Novo procedimento de instalação' and Status = 'New' and Type = 'Structural' and Reason = 'Installation'];
        }catch (Exception e){
            naoCriaCaso = true;
        }

        System.Assert(naoCriaCaso, 'Não foi :(');
        
    }
}