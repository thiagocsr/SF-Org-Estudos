public class CalcConvert {
    public static decimal CelsiusToFah(decimal celsius){
        return (celsius * 9/5) + 32;
    }

    public static decimal FahToCelsius(decimal fah){
        return (fah - 32) * 5/9;
    }

    public static decimal KelvinToCelsius(decimal kevin){
        return kevin - 273.15;
    }

    public static decimal MetroToCm(decimal metro){
        return metro * 100;
    }

}