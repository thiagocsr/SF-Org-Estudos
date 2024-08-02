public class boss10p3 {
    
    private List<Opportunity> m_listDataNew;
    private List<Opportunity> m_listFiltered = new List<Opportunity>();
    private Boolean hasRecords;


    public boss10p3(List<Opportunity> lstDataNew){
        this.m_listDataNew = lstDataNew;
        filter();
        this.hasRecords = !m_listFiltered.isEmpty();
    }
    
    private void filter(){
        for(Opportunity opp : m_listDataNew){
            boolean fasesNaoPermititas = (opp.StageName == 'Negotiation/Review' || opp.StageName == 'Perception Analysis');
            if(opp.Amount < 10000 && fasesNaoPermititas){
                m_listFiltered.add(opp);
            } 
            
        }
        
    }

    public void run(){
        if(hasRecords){
            quest3(m_listFiltered);
        }

    }  

    public static void quest3(List <Opportunity> filtrados){
		for(Opportunity opp : filtrados){
            opp.StageName.addError('O valor é muito pequeno para essas fases!!!');
    	}
    }
}