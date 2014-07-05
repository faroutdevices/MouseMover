// Controlling a servo position using a potentiometer (variable resistor) 
// by Michal Rinott <http://people.interaction-ivrea.it/m.rinott> 

#include <Servo.h> 
 
Servo myservo;  // create servo object to control a servo

int val;    // variable to read the value from the analog pin
int val2;    // variable to read the value from the analog pin 
 
void setup() 
{ 
  myservo.attach(9);  // attaches the servo on pin 9 to the servo object 
} 
 
void loop() 
{             // reads the value of the potentiometer (value between 0 and 1023) 
  val = 120;     // scale it to use it with the servo (value between 0 and 180)
  val2 = 145;     // scale it to use it with the servo (value between 0 and 180)  
  myservo.write(val);                  // sets the servo position according to the scaled value 
  //delay(15);  // waits for the servo to get there
  delay(10000);  // waits two secs  
  myservo.write(val2);
  delay(10000);  // waits two secs    
} 
