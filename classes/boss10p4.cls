public class boss10p4 {
//Oportunidades fechadas e ganhas não podem ser alteradas para qualquer fase anterior, o mesmo vale para oportunidades perdidas.
    private List<Opportunity> m_listDataNew;
    private List<Opportunity> m_listFiltered = new List<Opportunity>();
    private Map<Id, Opportunity> m_mapDataOld;
    private Boolean hasRecords;

    public boss10p4(List<Opportunity> lstDataNew, Map<Id,Opportunity> lstDataOld){
        this.m_listDataNew = lstDataNew;
        this.m_mapDataOld = lstDataOld;
        filter();
        this.hasRecords = !m_listFiltered.isEmpty();
    }
    
    private void filter(){
        for(Opportunity opp : m_listDataNew){
            boolean fasesInauteraveis = (m_mapDataOld.get(opp.id).StageName == 'Closed Won' || m_mapDataOld.get(opp.id).StageName == 'Closed Lost');
            boolean fasesDiferentes = (opp.StageName != m_mapDataOld.get(opp.id).StageName);
            if(fasesInauteraveis && fasesDiferentes){
                m_listFiltered.add(opp);
            } 
            
        }
        
    }

    public void run(){
        if(hasRecords){
            quest4(m_listFiltered);
        }

    }  

    public static void quest4(List <Opportunity> filtrados){
		for(Opportunity opp : filtrados){
            opp.StageName.addError('Oportunidades Fechadas não podem ser alteradas!!!');
    	}
    }
}