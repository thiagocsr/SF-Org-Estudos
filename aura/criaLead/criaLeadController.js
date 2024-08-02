({
	confirma : function(component, event, helper) {
        var tst = $A.get("e.force:showToast");
        tst.setParams({
            title: 'Lead',
            message: 'Criado com sucésio!',
            type: 'success',
            duration: 8000,
            mode: 'dismissible'
        });
        tst.fire();
},
    handleReset: function(cmp, event, helper){
    cmp.find('field').forEach(function(f){
   	f.reset(); 
});
}
})