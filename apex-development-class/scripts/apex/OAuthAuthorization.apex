String consumerKey = '3MVG9PwZx9R6_UrcaMmN.zNvtxb1qH_6vVJuRw6iUPL3xbOvyokgJSD_UP9IdyS5pyPf8dlGoSrztLw6hR88w' ;
String consumerSecret = 'C11C6CFB4CE4724C91A2C16FF109B3C2472CDDD576353BAD345F67D9F7B86BC6' ;

// Http Call - Send Req (HttpRequest) - Return Response (HttpResponse)
HttpRequest hreq = new HttpRequest();
hreq.setEndpoint('https://login.salesforce.com/services/oauth2/token?grant_type=password&client_id=3MVG9PwZx9R6_UrcaMmN.zNvtxb1qH_6vVJuRw6iUPL3xbOvyokgJSD_UP9IdyS5pyPf8dlGoSrztLw6hR88w&client_secret=C11C6CFB4CE4724C91A2C16FF109B3C2472CDDD576353BAD345F67D9F7B86BC6'); 
hreq.setMethod('POST');
string username = 'varsha@khatavani.sandbox' ;
string password = 'icandO11$dffnBS6sJdQNsPcmrZDiwRvp' ; // Password + Security Token
blob headervalue = Blob.valueOf(username+':'+password);
System.debug('headervalue....'+headervalue);
string authorizationValue = 'BASIC'+EncodingUtil.base64Encode(headervalue);
System.debug('authorizationValue.....'+authorizationValue);
hreq.setHeader('Authorization',authorizationValue);

Http h = new Http();
HttpResponse hres = h.send(hreq);
system.debug('hres...'+hres.getBody()) ;
System.debug('🔴 Status Code: ' + hres.getStatusCode());
System.debug('🔴 Response Body: ' + hres.getBody());
System.debug('🔴 Headers: ' + hres.getHeaderKeys());

// JSON Parser to get the key-value pair

JSONParser parser = JSON.createParser(hres.getBody());

while(parser.nextToken() !=NULL){
    if((parser.getCurrentToken() == JSONTOKEN.FIELD_NAME) && parser.getText()=='access_token'){
        parser.nextToken();
            atoken = parser.getText();
        }

    if((parser.getCurrentToken() == JSONTOKEN.FIELD_NAME) && parser.getText()=='instance_url'){
        parser.nextToken();
            instanceURL = parser.getText();
    }
}

system.debug('instanceURL'+instanceURL);
system.debug('atoken'+atoken);