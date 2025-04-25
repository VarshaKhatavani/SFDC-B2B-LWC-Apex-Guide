/**
 * Create a Trigger on Lead Object, to Convert the Lead as the Customer upon Updating the status as "Closed - Converted".
	
	Object Name : Lead 
	Event Name  : After Update.
	
 */

trigger AutoLeadConvertTrigger on SOBJECT (before insert) {

}