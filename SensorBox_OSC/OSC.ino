
void led(OSCMessage &msg) {
  ledState = msg.getInt(0);
  digitalWrite(LED_BUILTIN, ledState);
  Serial.print("/led: ");
  Serial.println(ledState);
}

void polarity(OSCMessage &msg) {
  polarity_state = msg.getInt(0);
  digitalWrite(POLARITY_PIN, polarity_state);
  Serial.print("/polarity: ");
  Serial.println(polarity_state);
}


void mode_set(OSCMessage &msg) {
  mode = msg.getInt(0);
  Serial.print("/mode: ");
  Serial.println(mode);
  sendMode(mode);
}

void pwm_a(OSCMessage &msg) {
  pwma = msg.getInt(0);
  analogWrite(PWMA, pwma);
  Serial.print("/pwm_a: ");
  Serial.println(pwma);
}

void pwm_b(OSCMessage &msg) {
  pwmb = msg.getInt(0);
  analogWrite(PWMB, pwmb);
  Serial.print("/pwm_b: ");
  Serial.println(pwmb);
}
void pwm_c(OSCMessage &msg) {
  pwmc = msg.getInt(0);
  analogWrite(PWMC, pwmc);
  Serial.print("/pwm_c: ");
  Serial.println(pwmc);
}

void pwm_d(OSCMessage &msg) {
  pwmd = msg.getInt(0);
  analogWrite(PWMD, pwmd);
  Serial.print("/pwm_d: ");
  Serial.println(pwmd);
}


void rgb(OSCMessage &msg) {
  r = msg.getInt(0);
  g = msg.getInt(1);
  b = msg.getInt(2);
  set_RGB_Led(r,g,b);
  
  Serial.print("/rgb: ");
  Serial.print(r);
  Serial.print(" , ");
  Serial.print(g);
  Serial.print(" , ");
  Serial.println(b);
 
}


void sendSensorA(int sensor_a){
    OSCMessage msg("/sensor_a");
    msg.add((int32_t)sensor_a);
    Udp.beginPacket(outIp, outPort);
    msg.send(Udp);
    Udp.endPacket();
    msg.empty();
    Serial.print("/sensor_a ");
    Serial.println(sensor_a);
}

void sendSensorB(int sensor_b){
    OSCMessage msg("/sensor_b");
    msg.add((int32_t)sensor_b);
    Udp.beginPacket(outIp, outPort);
    msg.send(Udp);
    Udp.endPacket();
    msg.empty();
    Serial.print("/sensor_b ");
    Serial.println(sensor_b);
}

void sendLevel(int level){
    OSCMessage msg("/level");
    msg.add((int32_t)level);
    Udp.beginPacket(outIp, outPort);
    msg.send(Udp);
    Udp.endPacket();
    msg.empty();
    Serial.print("/level ");
    Serial.println(level);
}

void sendMode( int mode){
    OSCMessage msg("/mode");
    msg.add((int32_t)mode);
    Udp.beginPacket(outIp, outPort);
    msg.send(Udp);
    Udp.endPacket();
    msg.empty();
    Serial.print("/mode ");
    Serial.println(mode);
    setRGB_Mode(mode);
}
