// Get all related contacts of an account
System.debug([SELECT Name, Phone, Website, (SELECT Name, Department, Email FROM Contacts) FROM Account]);

// Get all related contacts (with where clause) of an account (with where clause)
System.debug([SELECT Name, Phone, Website, (SELECT Name, Department, Email FROM Contacts WHERE Department='Finance') FROM Account WHERE Name='United Oil & Gas, UK']);

// Get all related contacts (with where clause) and opportunities of an account
System.debug([SELECT Name, Phone, Website, (SELECT Name, Department, Email FROM Contacts WHERE Department='Finance'), (SELECT Name, Amount FROM Opportunities) FROM Account]);

// Get all books(child object) of an author (parent object)
System.debug([SELECT Name, (SELECT Name FROM Books__r) FROM Author__c]);
