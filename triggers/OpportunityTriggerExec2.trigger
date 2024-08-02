trigger OpportunityTriggerExec2 on Opportunity (before insert,after insert, before update, after update) {	   
	/*if(Trigger.isInsert){  
		for(opportunity opp : trigger.new){
        	if([SELECT id,Vip__c from Account where id = :opp.AccountId].Vip__c == true){
            	opp.Amount = opp.Amount * 0.9;
        	}
    	}
    }
    if(Trigger.isInsert && Trigger.isBefore){
		List<Account> contasVips = [Select Id, name, Vip__c from account where Vip__c = true];
		for(Opportunity opportunity : trigger.new){  
        
			if(opportunity.Amount > 500000){
            	opportunity.StageName = 'Negotiation/Review';
        	}
        
			for(Account act : contasVips){
				if(act.Vip__c == true && opportunity.AccountId == act.Id){
            		opportunity.Amount = opportunity.Amount * 0.9;
        		}
        	}
     
    	}
	}
    
    switch on Trigger.operationType {
        when AFTER_INSERT {
            OppCriaMerc.incluiMerc(Trigger.new);
        }
    }
    
    if(Trigger.isInsert && Trigger.isAfter){
        List<Mercado__c> mercs = new List<Mercado__c>();
        for(Opportunity opp : trigger.new){
            if(opp.Amount > 350000 && opp.StageName == 'Negotiation/Review'){
                Mercado__c merc = new Mercado__c(Aluguel__c = 3000, Tipo_do_Imovel__c = 'Condomínio', Name = 'Novo luguel', Opportunity__c = opp.Id);
                mercs.add(merc);
                insert mercs;
            }
        }
    }
    
    if(Trigger.isBefore && Trigger.isUpdate){
        for(Opportunity opp : Trigger.new){
            if(Trigger.oldMap.get(opp.Id).StageName == 'Closed Lost' && opp.StageName != 'Closed Lost'){
                opp.StageName.addError('Já perdeu, tente em outra oportunidade!');
            }
        }
    }
    
    if(Trigger.isAfter && Trigger.isUpdate){
        for(Opportunity opp : Trigger.new){
            if(opp.Amount >= 50000 && opp.StageName == 'Closed Won'){
                Task task = new Task(WhatId = opp.Id, Subject = 'Parabens');
                insert task;
            }
        }
    }*/
}