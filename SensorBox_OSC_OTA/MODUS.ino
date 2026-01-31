void setMODUS( int mode){
  sendMode(mode);
switch (mode) {

  case 0:
  set_RGB_Led(0,0,0);
  sensorA_enable = false;
  sensorB_enable = false;
  analogWrite(PWMA, 0);
  analogWrite(PWMB, 0);
  analogWrite(PWMC, 0);
  analogWrite(PWMD, 0);
  break;

  case 1:
  //Peltier mode
  set_RGB_Led(255,255,255);
  //polarity_state = 1;
  //sensorA_enable = true;
  //minValueSensorA = 0;
  //maxValueSensorA = 4095;
  //maxPWMA = 100;
  break;

  case 2:
  set_RGB_Led(255,0,0);
  //Solenoid mode
  //polarity_state = 1;
  //sensorA_enable = true;
  //minValueSensorA = 0;
  //maxValueSensorA = 4095;
  //maxPWMA = 50;

  break;

  case 3:
  set_RGB_Led(0,255,0);
  //polarity_state = 1;
  //sensorA_enable = true;
  //minValueSensorA = 0;
  //maxValueSensorA = 4095;
  //maxPWMA = 50;
  break;

  case 4:
  set_RGB_Led(0,0,255);
  //Vibration motor
  //polarity_state = 1;
  //sensorA_enable = true;
  //minValueSensorA = 0;
  //maxValueSensorA = 4095;
  ///maxPWMA = 50;
  break;

  default:
  set_RGB_Led(0,0,0);
  sensorA_enable = false;
  sensorB_enable = false;
  analogWrite(PWMA, 0);
  analogWrite(PWMB, 0);
  analogWrite(PWMC, 0);
  analogWrite(PWMD, 0);
  break;

  }
}