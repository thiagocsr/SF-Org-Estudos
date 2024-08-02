public class boss10p2 {

    private List<Opportunity> m_listDataNew;
    private List<Opportunity> m_listFiltered = new List<Opportunity>();
    private Map<Id, Opportunity> m_mapDataOld;
    private Boolean hasRecords;


    public boss10p2(List<Opportunity> lstDataNew, Map<Id,Opportunity> lstDataOld){
        this.m_listDataNew = lstDataNew;
        this.m_mapDataOld = lstDataOld;
        filter();
        this.hasRecords = !m_listFiltered.isEmpty();
    }
    
    private void filter(){
        for(Opportunity opp : m_listDataNew){
            if(m_mapDataOld.get(opp.id).LeadSource != opp.LeadSource){
                m_listFiltered.add(opp);
            } 
            
        }
        
    }

    public void run(){
        if(hasRecords){
            quest2(m_listFiltered);
        }

    }  

    public static void quest2(List <Opportunity> filtrados){
		for(Opportunity opp : filtrados){
            opp.LeadSource.addError('A origem do Lead não pode ser alterado!!!');
    	}
    }

}