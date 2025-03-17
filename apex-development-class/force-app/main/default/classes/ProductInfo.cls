/* 	Q.  Create an Apex class to store the product details. Define the required variables to hold the product data */

public with sharing class ProductInfo {

    public Integer productCode, quantity ; 
    public String productName, manufacturer, contactNumber, emailAddress, locationName ; 
    public Decimal productPrice ; 
    public Date manufacturingDate, expiryDate ; 
    public Boolean isInStock ; 

    public ProductInfo() {

    }
}