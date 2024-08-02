public class boss10p5 {
    
    private List<Opportunity> m_listDataNew;
    private List<Opportunity> m_listFiltered = new List<Opportunity>();
    private Boolean hasRecords;

    public boss10p5(List<Opportunity> lstDataNew){
        this.m_listDataNew = lstDataNew;
        filter();
        this.hasRecords = !m_listFiltered.isEmpty();
    }
    
    private void filter(){
        for(Opportunity opp : m_listDataNew){
            if(opp.Amount > 100000){
                m_listFiltered.add(opp);
            } 
            
        }
        
    }

    public void run(){
        if(hasRecords){
            quest5(m_listFiltered);
        }

    }  

    public static void quest5(List <Opportunity> filtrados){
        List<Task> newTasks = new List<Task>();
		for(Opportunity opp : filtrados){
            Task task = new Task(Subject = 'Tentar fechar essa o quanto antes', Priority = 'High', WhatId = opp.Id, ActivityDate = date.today()+10);
            newTasks.add(task);
    	}
        insert newTasks;
    }
}