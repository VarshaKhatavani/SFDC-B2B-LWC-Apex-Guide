// Get account information from contact
System.debug([SELECT Name, Phone, Department, Account.Name, Account.Website FROM Contact]);

// get grandparent (user) object details
System.debug([SELECT Name, Phone, Department, Account.Name, Account.Website, Account.Owner.Name FROM Contact]);

// Get author(parent object) from books(child object)
System.debug([SELECT Name, Price__c, Author__r.Name FROM Book__c]);

/** SOQL Child to Parent - Challenge */

// Contact is a parent object of case
// Account is a parent object of Contact

// Retrieve Name, Department and Title of all contacts
System.debug([SELECT Name, Department, Title FROM Contact]);

// Retrieve all Cases (CaseNumber, Subject) raised by the contact
System.debug([SELECT Name, Department, Title, (Select CaseNumber, Subject FROM Cases) FROM Contact]);

// Get parent Account's Name, Rating for each Contact
System.debug([SELECT Name, Department, Title, (Select CaseNumber, Subject FROM Cases), Account.Name, Account.Rating FROM Contact]);

// Make sure Account fields are the initial columns in results
System.debug([SELECT Account.Name, Account.Rating, Name, Department, Title, (Select CaseNumber, Subject FROM Cases) FROM Contact]);

// Retrieve only those records where Account Rating is Hot
System.debug([SELECT Account.Name, Account.Rating, Name, Department, Title, (Select CaseNumber, Subject FROM Cases) FROM Contact WHERE Account.Rating='Hot']);

// Sort results by Contact Name
System.debug([SELECT Account.Name, Account.Rating, Name, Department, Title, (Select CaseNumber, Subject FROM Cases) FROM Contact WHERE Account.Rating='Hot' ORDER BY Name]);

// Only retrieve open cases (use IsClosed Checkbox field value)
System.debug([SELECT Account.Name, Account.Rating, Name, Department, Title, (Select CaseNumber, Subject FROM Cases WHERE IsClosed=false) FROM Contact WHERE Account.Rating='Hot' ORDER BY Name]);

// Add one more filter condition, Contact Department must be equals to 'Technology'
System.debug([SELECT Account.Name, Account.Rating, Name, Department, Title, (Select CaseNumber, Subject FROM Cases WHERE IsClosed=false) FROM Contact WHERE Account.Rating='Hot' AND Department='Technology' ORDER BY Name]);