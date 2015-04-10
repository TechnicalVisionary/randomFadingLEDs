/*

 By Christopher Voute 
 Technical Visionary
 This example code is in the public domain, but I'd love it if I got a little credit ;)
 */

int led1 = 3;
int led2 = 5;
int led3 = 6;
int led4 = 9;
int led5 = 10;
int led6 = 11;
int led7 = 12;
int brightness = 110;
int brightness1 = 60;
int brightness2 = 120;
int brightness3 = 180;
int brightness4 = 140;
int brightness5 = 100;
int fadeAmount = 1;
int fadeAmount1 = 1;
int fadeAmount2 = 1;
int fadeAmount3 = 1;
int fadeAmount4 = 1;
int fadeAmount5 = 1;

// the setup routine runs once when you press reset:
void setup()  { 
  // declare pins 3, 5, 6, 9, 10, 11, 12 to be an output:
  pinMode(led1, OUTPUT);
  pinMode(led2, OUTPUT);
  pinMode(led3, OUTPUT);
  pinMode(led4, OUTPUT);
  pinMode(led5, OUTPUT);
  pinMode(led6, OUTPUT);
  pinMode(led7, OUTPUT);
  // write the only always-on LED to high
  digitalWrite(led7, HIGH);
} 


void loop()  { 
  
  //this part here adds/subtracts a random amount to the brightness value depending on if its fading or brightening the led 
  //uses the six checkAmount functions to pass brightness(s) for validation
  brightness = brightness + checkAmount(brightness);
  brightness1 = brightness1 + checkAmount1(brightness1);
  brightness2 = brightness2 + checkAmount2(brightness2);
  brightness3 = brightness3 + checkAmount3(brightness3);
  brightness4 = brightness4 + checkAmount4(brightness4);
  brightness5 = brightness5 + checkAmount5(brightness5);
  //now use analogWrite to change the brightness of the six leds
  analogWrite(led1, brightness);
  analogWrite(led2, brightness1);
  analogWrite(led3, brightness2);
  analogWrite(led4, brightness3); 
  analogWrite(led5, brightness4); 
  analogWrite(led6, brightness5); 
  //this randomizes the delay in order to create a "random twinkling" effect
  delay(random(5, 20));
}
//theses six functions do the same thing but for different leds. Randomized values ensure a twinkly effect
int checkAmount(int amount) {
  if (amount < 50 || amount > 250) {
    fadeAmount = -fadeAmount;
  }
      if (amount < 50) {
    fadeAmount = random(5);
  }
  return fadeAmount;
}
int checkAmount1(int amount) {
  if (amount < 50 || amount > 250) {
    fadeAmount1 = -fadeAmount1;
  }
      if (amount < 50) {
    fadeAmount1 = random(5);
  }
  return fadeAmount1;
}
int checkAmount2(int amount) {
  if (amount < 50 || amount > 250) {
    fadeAmount2 = -fadeAmount2;
  }
      if (amount < 50) {
    fadeAmount2 = random(5);
  }
  return fadeAmount2;
}
int checkAmount3(int amount) {
  if (amount < 50 || amount > 250) {
    fadeAmount3 = -fadeAmount3;
  }
      if (amount < 50) {
    fadeAmount3 = random(5);
  }
  return fadeAmount3;
}
int checkAmount4(int amount) {
  if (amount < 50 || amount > 250) {
    fadeAmount4 = -fadeAmount4;
  }
      if (amount < 50) {
    fadeAmount4 = random(5);
  }
  return fadeAmount4;
}
int checkAmount5(int amount) {
  if (amount < 50 || amount > 250) {
    fadeAmount5 = -fadeAmount5;
  }
    if (amount < 50) {
    fadeAmount5 = random(5);
  }
  return fadeAmount5;
}
