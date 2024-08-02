public class Pessoa {
    public String nome = 'Thiago';
    
    public String retornaUmaFrase(String frase){
        String fraseMontada = nome + 'disse - \' ' + frase + '\'';
        return fraseMontada;
    }
}