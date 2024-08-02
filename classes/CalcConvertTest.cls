@isTest
public class CalcConvertTest {

    @isTest
    public static void celsiusToFah(){
        decimal fah = CalcConvert.CelsiusToFah(10);
        System.assert(fah == 50, 'Num foi');
    }
	
    @isTest
    public static void fahToCelsius(){
        decimal cel = CalcConvert.FahToCelsius(10).setScale(2);
        System.assert(cel == -12.22, 'Num foi');
    }

    @isTest
    public static void kelvinToCelsius(){
        decimal kevin = CalcConvert.KelvinToCelsius(10);
        System.assert(kevin == -263.15, 'Num foi');
    }

    @isTest
    public static void metroToCm(){
        decimal metro = CalcConvert.MetroToCm(5);
        System.assert(metro == 500, 'Num foi');
    }
}