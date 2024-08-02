@isTest
public class testNewOpp3 {

    public static Opportunity criaOpp(decimal amount){
        return new Opportunity(Name = 'Tandan', CloseDate = date.today()+30, Amount = amount);
    }
    
    @isTest
    public static void criaOutRange(){
        
        Opportunity opp = criaOpp(10000);        
        insert opp;
        
        Opportunity opp2 = querieOpp.retornaOpp(opp);        
        System.Assert(opp2.StageName == 'Prospecting','Não foi!');
        
        
    }
    
    @isTest
    public static void criaInRange(){
        
        Opportunity opp = criaOpp(150000);
        insert opp;
        
        Opportunity opp2 = querieOpp.retornaOpp(opp); 
        System.Assert(opp2.StageName == 'Proposition','Não foi!');
        
    }
}