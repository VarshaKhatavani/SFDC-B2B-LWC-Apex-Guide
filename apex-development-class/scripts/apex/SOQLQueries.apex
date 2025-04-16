// Write an SOQL Query, to fetch All the Case Records from the Object.
	
System.debug('Case Query....' +  [Select Id, CaseNumber, Status, Priority, Origin, Reason, Type, Subject, Description from Case]); 

// Write an SOQL Query to fetch All the Account Record Id's, Names, Rating, Industry, AnnualRevenue, Phone, Fax, Active Status from Account Object.
	
System.debug('Account Query....' + [Select Id, Name, Rating, Industry, AnnualRevenue, Phone, Fax, Active__c from Account] ) ;

// Write an SOQL Query to fetch All Lead Records from the Lead Object.
	
System.debug('Lead Query....' + [Select Id, FirstName, LastName, Title, Status, LeadSource, Phone, Fax, Email, City, State from Lead] ) ;

// Write an SOQL Query, to fetch All the User Records from the Object.
	
System.debug('User Query...' + [Select ID, FirstName, LastName, Email, UserName, isActive, CompanyName, Title, Department from User] );

        
Account acc = [Select Id, Name, Rating, Industry, AnnualRevenue from Account LIMIT 1] ; 

if(acc.id != Null){
    System.debug('Account record is....'+acc.id);
    System.debug('Account Record Name is....'+acc.Name);
	System.debug('Rating value is....'+acc.Rating);    
    System.debug('Annual Revenue is....'+acc.AnnualRevenue);
    System.debug('Industry Name is...'+acc.Industry);
}

List<Account> lstAccount = [Select Id, Name, Rating, Industry, AnnualRevenue from Account];

System.debug('Number of Records Returned....'+ lstAccount.size());

if(!lstAccount.isEmpty()){
    for(Account acc: lstAccount){
        System.debug('Account Record Name is....'+acc.Name);
        System.debug('Rating value is....'+acc.Rating);    
        System.debug('Annual Revenue is....'+acc.AnnualRevenue);
        System.debug('Industry Name is...'+acc.Industry);
    }
}

