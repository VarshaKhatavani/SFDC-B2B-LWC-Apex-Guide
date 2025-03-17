// OAUTH using username-password flow 

String clientId = '3MVG9PwZx9R6_UrcaMmN.zNvtxb1qH_6vVJuRw6iUPL3xbOvyokgJSD_UP9IdyS5pyPf8dlGoSrztLw6hR88w';
String clientSecret = 'C11C6CFB4CE4724C91A2C16FF109B3C2472CDDD576353BAD345F67D9F7B86BC6';
String username = 'varsha@khatavani.sandbox';
String password = 'icandO11$dffnBS6sJdQNsPcmrZDiwRvp' ; // Append Security Token if required

HttpRequest req = new HttpRequest();
req.setEndpoint('https://login.salesforce.com/services/oauth2/token');
req.setMethod('POST');
req.setHeader('Content-Type', 'application/x-www-form-urlencoded');

String body = 'grant_type=password'
            + '&client_id=' + EncodingUtil.urlEncode(clientId, 'UTF-8') 
            + '&client_secret=' + EncodingUtil.urlEncode(clientSecret, 'UTF-8')
            + '&username=' + EncodingUtil.urlEncode(username, 'UTF-8')
            + '&password=' + EncodingUtil.urlEncode(password, 'UTF-8') ; 

req.setBody(body);

Http http = new Http();
HttpResponse res = http.send(req);
System.debug('🔴 Status Code: ' + res.getStatusCode());
System.debug('🔴 Response Body: ' + res.getBody());
System.debug('🔴 Headers: ' + res.getHeaderKeys());

// deserialize JSON response
if (res.getStatusCode() == 200) {
    Map<String, Object> jsonMap = (Map<String, Object>) JSON.deserializeUntyped(res.getBody());
    System.debug('Access Token: ' + jsonMap.get('access_token'));
    System.debug('Instance URL:  ' + jsonMap.get('instance_url'));
    System.debug('Token Type:  ' + jsonMap.get('token_type'));
    System.debug('Issued At: ' + jsonMap.get('issued_at'));
    System.debug('Signature: ' + jsonMap.get('signature'));
}
 else {
    System.debug('❌ OAuth Error: ' + res.getBody());
}
