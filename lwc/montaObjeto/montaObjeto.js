import { LightningElement, track } from 'lwc';

export default class PrimeiroForm extends LightningElement {
    // @track theRecord = {};

    inputs = {
        nome:'',
        sobreNome:'',
        email:'',
        website:'',
        empresa:'',
        receita:''
    }

    handleOnChange(event){
        let nameInput = event.target.name;
        let valueInput = event.detail.value;
        
        this. inputs = {
            ...this.inputs, [nameInput]:valueInput
        };
        
        let objetoMontando = JSON.stringify(this.inputs);
        let objetoJSON = JSON.parse(objetoMontando);
        console.log(objetoJSON);
    }
}