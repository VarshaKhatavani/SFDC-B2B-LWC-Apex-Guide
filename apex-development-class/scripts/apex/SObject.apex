// using sObject get field value
//Retrieve all accounts and assign to List Collection
List<SObject> acctList = [SELECT Name, Phone from Account] ;
for(SObject acc: acctList){
    System.debug('Account.Name...'+String.valueOf(acc.get('Name')) + 'Account.Phone...'+ String.valueOf(acc.get('Phone')));
}

// getsObject
List<SObject> conList = [SELECT Name, Department, Account.Name from contact];
for(SObject con: conList ){
    String contactName = String.valueOf(con.get('Name'));
    SObject accountObj = con.getSObject('Account');
    String accountName = accountObj != null ? String.valueOf(accountObj.get('Name')) : 'No Account';
    System.debug('Contact Name: ' + contactName + ', Account Name: ' + accountName);
}

// Sample SObject Account
// create new account sobject instance
SObject accountRec = (SObject) Type.forName('Account').newInstance(); 

// set field values
accountRec.put('Name', 'Sample SObject Account');
accountRec.put('Phone', '9776567623'); 
accountRec.put('Type', 'Customer - Direct' ); 
accountRec.put('Industry', 'Technology' ); 
accountRec.put('Rating', 'Hot'); 
insert accountRec;
