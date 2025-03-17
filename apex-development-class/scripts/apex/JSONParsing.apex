// 1. Using JSON.deserialize() (Strongly Typed)

public class UserInfo {
    public String name;
    public String email;
    public Integer age;
}

String jsonString = '{"name":"John Doe", "email":"john.doe@example.com", "age":30}';
UserInfo user = (UserInfo) JSON.deserialize(jsonString, UserInfo.class);

System.debug('Name: ' + user.name);
System.debug('Email: ' + user.email);
System.debug('Age: ' + user.age);


// 2. Using JSON.deserializeUntyped() (Dynamic Parsing)

String jsonString = '{"name":"John Doe", "email":"john.doe@example.com", "age":30}';
Map<String, Object> jsonMap = (Map<String, Object>) JSON.deserializeUntyped(jsonString);

System.debug('Name: ' + jsonMap.get('name'));
System.debug('Email: ' + jsonMap.get('email'));
System.debug('Age: ' + jsonMap.get('age'));

// 3. Using JSONParser (Manual Tokenization)

String jsonString = '{"name":"John Doe", "email":"john.doe@example.com", "age":30}';
JSONParser parser = JSON.createParser(jsonString);

while (parser.nextToken() != null) {
    if (parser.getCurrentToken() == JSONToken.FIELD_NAME) {
        String fieldName = parser.getText();
        parser.nextToken(); // Move to field value
        System.debug(fieldName + ': ' + parser.getText());
    }
}

