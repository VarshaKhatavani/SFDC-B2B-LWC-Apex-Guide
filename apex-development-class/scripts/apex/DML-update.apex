//Update account with valid Id
Account acc = new Account(Id='001WU000010DztBYAS', Rating='Warm'); 
update acc;

// update a list of account
List<Account> accts = [SELECT Id, Name, Phone FROM Account WHERE Name LIKE '%Test%']; 
for(Account acc: accts){
    acc.Fax = 'FA000089' ;
}
update accts;

// alternate way to update the records
Database.update(accts, true);