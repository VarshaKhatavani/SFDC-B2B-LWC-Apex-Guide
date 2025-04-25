/**
 * Create a Trigger on Account Object, to Remove the Related Contact Records 
 * upon removing the Parent HR Record.
	
	Object Name : Account.
	Event Name  : Before Delete.
 */

trigger DeleteAssociateContacts on SOBJECT (before insert) {

}