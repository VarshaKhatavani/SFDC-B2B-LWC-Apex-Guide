/*
 * Create a Trigger on Account Object, to Prevent the Deletion of an Active Account Record, 
 * Whose SLA is "Platinum", and Annual Revenue is more than 75,00,000.
	Object Name: Account.
	Event Name : Before Delete.
*
*   Stop The Delete if certain condition specified
*/

trigger PreventAccountDeletion on SOBJECT (before insert) {

}