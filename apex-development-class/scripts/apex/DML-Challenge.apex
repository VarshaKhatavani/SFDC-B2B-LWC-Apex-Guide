/**
 * DML CHALLENGE
 * Create a new Account with the name “WingNut Films” and Rating “Warm”
 * Create a new Opportunity “Lord Of The Rings”  for this Account with below field values
 *                Stage > Qualification
 *                Closed Date > Today
 * Update Account Name to “New Line Cinema”
 * Update Opportunity Stage to “Closed-Won”
 * Delete the opportunity
 * Undelete the opportunity
 **/

Account acc = new Account(
    FirstName = 'WingNut',
    LastName = 'Films',
    Phone = '7878452391',
    Type = 'Prospect',
    Industry = 'Media', 
    Rating = 'Hot'
);
insert acc;
System.debug('Account....'+acc);

// create opportunity record related to account
Account account = [SELECT ID, Name From Account Where Name='WingNut Films' LIMIT 1]; 
Opportunity opp = new Opportunity(
    Name = 'Lord Of The Rings',
    StageName = 'Qualification',
    CloseDate = Date.today(),
    AccountId = acc.Id
)
insert opp; 

// retrieve wingnut films account
account.Name = 'New Line Cinema' ;
update account

// Update Opportunity Stage 
Opportunity opp = [ SELECT Id, Name, StageName FROM Opportunity WHERE Name='Lord Of The Rings' LIMIT 1 ];
opp.StageName = 'Closed-Won'; 
update opp; 

// Delete Opportunity
Opportunity opp = [ SELECT Id, Name, StageName 
                    FROM Opportunity
                    WHERE Name = 'Lord Of The Rings'
                    LIMIT 1 ];
delete opp; 

// get opportunity record to undelete
List<Opportunity> oppList = [ SELECT Id, Name, StageName 
                    FROM Opportunity
                    WHERE Name = 'Lord Of The Rings' AND ISDeleted = true
                    ALL ROWS ];
undelete oppList; 

