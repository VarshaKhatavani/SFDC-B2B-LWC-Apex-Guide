// Insert Single Account
Account acc = new Account(LastName='Erudite Infotech', Phone='9867564532'); 
acc.Rating = 'Hot';
acc.Industry = 'Technology';
acc.Type='Customer - Direct';
acc.Phone='876969452312';
insert acc;

List<Account> accList = new List<Account>();
Account acc1 = new Account(LastName='Test Account 1', Rating = 'Hot', Phone='7898765789', Industry='Banking', Type='Customer - Direct'); 
Account acc2 = new Account(LastName='Test Account 2', Rating = 'Hot', Phone='7898765789', Industry='Construction', Type='Customer - Direct'); 
accList.add(acc1);
accList.add(acc2);

// Inserting a list of account
insert accList; 

// Alternate way to insert the accounts - false allows partial transaction success
// Database.insert( accList , false) // allorNone