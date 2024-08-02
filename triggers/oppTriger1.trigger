trigger oppTriger1 on Opportunity (before update, before insert) {
    
    for(Opportunity opportunity : trigger.new){  
        if(opportunity.Amount > 500000){
            opportunity.StageName = 'Negotiation/Review';
        }
    }    
}