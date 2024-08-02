public class Geometria {

    public decimal areaTriangulo(decimal base, decimal altura){
        return (base * altura)/2;
    }
    
    public decimal areaQuadrado(decimal lado){
        return lado * lado;
    }
    
    public decimal areaRetangulo(decimal base, decimal altura){
        return base * altura;
    }
    
    public decimal areaCirculo(decimal raio){
        return 3.14 * (raio * raio);
    }
    
    public decimal areaTrapezio(decimal baseMaior,decimal baseMenor, decimal altura){
        return ((baseMaior + baseMenor) * altura) / 2;
    }
}