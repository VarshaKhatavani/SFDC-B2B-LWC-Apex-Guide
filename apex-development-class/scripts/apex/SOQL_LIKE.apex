//     Write an SOQL Query, to fetch All the Account Records, whose Name starts with "Ra".

List<Account> lstAccounts = [Select Id, Name, Rating, Industry, AnnualRevenue
                                    		from Account
                                    			Where Name Like 'Ra%'];
System.debug(lstAccounts);

//     Write an SOQL Query, to fetch All the Contact Records, Whose Mailing Street Contains "Pally".	

List<Contact> lstContacts = [Select Id, FirstName, LastName, Title, Email, Phone, Fax 
                                MailingStreet
                                FROM Contact 
                                    WHERE MailingStreet LIKE '%Pally%' ] ; 
System.debug(lstContacts);


//  Write an SOQL Query, to Fetch All the Account Records, Whose Name's Second Character is "u".
List<Account> lstAccounts = [Select Id, Name, Rating, Industry, AnnualRevenue, Phone, Active__c 
                            	FROM Account 
                            		WHERE Name LIKE '_u%'] ;

System.debug(lstAccounts);
