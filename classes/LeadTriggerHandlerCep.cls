public class LeadTriggerHandlerCep {
    @Future(callout=true)
    public static void updateLeadsWithCepInfo(String leadsJson) {
        List<Lead> leads = (List<Lead>) JSON.deserialize(leadsJson, List<Lead>.class);
        List<Lead> leadToUpdate = new List<Lead>();

        for (Lead lead : leads) {
            if (lead.Cep__c != null) {
                System.debug(lead);
                Http http = new Http();
                HttpRequest request = new HttpRequest();
                String endPoint = 'https://viacep.com.br/ws/' + lead.Cep__c + '/json/';
                System.debug(endPoint);
                request.setEndpoint(endPoint);
                request.setMethod('GET');
                request.setHeader('Content-Type', 'application/json');
                request.setTimeout(120000);
                

                try {
                    HttpResponse response = http.send(request);
                    System.debug(response);
                    if (response.getStatusCode() == 200) {
                        Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
                        System.debug(results);
                        System.debug(lead);
                        lead.City = (String) results.get('localidade');
                        lead.State = (String) results.get('uf');
                        lead.PostalCode = (String) results.get('cep');
                        lead.Street = (String) results.get('logradouro');
                        leadToUpdate.add(lead);
                    }
                } catch (Exception e) {
                    System.debug('Error in HTTP callout: ' + e.getMessage());
                }
            }
        }

        if (!leadToUpdate.isEmpty()) {
            update leadToUpdate;
        }
    }
}