({
    init : function(component, event, helper) {
        component.set('v.columns', [
            {label: 'Nome', fieldName: 'nomeLead', type: 'text',sortable: true},
            {label: 'Company', fieldName: 'Company', type: 'text', sortable: true},
            {label: 'Lead Status', fieldName: 'Status', sortable: true, type: 'text'}
        ]);

		component.set('v.columns2', [
            {label: 'Nome', fieldName: 'nomeLead', type: 'text',sortable: true},
            {label: 'Company', fieldName: 'Company', type: 'text', sortable: true},
            {label: 'Lead Status', fieldName: 'Status', sortable: true, type: 'text'}
        ]);

        helper.clientesNaoContatados(component);
		helper.clientesContatados(component);
    },

    handleSort: function(cmp, event, helper) {
        helper.handleSort(cmp, event);
    }
})