/**
 * Create a Trigger on Account Object, to Transfer the Record Ownership to the Specified User dynamically at runtime, if the record meets the below conditions.
				1. Account:Rating = 'Hot'
				2. Account:Industry = 'Energy'
				3. Account:AnnualRevenue > 2500000
				4. Account:SLA = 'Gold'
				5. Account:Active = 'Yes'
				
	Object Name: Account.
	Event Name : Before Insert.
	
	Pre-Requisite: Create a Custom Label, and Store the UserName, to
					Transfer the Record Ownership.
 * 
 */

trigger TransferAccountsTrigger on SOBJECT (before insert) {

}