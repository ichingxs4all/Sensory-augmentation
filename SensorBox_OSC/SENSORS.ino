void readSensors(){

  int SensorA_RawValue = analogRead(SENSORA);
  int SensorB_RawValue = analogRead(SENSORB);
  int Knob_RawValue = analogRead(KNOBPIN);

  SENSORA_Filter.Filter(SensorA_RawValue);
  SENSORB_Filter.Filter(SensorB_RawValue);
  KNOB_Filter.Filter(Knob_RawValue);

  int level = (KNOB_Filter.Current())/16;

  int sensora = map(SENSORA_Filter.Current(),minValue,maxValue,0,level);
  int sensorb = map(SENSORB_Filter.Current(),minValue,maxValue,0,level);

  if (mode != prev_mode){
    sendMode(mode);
    prev_mode=mode;
  }

  if (level != prev_level){
    sendLevel(level);
    prev_level = level;
  }

  if (sensora != prev_sensora){
    sendSensorA(sensora);
    prev_sensora=sensora;
  }

  if (sensorb != prev_sensorb)
  {
    sendSensorB(sensorb);
    prev_sensorb=sensorb;
  }
}

void readButton(){
  buttonState = digitalRead(BUTTON_PIN);

  if( buttonState != prev_buttonState ){
    if (buttonState == LOW){

    mode++;
    if(mode > max_mode) mode = 0;
    sendMode(mode);
  }
  }
  prev_buttonState = buttonState;
}