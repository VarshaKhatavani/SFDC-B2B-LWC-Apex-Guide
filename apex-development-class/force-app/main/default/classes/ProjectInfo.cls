/* Q. Create an Apex class to store the project details. Define the required variables to hold the product data */

public with sharing class ProjectInfo {
   
    public String projectName, clientName, contactNumber, emailAddress, locationName ; 
    public Integer projectCode, teamSize ; 
    public Date StartDate, EndDate ; 
    public Decimal budget ; 
    public boolean isInProgress ; 	
   
    public ProjectInfo() {

    }
}