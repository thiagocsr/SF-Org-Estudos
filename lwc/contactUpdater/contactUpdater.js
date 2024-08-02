import { LightningElement, api, wire, track } from 'lwc';
import getContacts from '@salesforce/apex/ContactController.getContacts';
import updateContacts from '@salesforce/apex/ContactController.updateContacts';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class ContactUpdater extends LightningElement {
    @api recordId;
    @track contacts;
    @track error;
    @track loading = true;
    updatedContacts = new Map();

    @wire(getContacts, { accountId: '$recordId'})
    wiredContacts({ error, data}) {
        this.loading = false;
        if(data) {
            this.contacts = data;
            this.error = undefined;
        } else if(error){
            this.error = error;
            thiso.contacts = undefined;
        }
    }

    handleInputChange(event) {
        const contactId = event.target.dataset.id;
        const field = event.target.dataset.field;
        const value = event.target.value;

        if (!this.updatedContacts.has(contactId)) {
            this.updatedContacts.set(contactId, {});
        }

        this.updatedContacts.get(contactId)[field] = value;
    }

    saveChanges() {
        const contactsToUpdate = Array.from(this.updatedContacts.entries()).map(([Id, changes]) => ({ Id, ...changes }));
        updateContacts({ contacts: contactsToUpdate })
            .then(() => {
                this.dispatchEvent(
                    new ShowToastEvent({
                        title: 'Success',
                        message: 'Contacts updated successfully',
                        variant: 'success'
                    })
                );
            })
            .catch(error => {
                this.dispatchEvent(
                    new ShowToastEvent({
                        title: 'Error updating contacts',
                        message: error.body.message,
                        variant: 'error'
                    })
                );
            });
    }
}