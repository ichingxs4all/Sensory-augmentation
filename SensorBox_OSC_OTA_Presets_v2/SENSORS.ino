void readSensors(){

  int SensorA_RawValue = analogRead(SENSORA);
  int SensorB_RawValue = analogRead(SENSORB);
  int Knob_RawValue = analogRead(KNOBPIN);

  SENSORA_Filter.Filter(SensorA_RawValue);
  SENSORB_Filter.Filter(SensorB_RawValue);
  KNOB_Filter.Filter(Knob_RawValue);

  if(knob_enable) level = (KNOB_Filter.Current())/512;
 
  sensora = map(SENSORA_Filter.Current(),minValueSensorA,maxValueSensorA,0,4095);
  sensorb = map(SENSORB_Filter.Current(),minValueSensorB,maxValueSensorB,0,4095);

  // if (mode != prev_mode){
  //   sendMode(mode);
  //   prev_mode=mode;
  // }

  if (level != prev_level){
    sendLevel(level);
    prev_level = level;
  }

  if (sensora != prev_sensora && sensorA_enable == true)
  {
    sendSensorA(sensora);
    prev_sensora=sensora;
  }

  if (sensorb != prev_sensorb && sensorB_enable == true)
  {
    sendSensorB(sensorb);
    prev_sensorb=sensorb;
  }
}
