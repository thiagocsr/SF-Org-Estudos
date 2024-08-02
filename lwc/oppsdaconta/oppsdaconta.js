import { LightningElement, api } from 'lwc';

export default class Oppsdaconta extends LightningElement {
    @api ide;
    @api nome;
    @api valor;
    @api fase;
}