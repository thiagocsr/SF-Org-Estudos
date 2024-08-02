public class Cachorro {

    String nome = 'Dognaldinho';
    Decimal peso = 30.5;
    String raca = 'Golden';
    
    public String latir(){
        return this.nome + ' disse: AUUUUUUUU, baby i\'m preying on you tonight.';
    }
    
    public String andar(){
        return this.nome + ' está andando, they see me rollin.';
    }
    
    public String ronronar(){
        return 'Silêncio, ' + this.nome + ' está ronronando.';
    }
    
    public String infoCachorro(){
        return 'Nome : ' + this.nome + ', Raça: ' + this.raca + 'e peso: ' + this.peso;
    }
    
}