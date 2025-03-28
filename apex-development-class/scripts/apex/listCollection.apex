// Defining the list collection
List<String> lstCountries = new List<String>();

//Get the Collection Size
System.debug('Collection size is......'+lstCountries.size());

//Adding the Elements
lstCountries.Add('India');
lstCountries.Add('USA');
lstCountries.Add('UAE');
lstCountries.Add('Singapore');
lstCountries.Add('Greece');
lstCountries.Add('Japan');

System.debug('After adding elements Collection size is......'+lstCountries.size());

//Check for empty collection
if(lstCountries.isEmpty()){
    System.debug('Collection is Empty');
}
else{
    System.debug('Collection is Not Empty');
}

//print the collection elements
System.debug('Elements inside collection....'+lstCountries);

//print the elements in seperate rows
for(String cName : lstCountries){
    System.debug('country name is....'+cName);
}

//Insert element
lstCountries.add(3, 'Germany'); 

//Adding multiple elements
string[] countries = new String[]{'UK', 'Spain'} ; 
countries.addAll(countries); 

System.debug('After Adding All, Elements are.....: '+ lstCountries);

//Search element in collection 
if(lstCountries.Contains('UK')){
    System.debug('Element found in collection');
}

// Get the Element based on Index Position...
System.debug('Element exist at the Index 5 is....'+ lstCountries.Get(5));

//Replace the element values
lstCountries.Set(lstCountries.IndexOf('USA'), 'United Status');
System.debug('After Replacing, Elements are......: '+ lstCountries);

// Sorting the Elements...
lstCountries.Sort();
System.debug('After Sorting, Elements are.....: '+ lstCountries);

//Sort the elements in reverse order
for(Integer ind=lstCountries.size()-1 ; ind >= 0 ; ind-- ){
    System.debug('Country Name is....'+lstCountries.Get(ind));
}

// Clone the Collection...
List<String> backupCopy = lstCountries.Clone();
System.debug('Backup Copy Collection is....: '+backupCopy);

//Compare the collection
if(lstCountries.Equals(backupCopy)){
    System.debug('Both the collection are identicle');
}
else{
    System.debug('Both the collection are Different');
}

// Remove an Element...
lstCountries.Remove(5);
System.debug('After Removal, Elements are.....: '+ lstCountries);

// Remove All the Elements...
lstCountries.Clear();
System.debug('After Removing All, Collection Size is....: '+ lstCountries.Size());





