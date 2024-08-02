trigger OpportunityTriggerClosedLost on Opportunity (before update, before insert) {
  /*  
    if(Trigger.isUpdate){
    	List<Opportunity> listOpp = new List<Opportunity>();

    	for(Opportunity opp : Trigger.new){                
        
        	if(opp.StageName == 'Closed Lost' && opp.Motivo_Perda__c == null){
            	opp.Motivo_Perda__c.addError('Seleciona um motivo aí corno!!');
            
        	}else if(opp.StageName == 'Closed Lost' && opp.Motivo_Perda__c != null){            
            	Opportunity opportunity = new Opportunity();
            	opportunity.Name = opp.Name + ' Gerada automaticamente Por eu mesmo!!!';
            	opportunity.StageName = 'Prospecting';
            	opportunity.Amount = 0;
            	Date datinha = date.newinstance(opp.CloseDate.year(), opp.CloseDate.month(), opp.CloseDate.day());
            	opportunity.CloseDate = datinha.addDays(15);
            
            	listOpp.add(opportunity);
        	}
    	}
    
    	insert listOpp;
  	}*/
    
    /*if(Trigger.isInsert){
        for(Opportunity opp : Trigger.new){
            if(opp.Amount >= 100000 && opp.Amount <= 200000){
               	opp.StageName = 'Proposition';
            }else{
                opp.StageName = 'Prospecting';
            }
        }
    }*/
}