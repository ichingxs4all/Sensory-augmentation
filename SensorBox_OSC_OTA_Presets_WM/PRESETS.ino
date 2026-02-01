
void loadPreset(int number){

 if (!LittleFS.begin(true)) Serial.println("LittleFS Mount Failed");

  store.begin(PRESET_01);

String MODE = store.get(KEY_1_MODE);
mode = MODE.toInt();

String LEVEL = store.get(KEY_2_LEVEL);
level = LEVEL.toInt();

String PATTERN = store.get(KEY_3_PATTERN);
pattern = PATTERN.toInt();

String POLARITY =store.get(KEY_4_POLARITY);
polarity_state = POLARITY.toInt();

String MAXPWMA = store.get(KEY_5_MAXPWMA);
maxPWMA = MAXPWMA.toInt();

String MAXPWMB = store.get(KEY_6_MAXPWMB);
maxPWMB = MAXPWMB.toInt();

String MAXPWMC = store.get(KEY_7_MAXPWMC);
maxPWMC = MAXPWMC.toInt();

String MAXPWMD = store.get(KEY_8_MAXPWMD);
maxPWMD = MAXPWMD.toInt();

String MAXSENA = store.get(KEY_10_MAXSENA);
maxValueSensorA = MAXSENA.toInt();

String MINSENA = store.get(KEY_9_MINSENA);
minValueSensorA = MINSENA.toInt();

String MAXSENB = store.get(KEY_12_MAXSENB);
maxValueSensorB = MAXSENA.toInt();

String MINSENB = store.get(KEY_11_MINSENB);
minValueSensorB = MINSENB.toInt();

String FILTERA = store.get(KEY_13_FILTERA);
setfilter_a = FILTERA.toInt();

String FILTERB = store.get(KEY_14_FILTERB);
setfilter_b = FILTERB.toInt();

LittleFS.end();

sendPreset(number);
sendMode(mode);
sendLevel(level);
sendPattern(pattern);
sendPolarity(polarity_state);
sendMaxPWMA(maxPWMA);
sendMaxPWMB(maxPWMB);
sendMaxPWMC(maxPWMC);
sendMaxPWMD(maxPWMD);
sendMaxSensorA(maxValueSensorA);
sendMaxSensorB(maxValueSensorB);
sendMinSensorA(minValueSensorA);
sendMinSensorB(minValueSensorB);
sendSensorAFilter(setfilter_a);
sendSensorBFilter(setfilter_b);
}

void storePreset(int number){

 if (!LittleFS.begin(true)) Serial.println("LittleFS Mount Failed");

  store.begin(PRESET_01);

  store.set(KEY_1_MODE,String(mode));

  store.set(KEY_2_LEVEL,String(level));

  store.set(KEY_3_PATTERN,String(pattern));

  store.set(KEY_4_POLARITY,String(polarity_state));

  store.set(KEY_5_MAXPWMA , String(maxPWMA));

  store.set( KEY_6_MAXPWMB , String(maxPWMB));

  store.set(KEY_7_MAXPWMC , String(maxPWMC));

  store.set( KEY_8_MAXPWMD , String(maxPWMD));

  store.set( KEY_9_MINSENA , String(minValueSensorA));

  store.set( KEY_10_MAXSENA , String(maxValueSensorA));

  store.set(KEY_11_MINSENB , String(minValueSensorB));

  store.set(KEY_12_MAXSENB , String(maxValueSensorB));

  store.set(KEY_13_FILTERA , String(setfilter_a));

  store.set(KEY_14_FILTERB , String(setfilter_b));

  LittleFS.end();

if(debug){
Serial.print("Preset stored: ");
Serial.println( number);
Serial.println();
sendPreset(number);
sendMode(mode);
sendLevel(level);
sendPattern(pattern);
sendPolarity(polarity_state);
sendMaxPWMA(maxPWMA);
sendMaxPWMB(maxPWMB);
sendMaxPWMC(maxPWMC);
sendMaxPWMD(maxPWMD);
sendMaxSensorA(maxValueSensorA);
sendMaxSensorB(maxValueSensorB);
sendMinSensorA(minValueSensorA);
sendMinSensorB(minValueSensorB);
sendSensorAFilter(setfilter_a);
sendSensorBFilter(setfilter_b);
}
}
