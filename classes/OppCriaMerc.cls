public class OppCriaMerc {
    public static void incluiMerc(List<Opportunity> opps){
        List<Mercado__c> mercs = new List<Mercado__c>();
        for(Opportunity opp : opps){
            if(opp.Amount > 350000 && opp.StageName == 'Negotiation/Review'){
                Mercado__c merc = new Mercado__c(Aluguel__c = 3000, Tipo_do_Imovel__c = 'Condomínio', Name = 'Um Novo luguel supimpa', Opportunity__c = opp.Id);
                mercs.add(merc);
                insert mercs;
            }
        }
    }
}