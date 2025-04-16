//     Write an SOQL Query, to Fetch All the Banking Customer Records from the Object.

List<Account> lstAccounts = [Select Id, Name, Rating, Industry, AnnualRevenue, Phone, Fax from Account WHERE Industry = 'Energy'] ; 
System.debug(lstAccounts);

//  Write an SOQL Query, to Fetch All the Active Customers, Whose Revenue is more than 5000000.

List<Account> acctsList = [Select Id, Name, Rating, Industry, AnnualRevenue,
                                			Phone, Fax, Active__c, SLA__c
                                				from Account
                                					Where Active__c = 'Yes' and AnnualRevenue >= 5000000];
System.debug(acctsList);

//     Write an SOQL Query, to Fetch All the Active User Records from the Object.

List<User> lstUsers = [Select Id, FirstName, LastName, Email, UserName, IsActive 
                        FROM User  
                            WHERE IsActive = true ];
System.debug(lstUsers);

//    Write an SOQL Query, to Fetch All the Deleted Contact Records from the Object.

List<Contact> lstContacts = [ Select Id, FirstName, LastName, Title, Department, Phone, Fax, IsDeleted
                                FROM Contact 
                                    WHERE IsDeleted = true
                                        ALL ROWS ] ; 
System.debug(lstContacts);

