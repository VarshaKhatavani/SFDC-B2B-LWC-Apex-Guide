/**
 * Create a Trigger on Contact Object, to Prevent the Duplication of Records 
 * based on the Combination of "Contact Name, 
 * and Email Address" values.
	
	Object Name : Contact
	Event Name  : Before Insert.
 * 
 */

trigger PreventDuplicateContact on SOBJECT (before insert) {

}