void savePreset(uint8_t presetIndex, int32_t *data) {
  if (presetIndex >= NUM_PRESETS) return;

  prefs.begin("presets", false); // RW mode

  char key[10];
  snprintf(key, sizeof(key), "preset%d", presetIndex);

  prefs.putBytes(key, data, sizeof(int32_t) * VALUES_PER_PRESET);

  prefs.end();
}

bool loadPreset(uint8_t presetIndex, int32_t *data) {
  if (presetIndex >= NUM_PRESETS) return false;

  prefs.begin("presets", true); // Read-only

  char key[10];
  snprintf(key, sizeof(key), "preset%d", presetIndex);

  size_t expectedSize = sizeof(int32_t) * VALUES_PER_PRESET;
  size_t actualSize = prefs.getBytes(key, data, expectedSize);

  prefs.end();

  return (actualSize == expectedSize);
}


void initPresets(){

for (int i = 0; i < NUM_PRESETS; i++) {
    
presetBuffer[0] = 0; //mode
presetBuffer[1] = 0; //level
presetBuffer[2] = 1; //pattern
presetBuffer[3] = 0; //polarity_state
presetBuffer[4] = 255; //maxPWMA
presetBuffer[5] = 255; //maxPWMB
presetBuffer[6] = 255; //maxPWMC
presetBuffer[7] = 255; //maxPWMD
presetBuffer[8] = 0; // minValueSensorA
presetBuffer[9] = 4095; //maxValueSensorA
presetBuffer[10] = 0; // minValueSensorB
presetBuffer[11] = 4095; //maxValueSensorB
presetBuffer[12] = 10; //setfilter_a
presetBuffer[13] = 10; // setfilter_b
presetBuffer[14] = 0; // spare
presetBuffer[15] = 0; // spare

savePreset(i, presetBuffer);

Serial.print("Preset ");
Serial.print(i);
Serial.println(" saved");
}

}

void getAllPresets(){
  // Clear buffer
  memset(presetBuffer, 0, sizeof(presetBuffer));

for (int i = 0; i < NUM_PRESETS; i++) {
  // Load preset 0
  if (loadPreset(i, presetBuffer)) {
    Serial.print("Preset"); 
    Serial.print(i);
    Serial.println("loaded:");

    for (int j = 0; j < VALUES_PER_PRESET; j++) {
      Serial.print(presetBuffer[j]);
      Serial.print(" ");
    }
    Serial.println();
  } else {
    Serial.print("Failed to load preset ");
    Serial.print(i);
  }
}
}

void loadPresetIntoBuffer(int number){

loadPreset(number,presetBuffer);

mode = presetBuffer[0] = 0; //mode
level = presetBuffer[1] = 0; //level
pattern = presetBuffer[2] = 1; //pattern
polarity_state = presetBuffer[3] = 0; //polarity
maxPWMA = presetBuffer[4] = 255; //maxPWMA
maxPWMB = presetBuffer[5] = 255; //maxPWMB
maxPWMC = presetBuffer[6] = 255; //maxPWMC
maxPWMD = presetBuffer[7] = 255; //maxPWMD
minValueSensorA = presetBuffer[8] = 0; // minValueSensorA
maxValueSensorA = presetBuffer[9] = 4095; //maxValueSensorA
minValueSensorB = presetBuffer[10] = 0; // minValueSensorB
maxValueSensorB = presetBuffer[11] = 4095; //maxValueSensorB
setfilter_a = presetBuffer[12] = 10; //setfilter_a
setfilter_b = presetBuffer[13] = 10; // setfilter_b
spareA = presetBuffer[14] = 0; // spare
spareB = presetBuffer[15] = 0; // spare

sendMaxPWMA(maxPWMA);
sendMaxPWMB(maxPWMB);
sendMaxPWMC(maxPWMC);
sendMaxPWMD(maxPWMD);
sendMaxSensorA(maxValueSensorA);
sendMaxSensorB(maxValueSensorB);
sendMinSensorA(minValueSensorA);
sendMinSensorB(minValueSensorB);
sendLevel(level);
sendMode(mode);
sendPattern(pattern);
sendSensorAFilter();
sendSensorBFilter();
}




void clearPreset(){

    // Clear buffer
  memset(presetBuffer, 0, sizeof(presetBuffer));
}