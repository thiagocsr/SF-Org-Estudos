({
	confirma : function(component, event, helper) {
        var tst = $A.get("e.force:showToast");
        tst.setParams({
            title: 'Compra',
            message: 'Criado com sucésio!',
            type: 'success',
            duration: 8000,
            mode: 'dismissible'
        });
        tst.fire();

        var registroCriado = event.getParams();
        alert(registroCriado.response.id);
        var navService = component.find("navService");
        var pageReference = {
            "type": 'standard_recordPage',
            "attributes": {
                "recordId": registroCriado.response.id,
                "actionName": "view",
                "objectApiName": "Compra_Escritorio__c"
            }       
        };

        component.set("v.pageReference", pageReference);
        
        var redirect = component.get("v.pageReference");
        alert(redirect);
        navService.navigate(redirect);
},
    handleReset: function(cmp, event, helper){
    cmp.find('field').forEach(function(f){
   	f.reset(); 
});
}
})