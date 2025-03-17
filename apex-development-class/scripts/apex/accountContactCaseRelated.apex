
	/*
		Write an Apex Program, to Insert an Account Record and a Related Contact
		Record and a Related Case Record.
			
			Account Record 	<------------  Contact Record (Contact:AccountID)
			^									^
			|                                   |
			|                                   |
			------------ Case Record ----------
						(Case:AccountID)
						(Case:ContactID)
	*/

	//create an object of account class
    Account acc = new Account();
    
        acc.Name = 'Google' ; 
        acc.Type = 'Technology Partner' ;
        acc.Industry = 'Technology' ;
        acc.Phone = '54564654' ;
        acc.Fax  = 'B-HGFDFSDKJ' ;
        acc.AnnualRevenue = 4800000;
        acc.Rating = 'Hot';
        acc.BillingCity = 'Pune' ;
        acc.BillingState = 'Maharashtra' ; 
        acc.BillingStreet = 'IT Park' ;  
        acc.BillingCountry = 'India'; 
        acc.BillingPostalCode = '9767765' ; 
    
    insert acc;
    
    if(acc.id != Null){	
        System.debug('Account Created Successfully....'+ acc.id);
		Contact conRecord = new Contact(
        	FirstName = 'John',
            LastName = 'Doe',
            Phone = '8687558688',
            Email = 'john.doe@google.com',
            AccountId = acc.id
        );        
        insert conRecord ; 
		System.debug('Contact Created Successfully....'+ conRecord.id); 
        
         // Create a Case related to this Account and Contact
    	Case caseRec = new Case();
        caseRec.Status = 'New';
        caseRec.Priority = 'High';
        caseRec.origin = 'Phone' ; 
        caseRec.AccountId = '001WU00000nxSXFYA2' ; // acc.Id ;
        caseRec.ContactId = '003WU00000JKMpnYAH' ; //conRecord.id; 
        
        insert caseRec ; 

        System.debug('Case Created Successfully...'+ caseRec) ;
    }