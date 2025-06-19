// -------- Bind Varibale -------------

List<String> accountNames = new List<String>(); 
accountNames.add('Test Account 1');
accountNames.add('Test Account 2');
accountNames.add('Test Account 3');
accountNames.add('Test Account 4');

List<Account> accounts = [SELECT Id, Name, Phone, Rating 
                          FROM Account
                          WHERE Name IN : accountNames];
System.debug(accounts);
System.debug('Accounts Size: '+accounts.size());
