public class boss10p6 {
    
    private List<Opportunity> m_listDataNew;
    private List<Opportunity> m_listFiltered = new List<Opportunity>();
    private Map<Id, Opportunity> m_mapDataOld;
    private Boolean hasRecords;


    public boss10p6(List<Opportunity> lstDataNew, Map<Id,Opportunity> lstDataOld){
        this.m_listDataNew = lstDataNew;
        this.m_mapDataOld = lstDataOld;
        filter();
        this.hasRecords = !m_listFiltered.isEmpty();
    }

    private void filter(){
        for(Opportunity opp: m_listDataNew){
            if(m_mapDataOld.get(opp.Id).StageName == 'Negotiation/Review' && opp.StageName == 'Closed Won' && opp.Amount > 250000){
                m_listFiltered.add(opp);
            }
        }
    }

    public void run(){
        if(hasRecords){
            quest6(m_listFiltered);
        }
    }

    public static void quest6(List <Opportunity> filtrados){
        List<Case> newCases = new List<Case>();
		for(Opportunity opp : filtrados){
            Case case1 = new Case(Subject = 'Novo procedimento de instalação', Status = 'New', Reason = 'Installation', Type = 'Structural');
            newCases.add(case1);
    	}
        insert newCases;
    }
}