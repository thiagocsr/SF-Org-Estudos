({
	confirma : function(component, event, helper) {
        let nome =  component.find("nomito").get("v.value");
        var tst = $A.get("e.force:showToast");
        tst.setParams({
            title: 'Mercado ' + nome,
            message: 'Criado com sucésio!',
            type: 'info',
            duration: 8000,
            mode: 'dismissible'
        });
        tst.fire();
}
})