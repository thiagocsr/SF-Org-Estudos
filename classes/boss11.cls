public class boss11 {
    
    private List<Opportunity> m_listDataNew;
    private List<Opportunity> m_listFiltered = new List<Opportunity>();
    private Boolean hasRecords;

    public boss11(List<Opportunity> lstDataNew){
        this.m_listDataNew = lstDataNew;
        filter();
        this.hasRecords = !m_listFiltered.isEmpty();
    }

    private void filter(){
        for(Opportunity opp: m_listDataNew){
            m_listFiltered.add(opp);
        }
    }

    public void run(){
        if(hasRecords){
            changeStageName(m_listFiltered);
        }
    }

    public static void changeStageName(List <Opportunity> filtrados){
		for(Opportunity opp : filtrados){
            if(opp.Amount >= 50000 && opp.Amount <= 790000){
                opp.StageName = 'Waiting';
            }else {
                opp.StageName = 'Payment';
            }
    	}
    }
}