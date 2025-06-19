// Check for equals
Assert.areEqual('Expecting Varsha', 'Got Julie', 'Name not equal'); 
Assert.areNotEqual('Expecting Varsha', 'Got Julie');

// Check for Boolean
Assert.isTrue(1 == 2); 
Assert.isFalse(1 == 2);

// Check for null
Assert.isNull(null);
Assert.isNotNull(null);

// Check for Instance Type
Account acc = new Account();
Assert.isInstanceOfType(acc, Account.class); // success
Assert.isNotInstanceOfType(acc, Account.class); // fail