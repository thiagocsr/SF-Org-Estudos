trigger ContactTriggerExec2 on Contact (before update) {
    
    List<User> usua = [SELECT Id, Name FROM User];
    for(Contact contact : Trigger.new){
        
        for(User user : usua){
            if(contact.LastModifiedById == user.Id){                
                contact.Description = 'Ultima modificação pelo user: ' + user.Name + ' na data: ' + contact.LastModifiedDate;
            }
        }
    }
}

/*
  trigger ContactTriggerExec2 on Contact (before update) {
    
    List<User> usua = [SELECT Id, Name FROM User];
    for(Contact contact : Trigger.new){
              
    	contact.Description = 'Ultima modificação pelo user: ' + UserInfo.getName() + ' na data: ' + DateTime.now();

    }
}*/