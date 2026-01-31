void setupPins(){

  
  pinMode(LED_BUILTIN, OUTPUT);
  digitalWrite(LED_BUILTIN, ledState);  // turn *on* led

  pinMode(POLARITY_PIN, OUTPUT);
  digitalWrite(POLARITY_PIN, HIGH);

  pinMode(BUTTON_PIN, INPUT_PULLUP);

  analogWrite(PWMA, 0);
  analogWrite(PWMB, 0);
  analogWrite(PWMC, 0);
  analogWrite(PWMD, 0);


}