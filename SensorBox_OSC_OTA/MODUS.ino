void setMODUS( int mode){
switch (mode) {
  case 1:
  //Peltier mode
  set_RGB_Led(255,255,255);
  polarity_state = 1;
  minValueSensorA = 0;
  maxValueSensorA = 4095;
  maxPWMA = 100;
  sendMode(mode);
  break;

  case 2:
  set_RGB_Led(255,0,0);
  //Solenoid mode
  polarity_state = 1;
  minValueSensorA = 0;
  maxValueSensorA = 4095;
  maxPWMA = 50;
  sendMode(mode);
  break;

  case 3:
  set_RGB_Led(0,255,0);
  polarity_state = 1;
  minValueSensorA = 0;
  maxValueSensorA = 4095;
  maxPWMA = 50;
  sendMode(mode);
  break;

  case 4:
  set_RGB_Led(0,0,255);
  //Vibration motor
  polarity_state = 1;
  minValueSensorA = 0;
  maxValueSensorA = 4095;
  maxPWMA = 50;
  sendMode(mode);
  break;

  default:
  set_RGB_Led(0,0,0);
  sendMode(mode);
  break;

  }
}