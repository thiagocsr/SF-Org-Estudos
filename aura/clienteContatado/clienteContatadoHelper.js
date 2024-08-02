({
    clientesNaoContatados : function(component) {

        let action = component.get("c.getLeadsNaoContatados");

        action.setCallback(this, function(response) {
            let state = response.getState();
            if (state === "SUCCESS") {
                let leads = response.getReturnValue();

                leads = leads.map(function(item){
                    item.nomeLead = item.Name
                    
                    return item;
                })

                console.log('DADOS ', leads);
                component.set("v.data", leads);
            }else {
                console.log("Failed with state : " + state);
            }
        });

        $A.enqueueAction(action);

    },

	clientesContatados : function(component) {

        let action = component.get("c.getLeadsContatados");

        action.setCallback(this, function(response) {
            let state = response.getState();
            if (state === "SUCCESS") {
                let leads = response.getReturnValue();

                leads = leads.map(function(item){
                    item.nomeLead = item.Name
                    
                    return item;
                })

                console.log('DADOS ', leads);
                component.set("v.data2", leads);
            }else {
                console.log("Failed with state: " + state);
            }
        });

        $A.enqueueAction(action);

    },

    sortBy: function(field, reverse, primer) {
        var key = primer
            ? function(x) {
                  return primer(x[field]);
              }
            : function(x) {
                  return x[field];
              };

        return function(a, b) {
            a = key(a);
            b = key(b);
            return reverse * ((a > b) - (b > a));
        };
    },

    handleSort: function(cmp, event) {
        var sortedBy = event.getParam('fieldName');
        var sortDirection = event.getParam('sortDirection');

        var cloneData = cmp.get('v.data');
        cloneData.sort((this.sortBy(sortedBy, sortDirection === 'asc' ? 1 : -1)));
        
        cmp.set('v.data', cloneData);
        cmp.set('v.sortDirection', sortDirection);
        cmp.set('v.sortedBy', sortedBy);
    }
})