@isTest
private class CalculadoraTest {
    @isTest
    public static void testSoma(){
        decimal soma = Calculadora.somar(2, 2);
        System.assert(soma == 4);
    }

    @isTest
    public static void testSub(){
        decimal sub = Calculadora.subtrair(2, 2);
        System.assert(sub == 0);
    }

    @isTest
    public static void testMult(){
        decimal mult = Calculadora.multiplicar(2, 2);
        System.assert(mult == 4);
    }

    @isTest
    public static void testDiv(){
        decimal div = Calculadora.dividir(2, 2);
        System.assert(div == 1);
    }

}