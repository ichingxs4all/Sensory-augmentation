
void readOSC(){
  OSCMessage msg;
  int size = Udp.parsePacket();

  if (size > 0) {
    while (size--) {
      msg.fill(Udp.read());
    }
    if (!msg.hasError()) {
      msg.dispatch("/led", led);
      msg.dispatch("/debug", debug_en);
      msg.dispatch("/polarity", polarity);
      msg.dispatch("/enable_sensor_a", enableSensorA);
      msg.dispatch("/enable_sensor_b", enableSensorB);
      msg.dispatch("/enable_knob", enableKnob);
      msg.dispatch("/level", setlevel);
      msg.dispatch("/pwm_a", pwm_a);
      msg.dispatch("/pwm_b", pwm_b);
      msg.dispatch("/pwm_c", pwm_c);
      msg.dispatch("/pwm_d", pwm_d);
      msg.dispatch("/max_pwma", max_pwma);
      msg.dispatch("/max_pwmb", max_pwmb);
      msg.dispatch("/max_pwmc", max_pwmc);
      msg.dispatch("/max_pwmd", max_pwmd);
      msg.dispatch("/max_sensor_a", max_sensor_a);
      msg.dispatch("/max_sensor_b", max_sensor_b);
      msg.dispatch("/min_sensor_a", min_sensor_a);
      msg.dispatch("/min_sensor_b", min_sensor_b);
      msg.dispatch("/setfilter_a", setFilterSensorA);
      msg.dispatch("/setfilter_b", setFilterSensorB);
      msg.dispatch("/rgb", rgb);
      msg.dispatch("/mode", mode_set);
      msg.dispatch("/preset",loadPreset);
      msg.dispatch("/store_preset",storePreset);
    } else {
      error = msg.getError();
      if(debug){
      Serial.print("error: ");
      Serial.println(error);
      }
    }
  }
}

void led(OSCMessage &msg) {
  ledState = msg.getInt(0);
  digitalWrite(LED_BUILTIN, ledState);
  if(debug){
  Serial.print("/led: ");
  Serial.println(ledState);
  }
}

void loadPreset(OSCMessage &msg) {
  preset = msg.getInt(0);
  loadPresetIntoBuffer(preset);
  sendPreset(preset);
  if(debug){
  Serial.print("/preset: ");
  Serial.println(preset);
  }
}

void storePreset(OSCMessage &msg) {
  preset = msg.getInt(0);
  storeBufferIntoPreset(preset);
  sendPreset(preset);
  if(debug){
  Serial.print("/preset: ");
  Serial.println(preset);
  }
}


void setlevel(OSCMessage &msg) {
  level = msg.getInt(0);
  sendLevel(level);
  if(debug){
  Serial.print("/level: ");
  Serial.println(level);
  }
}

void debug_en(OSCMessage &msg) {
  debug = msg.getInt(0);
  digitalWrite(LED_BUILTIN, debug);
  sendDebug(debug);
  if(debug){
  Serial.print("/debug: ");
  Serial.println(debug);
  }
}


void polarity(OSCMessage &msg) {
  polarity_state = msg.getInt(0);
  digitalWrite(POLARITY_PIN, polarity_state);
  if(debug){
  Serial.print("/polarity: ");
  Serial.println(polarity_state);
  }
}

void enableSensorA(OSCMessage &msg) {
  sensorA_enable = msg.getInt(0);
  if(debug){
  Serial.print("/enable_sensor_a: ");
  Serial.println(sensorA_enable);
  }
}

void enableSensorB(OSCMessage &msg) {
  sensorB_enable = msg.getInt(0);
  if(debug){
  Serial.print("/enable_sensor_b: ");
  Serial.println(sensorB_enable);
  }
}

void enableKnob(OSCMessage &msg) {
  knob_enable = msg.getInt(0);
  if(debug){
  Serial.print("/enable_knob: ");
  Serial.println(knob_enable);
  }
}

void setFilterSensorA(OSCMessage &msg) {
  setfilter_a = msg.getInt(0);

  SENSORA_Filter.SetWeight(setfilter_a);
  sendSensorAFilter();
  
  if(debug){
  Serial.print("/set_filter_a: ");
  Serial.println(setfilter_a);
  }
}

void setFilterSensorB(OSCMessage &msg) {
  setfilter_b = msg.getInt(0);

  SENSORB_Filter.SetWeight(setfilter_b);
  sendSensorBFilter();
  if(debug){
  Serial.print("/set_filter_b: ");
  Serial.println(setfilter_b);
  }
}
void mode_set(OSCMessage &msg) {
  mode = msg.getInt(0);
  sendMode(mode);
  if(debug){
  Serial.print("/mode: ");
  Serial.println(mode);
  }
}

void pwm_a(OSCMessage &msg) {
  pwma = msg.getInt(0);
  sendPWMA(pwma);
  if(debug){
  Serial.print("/pwm_a: ");
  Serial.println(pwma);
  }
}

void pwm_b(OSCMessage &msg) {
  pwmb = msg.getInt(0); 
  sendPWMB(pwmb);
  if(debug){
  Serial.print("/pwm_b: ");
  Serial.println(pwmb);
  }
}

void pwm_c(OSCMessage &msg) {
  pwmc = msg.getInt(0);
  sendPWMC(pwmc);
  if(debug){
  Serial.print("/pwm_c: ");
  Serial.println(pwmc);
  }
}

void pwm_d(OSCMessage &msg) {
  pwmd = msg.getInt(0);
  sendPWMD(pwmd);
  if(debug){
  Serial.print("/pwm_d: ");
  Serial.println(pwmd);
  }
}


void max_pwma(OSCMessage &msg) {
  maxPWMA = msg.getInt(0);
  sendMaxPWMA(maxPWMA);
  if(debug){
  Serial.print("/max_pwma: ");
  Serial.println(maxPWMA);
  }
}


void max_pwmb(OSCMessage &msg) {
  maxPWMB = msg.getInt(0);
  sendMaxPWMB(maxPWMB);
  if(debug){
  Serial.print("/max_pwmb: ");
  Serial.println(maxPWMB);
  }
}

void max_pwmc(OSCMessage &msg) {
  maxPWMC = msg.getInt(0);
  sendMaxPWMC(maxPWMC);
  if(debug){
  Serial.print("/max_pwmc: ");
  Serial.println(maxPWMC);
  }
}


void max_pwmd(OSCMessage &msg) {
  maxPWMD = msg.getInt(0);
  sendMaxPWMD(maxPWMD);
  if(debug){
  Serial.print("/max_pwmd: ");
  Serial.println(maxPWMD);
  }
}

void max_sensor_a(OSCMessage &msg) {
  maxValueSensorA  = msg.getInt(0);
  sendMaxSensorA(maxValueSensorA);
  if(debug){
  Serial.print("/max_sensor_a: ");
  Serial.println(maxValueSensorA) ;
  }
}

void max_sensor_b(OSCMessage &msg) {
  maxValueSensorB  = msg.getInt(0);
  sendMaxSensorB(maxValueSensorB);
  if(debug){
  Serial.print("/max_sensor_b: ");
  Serial.println(maxValueSensorB) ;
  }
}

void min_sensor_a(OSCMessage &msg) {
  minValueSensorA  = msg.getInt(0);
  sendMinSensorA(minValueSensorA);
  if(debug){
  Serial.print("/min_sensor_a: ");
  Serial.println(minValueSensorA) ;
  }
}

void min_sensor_b(OSCMessage &msg) {
  minValueSensorB  = msg.getInt(0);
  sendMinSensorB(minValueSensorB);
  if(debug){
  Serial.print("/min_sensor_b: ");
  Serial.println(minValueSensorB) ;
  }
}


void rgb(OSCMessage &msg) {
  r = msg.getInt(0);
  g = msg.getInt(1);
  b = msg.getInt(2);
  set_RGB_Led(r,g,b);
  if(debug){
  Serial.print("/rgb: ");
  Serial.print(r);
  Serial.print(" , ");
  Serial.print(g);
  Serial.print(" , ");
  Serial.println(b);
  }
 
}


void sendSensorA(int sensor_a){
    OSCMessage msg("/sensor_a");
    msg.add((int32_t)sensor_a);
    Udp.beginPacket(outIp, outPort);
    msg.send(Udp);
    Udp.endPacket();
    msg.empty();
    if(debug){
    Serial.print("/sensor_a ");
    Serial.println(sensor_a);
    }
}

void sendSensorB(int sensor_b){
    OSCMessage msg("/sensor_b");
    msg.add((int32_t)sensor_b);
    Udp.beginPacket(outIp, outPort);
    msg.send(Udp);
    Udp.endPacket();
    msg.empty();
    if(debug){
    Serial.print("/sensor_b ");
    Serial.println(sensor_b);
    }
}

void sendSensorAFilter(){
    OSCMessage msg("/setfilter_a");
    int filterWeight = SENSORA_Filter.GetWeight();
    msg.add((int32_t)filterWeight);
    Udp.beginPacket(outIp, outPort);
    msg.send(Udp);
    Udp.endPacket();
    msg.empty();
    if(debug){
    Serial.print("/setfilter_a ");
    Serial.println(filterWeight);
    }
}

void sendSensorBFilter(){
    OSCMessage msg("/setfilter_b");
    int filterWeight = SENSORB_Filter.GetWeight();
    msg.add((int32_t)filterWeight);
    Udp.beginPacket(outIp, outPort);
    msg.send(Udp);
    Udp.endPacket();
    msg.empty();
    if(debug){
    Serial.print("/setfilter_b ");
    Serial.println(filterWeight);
    }
}




void sendPWMA(int pwma){
    OSCMessage msg("/pwm_a");
    msg.add((int32_t)pwma);
    Udp.beginPacket(outIp, outPort);
    msg.send(Udp);
    Udp.endPacket();
    msg.empty();
    if(debug){
    Serial.print("/pwm_a ");
    Serial.println(pwma);
    }
}

void sendPWMB(int pwmb){
    OSCMessage msg("/pwm_b");
    msg.add((int32_t)pwmb);
    Udp.beginPacket(outIp, outPort);
    msg.send(Udp);
    Udp.endPacket();
    msg.empty();
    if(debug){
    Serial.print("/pwm_b ");
    Serial.println(pwmb);
    }
}

void sendPWMC(int pwma){
    OSCMessage msg("/pwm_c");
    msg.add((int32_t)pwmc);
    Udp.beginPacket(outIp, outPort);
    msg.send(Udp);
    Udp.endPacket();
    msg.empty();
    if(debug){
    Serial.print("/pwm_c ");
    Serial.println(pwmc);
    }
}

void sendPWMD(int pwmd){
    OSCMessage msg("/pwm_b");
    msg.add((int32_t)pwmd);
    Udp.beginPacket(outIp, outPort);
    msg.send(Udp);
    Udp.endPacket();
    msg.empty();
    if(debug){
    Serial.print("/pwm_d ");
    Serial.println(pwmd);
    }
}






void sendMaxPWMA(int maxPWMA){
    OSCMessage msg("/max_pwma");
    msg.add((int32_t)maxPWMA);
    Udp.beginPacket(outIp, outPort);
    msg.send(Udp);
    Udp.endPacket();
    msg.empty();
    if(debug){
    Serial.print("/max_pwma ");
    Serial.println(maxPWMA);
    }
}

void sendMaxPWMB(int maxPWMB){
    OSCMessage msg("/max_pwmb");
    msg.add((int32_t)maxPWMB);
    Udp.beginPacket(outIp, outPort);
    msg.send(Udp);
    Udp.endPacket();
    msg.empty();
    if(debug){
    Serial.print("/max_pwmb ");
    Serial.println(maxPWMB);
    }
}


void sendMaxPWMC(int maxPWMC){
    OSCMessage msg("/max_pwmc");
    msg.add((int32_t)maxPWMC);
    Udp.beginPacket(outIp, outPort);
    msg.send(Udp);
    Udp.endPacket();
    msg.empty();
    if(debug){
    Serial.print("/max_pwmc ");
    Serial.println(maxPWMC);
    }
}

void sendMaxPWMD(int maxPWMD){
    OSCMessage msg("/max_pwmd");
    msg.add((int32_t)maxPWMD);
    Udp.beginPacket(outIp, outPort);
    msg.send(Udp);
    Udp.endPacket();
    msg.empty();
    if(debug){
    Serial.print("/max_pwmd ");
    Serial.println(maxPWMD);
    }
}

void sendMaxSensorA(int maxSensorA){
    OSCMessage msg("/max_sensor_a");
    msg.add((int32_t)maxSensorA);
    Udp.beginPacket(outIp, outPort);
    msg.send(Udp);
    Udp.endPacket();
    msg.empty();
    if(debug){
    Serial.print("/max_sensor_a ");
    Serial.println(maxSensorA);
    }
}

void sendMaxSensorB(int maxSensorB){
    OSCMessage msg("/max_sensor_b");
    msg.add((int32_t)maxSensorB);
    Udp.beginPacket(outIp, outPort);
    msg.send(Udp);
    Udp.endPacket();
    msg.empty();
    if(debug){
    Serial.print("/max_sensor_b ");
    Serial.println(maxSensorB);
    }
}

void sendMinSensorA(int minSensorA){
    OSCMessage msg("/min_sensor_a");
    msg.add((int32_t)minSensorA);
    Udp.beginPacket(outIp, outPort);
    msg.send(Udp);
    Udp.endPacket();
    msg.empty();
    if(debug){
    Serial.print("/min_sensor_a ");
    Serial.println(minSensorA);
    }
}

void sendMinSensorB(int minSensorB){
    OSCMessage msg("/min_sensor_b");
    msg.add((int32_t)minSensorB);
    Udp.beginPacket(outIp, outPort);
    msg.send(Udp);
    Udp.endPacket();
    msg.empty();
    if(debug){
    Serial.print("/min_sensor_b ");
    Serial.println(minSensorB);
    }
}



void sendLevel(int level){
    OSCMessage msg("/level");
    msg.add((int32_t)level);
    Udp.beginPacket(outIp, outPort);
    msg.send(Udp);
    Udp.endPacket();
    msg.empty();
    if(debug){
    Serial.print("/level ");
    Serial.println(level);
    }
}

void sendMode( int mode){
    OSCMessage msg("/mode");
    msg.add((int32_t)mode);
    Udp.beginPacket(outIp, outPort);
    msg.send(Udp);
    Udp.endPacket();
    msg.empty();
    if(debug){
    Serial.print("/mode ");
    Serial.println(mode);
    //setRGB_Mode(mode);
    }
}

void sendPreset( int preset){
    OSCMessage msg("/preset");
    msg.add((int32_t)preset);
    Udp.beginPacket(outIp, outPort);
    msg.send(Udp);
    Udp.endPacket();
    msg.empty();
    if(debug){
    Serial.print("/preset ");
    Serial.println(preset);
    //setRGB_Mode(mode);
    }
}

void sendPattern( int pattern){
    OSCMessage msg("/pattern");
    msg.add((int32_t)pattern);
    Udp.beginPacket(outIp, outPort);
    msg.send(Udp);
    Udp.endPacket();
    msg.empty();
    if(debug){
    Serial.print("/pattern ");
    Serial.println(pattern);
    //setRGB_Mode(mode);
    }
}

void sendDebug( int debug_en){
    OSCMessage msg("/debug");
    msg.add((int32_t)debug_en);
    Udp.beginPacket(outIp, outPort);
    msg.send(Udp);
    Udp.endPacket();
    msg.empty();
    if(debug){
    Serial.print("/debug ");
    Serial.println(debug_en);
    //setRGB_Mode(mode);
    }
}
