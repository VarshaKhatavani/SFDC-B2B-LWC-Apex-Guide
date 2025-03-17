/*Q. Write an Apex Program to Insert Contact Record */
	
	   //create an object of account class
    Contact cont = new Contact();
    
       cont.FirstName = 'Varsha' ; 
	   cont.LastName = 'Khatavani' ;
	   cont.MailingCity = 'Pune' ;
	   cont.MailingState = 'Maharashtra';
	   cont.MailingCountry = 'India' ;
	   cont.MailingPostalCode = '396868';
	   cont.Phone = '24798797';
	   cont.Fax = '3468728';
    
    insert cont;
    
    if(cont.id != Null)
        System.debug('Contact Created Successfully....'+ cont.id); 