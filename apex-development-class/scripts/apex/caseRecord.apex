/* Q. Write an apex program, to Insert a case record inside the object. */
	
	
	Case csRecord =  new Case(); 
	
	csRecord.Status = 'New' ;
	csRecord.Priority =  'High' ; 
	csRecord.Origin = 'Phone' ;
	csRecord.Type = 'Mechanical' ;
	csRecord.Reason = 'Performance' ; 
	
	csRecord.Subject = ''; 
	csRecord.Description = '' ;
	
	Insert csRecord ; 
	
	if(csRecord.id !== Null)
		System.debug('Case Record has been created Successfully... Record  ID....'+csRecord.id);