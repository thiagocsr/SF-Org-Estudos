public class Pizzaria {
    		public String pedirPizza(String pizza){
        
        		switch on pizza {
   				when 'Calabresa' {
       					return 'Valor R$ 45,00';
   				}
   				when '4 Queijos' {
       					return 'Valor R$ 50,00';
   				}
            			when 'Maria Bonita' {
       					return 'Valor R$ 60,00';
   				}
   				when else {
       					return 'Não possuímos essa Pizza.';
   				}
			}

		}
	}