import { LightningElement, track, wire } from 'lwc';
import searchEntities from '@salesforce/apex/MultiEntityLookupController.searchEntities';

export default class MultiEntityLookup extends LightningElement {
    @track searchTerm = '';
    @track searchResults = [];
    @track searchExecuted = false;

    @wire(searchEntities, { searchTerm: '$searchTerm' })
    wiredSearchResults({ error, data }) {
        if (data) {
            this.searchResults = data.map(result => {
                return {
                    id: result.Id,
                    label: result.Name,
                    entity: result.attributes ? result.attributes.type : result.sObjectType
                };
            });
        } else if (error) {
            console.error('Error:', error);
        }
    }

    handleSearch(event) {
        this.searchTerm = event.target.value;
        this.searchTerm < 1 ? this.searchExecuted = false : this.searchExecuted = true
        //this.searchExecuted = true;
    }

    handleSelect(event) {
        const selectedId = event.currentTarget.dataset.id;
        // Handle selection logic here
        console.log('Selected ID:', selectedId);
    }
}
