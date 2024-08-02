trigger triggerPreencheLead on Lead (before insert, before update) {
    
    		/*if(Trigger.isInsert){
    			for(Lead lead: Trigger.new){
        			Boolean faxNulo = string.isBlank(lead.Fax);
        			lead.Fax = faxNulo ? 'sem fax' : lead.Fax;
        
        			Boolean siteNulo = string.isBlank(lead.Website);
        			lead.Website = siteNulo ? 'site indefinido' : lead.Website;
        
        			Boolean receitaNula = lead.AnnualRevenue == null;		                
        			lead.AnnualRevenue =  receitaNula ? 0 : lead.AnnualRevenue;
        
        			String classificacao;
        
        			if(lead.AnnualRevenue >= 0 && lead.AnnualRevenue <10000){
            				classificacao = 'Cold';
        			}else if(lead.AnnualRevenue >= 10000 && lead.AnnualRevenue < 100000){
            				classificacao = 'Warm';
        			}else if(lead.AnnualRevenue >= 100000){
            				classificacao = 'Hot';
        			}
        
        			lead.Rating = classificacao;
    			}
    		}
    	if(Trigger.isUpdate){
        	for(Lead lead: Trigger.new){
            		if(lead.AnnualRevenue >= 500000 && (lead.Rating == 'Cold' || lead.Rating == 'Warm')){
                		lead.Rating.addError('Com receitas acima de 500000, os leads devem ser HOT apenas.');
            		}
        	}
    }*/
    
}