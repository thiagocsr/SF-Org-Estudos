import { LightningElement } from 'lwc';

export default class ClientesContato extends LightningElement {
    empresa = "Empresa tal";
    cnpj = "123123123123";
    endereco = "Rua tal";

    produto = "Produto X";
    descricao = "Aquele lá";
    preco = "49.99";

    promocao = "Só hoje";
    oferta1 = "2 por 89.99";
    oferta2 = "3 por 119.99";
    visivel = true;

    trocaVisivel(){
        this.visivel = !this.visivel;
    }
}