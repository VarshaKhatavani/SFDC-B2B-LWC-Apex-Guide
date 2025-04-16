// LIMIT

// Write an SOQL Query to Fetch 5 Lead Records from the Object.

List<Lead> ldRecords = [Select Id, FirstName, LastName, Email, title, Company, Status, Phone, Fax, Rating, AnnualRevenue from Lead LIMIT 5] ; 
System.debug(ldRecords); 

// Write an SOQL Query, to Fetch Only One Account Record from the Object.

Account acc = [Select Id, Name, Rating, Industry, AnnualRevenue, Phone, Fax, SLA__c from Account LIMIT 1 ] ;
System.debug(acc);

// ORDER BY CLAUSE 

//     Write an SOQL Query, to Fetch All the Account Records from the Object and Arrange them in 
//    Ascending Order based on Account Name Field.

List<Account> lstAccounts = [Select ID, Name, Rating, Industry, AnnualRevenue, Type, Phone, Fax, BillingCity from Account Order by Name]; 
System.debug(lstAccounts);

//	Write an SOQL Query, to Fetch Top 3 Highest Annual Revenue Customers.
List<Account> lstAcc = [Select Id, Name, Rating, Industry, AnnualRevenue, Phone, Fax from Account Order by AnnualRevenue desc LIMIT 3];
System.debug(lstAcc);

//     Write an SOQL Query, to Fetch Recently Recieved 5 Case Records from the Object.
List<Case> lstCases = [Select Id, CaseNumber, Subject, Status, Priority, Origin, Reason, CreatedDate from Case Order by CreatedDate Desc LIMIT 5] ;
System.debug(lstCases);

// 	Write an SOQL Query, to Fetch the Second Highest Annual Revenue Customers from the Account Object.
List<Account> secondHighestAccts = [Select Id, Name, Rating, Industry, AnnualRevenue, Phone, Active__c 
                            	FROM Account 
                                    WHERE AnnualRevenue != Null 
                             		ORDER BY AnnualRevenue Desc
                             			LIMIT 1
                             			OFFSET 1 ] ;
System.debug(secondHighestAccts);


