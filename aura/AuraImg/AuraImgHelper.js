({
	esconderImagem : function(component) {
	    component.get("v.visivel") == true? component.set("v.visivel", false) : component.set("v.visivel", true);

	},
    
    esconderImagem2 : function(component) {
	    component.get("v.visivel2") == true? component.set("v.visivel2", false) : component.set("v.visivel2", true);

	},
    
    esconderImagem3 : function(component) {
	    component.get("v.visivel3") == true? component.set("v.visivel3", false) : component.set("v.visivel3", true);

	},
    
    esconderImagemTodos : function(component) {
        component.get("v.visivel") == true? component.set("v.visivel", false) : component.set("v.visivel", true);
        component.get("v.visivel2") == true? component.set("v.visivel2", false) : component.set("v.visivel2", true);
	    component.get("v.visivel3") == true? component.set("v.visivel3", false) : component.set("v.visivel3", true);     
	}
})