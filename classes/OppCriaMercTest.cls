@isTest
public class OppCriaMercTest {
	@isTest
    public static void testaCriaMerc(){
        Opportunity opp = new Opportunity(Name = 'Testinho para merc', CloseDate = date.today()+5, StageName = 'Negotiation/Review', Amount = 360000);
        insert opp;
        
        Opportunity op1 = [Select Id From Opportunity where Id = :opp.Id];
        System.Assert(op1.Id == opp.Id, 'Não funfou');
    }
}