// Create the object of lead class
	Lead ldRecord = new Lead(); 
	
	// Assign the values for the fields
	ldRecord.FirstName = 'Varsha' ;
	ldRecord.LastName = 'Khatavani' ;
	ldRecord.company = 'IBM co. pune';
	ldRecord.status = 'Open - Not Contacted';
	ldRecord.Industry = 'Techology' ;
	ldRecord.Revenue = 1600000 ; 
	ldRecord.LeadSource = 'Web' ;
	ldRecord.email = 'khatvani.varsha@yahoo.com'; 
	
	Insert ldReacord ; 
	
	// Step 4 : print the confirmation
	if(ldRecord.id != Null) {
		system.debug('Lead Record Created Successfully... Record..id '+ ldReacord.id);
	}