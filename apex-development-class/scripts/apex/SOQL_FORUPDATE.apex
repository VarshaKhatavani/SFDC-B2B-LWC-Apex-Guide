// The FOR UPDATE keyword in SOQL is used to lock records during a transaction, 
// to prevent race conditions or concurrent updates.

// It prevents other transactions from modifying or obtaining locks on the same records until the transaction completes.

List<Account> lstAccounts = [Select ID, Name, Rating, Industry, AnnualRevenue 
                            	FROM Account 
                            		FOR UPDATE] ; 

System.debug(lstAccounts);