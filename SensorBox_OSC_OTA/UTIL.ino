void versionConv(){
  char charVal[10];               //temporarily holds data from vals 
  dtostrf(version, 2, 2, charVal);  //4 is mininum width, 4 is precision; float value is copied onto buff
  for(int i=0;i<sizeof(charVal);i++)
  {
    versionStr+=charVal[i];
  }
  Serial.print("Version: ");Serial.println(versionStr); //display string
}