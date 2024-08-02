public class querieOpp {

    public static Opportunity retornaOpp(Opportunity opp){
        return [Select Id, Name, StageName From Opportunity where id = :opp.Id];
    }
}