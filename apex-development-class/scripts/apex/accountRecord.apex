/* Q.  Write an Apex Program to Insert Account Record  */
	
	    //create an object of account class
    Account acc = new Account();
    
        acc.Name = 'Birla and Sons co.' ; 
        acc.Type = 'Technology Partner' ;
        acc.Industry = 'Energy' ;
        acc.Phone = '234957896' ;
        acc.Fax  = 'B-KJHSHGKSD' ;
        acc.AnnualRevenue = 1600000;
        acc.Rating = 'Hot';
        acc.BillingCity = 'Navsari' ;
        acc.BillingState = 'Gujarat' ; 
        acc.BillingStreet = 'Amazon IT Park' ;  
        acc.BillingCountry = 'India'; 
        acc.BillingPostalCode = '867686' ; 
    
    insert acc;
    
    if(acc.id != Null)
        System.debug('Account Created Successfully....'+ acc.id); 