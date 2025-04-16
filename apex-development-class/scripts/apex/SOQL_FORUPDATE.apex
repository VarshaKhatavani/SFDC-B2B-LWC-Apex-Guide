
List<Account> lstAccounts = [Select ID, Name, Rating, Industry, AnnualRevenue 
                            	FROM Account 
                            		FOR UPDATE] ; 

System.debug(lstAccounts);