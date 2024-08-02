import { LightningElement, track } from 'lwc';

export default class lastDanceCalculadora extends LightningElement {
    @track result;
    num1;
    num2;
    opc;

    InputChangeHandler(event){
        const name = event.target.name;
        if(name === 'value1'){
            this.num1 = event.target.value;
        }else if(name === 'value2'){
            this.num2 = event.target.value;
        }
    }

    handleClick(event){
        this.opc = event.target.label;
    }

    clearCampo(){
        this.num1 = '';
        this.num2 = '';
    }

    calc(){
        
        const numb1 = parseInt(this.num1);
        const numb2 = parseInt(this.num2);
        var resulttemp = 0;

        if(this.opc === 'Adicionar'){
            resulttemp = numb1 + numb2;
        }else if(this.opc === 'Subtrair'){
            resulttemp = numb1 - numb2;
        }else if(this.opc === 'Multiplicar'){
            resulttemp = numb1 * numb2;
        }else if(this.opc === 'Dividir'){
            resulttemp = numb1 / numb2;
            if(numb2 == 0){
                resulttemp = 'Não é possivi!';
            }
        }
        
        this.result = resulttemp;
    }
}