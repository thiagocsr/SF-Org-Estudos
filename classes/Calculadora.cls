public class Calculadora {

    public static decimal somar(decimal num1, decimal num2){
         /*try{
            return String.valueOf(num1 * num2);
        	
        }catch(MathException e){
            return 'Erro de : ' + e;

        }*/

        return (num1 + num2);
    }
    
    public static decimal subtrair(decimal num1, decimal num2){
         /*try{
            return String.valueOf(num1 * num2);
        	
        }catch(MathException e){
            return 'Erro de : ' + e;

        }*/

        return (num1 - num2);
    }
    
    public static decimal multiplicar(decimal num1, decimal num2){
        /*try{
            return String.valueOf(num1 * num2);
        	
        }catch(MathException e){
            return 'Erro de : ' + e;

        }*/

        return (num1 * num2);
    }
    
    public static decimal dividir(decimal num1, decimal num2){
        //try{
            //return String.valueOf(num1 / num2);
        	return (num1 / num2);
        /*}catch(MathException e){
            return 'Erro de : ' + e;

        }*/
        
    }
    
}