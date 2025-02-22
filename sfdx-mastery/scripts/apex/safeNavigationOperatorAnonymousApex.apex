Car carWithEngine = new Car();
carWithEngine.model = 'Land Rover Discovery';

carWithEngine.engine = new Car.Engine();
carWithEngine.engine.horsepower = 300;
carWithEngine.engine.make = 2016;

System.debug('Car Model: ' + carWithEngine?.model);
System.debug('Car Engine HP: ' + carWithEngine?.engine?.horsepower);

// Example 2 

Car carWithoutEngine = new Car();
carWithoutEngine.model = 'Jaguar' ;

System.debug('🔵 STARTING ANONYMOUS APEX');
System.debug('Car Model : ' +carWithoutEngine?.model ) ;
System.debug('Car Engine : ' + carWithoutEngine?.engine?.horsepower);
System.debug('✅ END OF EXECUTION');
