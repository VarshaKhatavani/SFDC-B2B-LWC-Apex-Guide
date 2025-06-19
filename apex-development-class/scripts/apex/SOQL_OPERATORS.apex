// -------------------------------- OR, AND, LIKE and IN Operator ---------------------------------------------------------

System.debug([SELECT Name, Company, Email, Status from Lead]);

// OR Keyword
System.debug([SELECT Name, Status, Company, Email FROM Lead WHERE Status='Closed - Converted' OR Status='Closed - Not Converted']);

// OR and AND Keyword
System.debug([SELECT Name, Status, LeadSource, Company, Email FROM Lead WHERE (Status='Closed - Converted' OR Status='Closed - Not Converted') AND LeadSource='Web']);

// IN Operator
System.debug([SELECT Id, Name, Status, LeadSource, Company, Email FROM Lead WHERE Status IN ('Closed - Converted','Closed - Not Converted') AND LeadSource = 'Web']);

// LIKE Operator
System.debug([Select Name, Status, LeadSource, Company, Email FROM Lead WHERE Status LIKE 'Closed%' AND LeadSource = 'Web']);

// ORDER By
System.debug([Select Name, Status, LeadSource, Company, Email FROM Lead ORDER BY Name]);

// --------------------------------------- ORDER BY ----------------------------------------------

// Sorting by Name
System.debug([SELECT Name, Status, LeadSource, Company, Email FROM Lead ORDER BY Name]);

// Sorting by Name in descending order
System.debug([SELECT Name, Status, LeadSource, Company, Email FROM Lead ORDER BY Name DESC]);

// Sorting by Company
System.debug([SELECT Name, Status, LeadSource, Company, Email FROM Lead ORDER BY Company]);

//Sorting by CreatedDate
System.debug([SELECT Name, Status, LeadSource, Company, Email, CreatedDate FROM Lead ORDER BY CreatedDate]);

//Sorting by CreatedDate in descending order
System.debug([SELECT Name, Status, LeadSource, Company, Email, CreatedDate FROM Lead ORDER BY CreatedDate DESC]);

// ------------------------------------ LIMIT | OFFSET -----------------------------------------

// Limit 10 rows
System.debug([SELECT Name, Status, LeadSource, Company, Email, CreatedDate FROM Lead LIMIT 10]);

// Limit with Order By clause
System.debug([SELECT Name, Status, LeadSource, Company, Email, CreatedDate FROM Lead Order By Name LIMIT 10]);

// Limit with Order By and Where clause
System.debug([SELECT Name, Status, Company, Email FROM Lead WHERE Status='Closed - Converted' ORDER BY Name LIMIT 1]);

// Get latest record
System.debug([SELECT Name, Status, LeadSource, Company, Email, CreatedDate FROM Lead ORDER BY CreatedDate DESC LIMIT 1]);

// OFFSET 5 - Skip first 5 records
System.debug([SELECT Name, Status, LeadSource, Company, Email, CreatedDate FROM Lead OFFSET 5]);

// Get latest 5 records and skip first 5
System.debug([SELECT Name, Status, LeadSource, Company, Email, CreatedDate FROM Lead ORDER BY CreatedDate DESC LIMIT 5 OFFSET 5]);

