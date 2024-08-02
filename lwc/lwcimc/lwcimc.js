import { LightningElement } from 'lwc';

export default class Lwcimc extends LightningElement {

    nome = '';
    peso = '';
    altura = '';
    resultado = '';

    handleChange(event) {
        const field = event.target.name;
        if (field === 'nome') {
            this.nome = event.target.value;
        } else if (field === 'peso') {
            this.peso = parseFloat(event.target.value);
            alert(this.peso + '  ' + typeof(this.peso));
        } else{
            this.altura = parseFloat(event.target.value);
        }
    }

    calcula() {
        alert('olá');
        alert(this.peso + '  ' + typeof(this.peso));
        this.resultado = this.peso / (this.altura * this.altura);
    }

}