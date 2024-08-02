public class boss10p1 {

    private List<Opportunity> m_listDataNew;
    private List<Opportunity> m_listFiltered = new List<Opportunity>();
    private Boolean hasRecords;

    public boss10p1(List<Opportunity> lstDataNew){
        this.m_listDataNew = lstDataNew;
        filter();
        this.hasRecords = !m_listFiltered.isEmpty();
    }
    
    private void filter(){
        for(Opportunity opp : m_listDataNew){
            if(opp.LeadSource == 'Web' || opp.LeadSource == 'Purchased List'){
                m_listFiltered.add(opp);
            } 
            
        }
        
    }

    public void run(){
        if(hasRecords){
            quest1(m_listFiltered);
        }

    }  

    public static void quest1(List <Opportunity> filtrados){
		for(Opportunity opp : filtrados){
            opp.Description = 'Essa oportunidade deverá ter uma atenção especial, alta chance de fechamento!!!';
            opp.StageName = 'Qualification';
    	}
    }

}