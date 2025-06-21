// get all accounts to delete 
List<Account> accts = [SELECT Id, Name, Phone FROM Account WHERE Name LIKE '%Test%']; 
// delete using DML statement
// delete accts;
// delete using database methods
Database.delete(accts);

// get deleted accounts records
// ALL ROWS only includes soft-deleted records and not permanent ones
List<Account> deletedAccounts = [SELECT Name, Phone FROM Account WHERE isDeleted = true ALL ROWS]; 
//undelete records
undelete deletedAccounts;