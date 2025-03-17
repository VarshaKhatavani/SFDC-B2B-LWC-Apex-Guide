
	/*Write an Apex Program to Insert an Account Record and a Related Opportunity and Case Records. 
		Account Record
            ^
            |
            |------ Opportunity Record (Opportunity:AccountId)
            |
            |------ Case Record (Case:AccountID)
*/


	    //create an object of account class
    Account acc = new Account();
    
        acc.Name = 'Microsoft' ; 
        acc.Type = 'Technology Partner' ;
        acc.Industry = 'Technology' ;
        acc.Phone = '68685857' ;
        acc.Fax  = 'B-HGFDFSDKJ' ;
        acc.AnnualRevenue = 4800000;
        acc.Rating = 'Hot';
        acc.BillingCity = 'Pune' ;
        acc.BillingState = 'Maharashtra' ; 
        acc.BillingStreet = 'IT Park' ;  
        acc.BillingCountry = 'India'; 
        acc.BillingPostalCode = '647779' ; 
    
    insert acc;
    
    if(acc.id != Null){
     
           System.debug('Account Created Successfully....'+ acc.id); 
           Opportunity opp = new Opportunity(
               Name = 'Microsoft CRM Implementation',
               AccountId = acc.id ,
               CloseDate = Date.today().addDays(60),
			   StageName = 'Prospecting',
               Amount = 50000
           );
           insert opp;
		   System.debug('Opportunity Created: ' + opp.Id);
        
           // Create a Case related to this Account
           Case csRecord = new Case(
                AccountId = acc.Id,
     		    Subject = 'CRM Onboarding Support',
                Status = 'New',
                Priority = 'High',
                Origin = 'Email'
           );
		   insert csRecord ; 
		   System.debug('✅ Case Created: ' + csRecord.Id);
    }