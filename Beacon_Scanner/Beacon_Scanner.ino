/*
   Based on Neil Kolban example for IDF: https://github.com/nkolban/esp32-snippets/blob/master/cpp_utils/tests/BLE%20Tests/SampleScan.cpp
   Ported to Arduino ESP32 by Evandro Copercini
   Changed to a beacon scanner to report iBeacon, EddystoneURL and EddystoneTLM beacons by beegee-tokyo
   Upgraded Eddystone part by Tomas Pilny on Feb 20, 2023
*/

#include <Arduino.h>

#include <BLEDevice.h>
#include <BLEUtils.h>
#include <BLEScan.h>
#include <BLEAdvertisedDevice.h>
#include <BLEEddystoneURL.h>
#include <BLEEddystoneTLM.h>
#include <BLEBeacon.h>

#define LED_BUILTIN 2

#define E1 16 //gpio16
#define M1 17 //gpio17
#define E2 27 //gpio27
#define M2 14 //gpio14

const int scanTime = 1;  //Scan interval in seconds

const bool debug = true; //Set this to true to enable debug info on serial port

const int minRSSI = -100; //Minimum rssi value
const int maxRSSI = -30; //Maximum rssi value
const int thresholdRSSI = -80;

const int timeOut = 1000; //Timeout in mSecs;

const int maxPWM = 50; // maximum PWM value
const int minPWM = 0; // minimum PWM value

String targetMAC = "94:b9:7e:e3:8f:5a";   // ← change to your iBeacon device MAC
String macid;

int lastRSSI = -100;

BLEScan *pBLEScan;

class MyAdvertisedDeviceCallbacks : public BLEAdvertisedDeviceCallbacks {
  void onResult(BLEAdvertisedDevice advertisedDevice) {
    
    if (advertisedDevice.haveManufacturerData() == true) {
      String strManufacturerData = advertisedDevice.getManufacturerData();
      macid = advertisedDevice.getAddress().toString();

      // Buffer to store manufacturer data (BLE max is 255 bytes)
      uint8_t cManufacturerData[255];
      size_t dataLength = strManufacturerData.length();

      // Bounds checking to prevent buffer overflow
      if (dataLength <= sizeof(cManufacturerData)) {
        memcpy(cManufacturerData, strManufacturerData.c_str(), dataLength);

        if (dataLength == 25 && cManufacturerData[0] == 0x4C && cManufacturerData[1] == 0x00 && macid == targetMAC ) {
          
          BLEBeacon oBeacon = BLEBeacon();
          digitalWrite(LED_BUILTIN,HIGH);
          
          oBeacon.setData(strManufacturerData);
          
          int rssi = advertisedDevice.getRSSI();

          if(debug){
          Serial.print("Found our iBeacon!");
          Serial.print("  rssi: ");
          Serial.print(rssi);
          Serial.print(" ,  MAC ID: ");
          Serial.println(macid);
          };
          lastRSSI = rssi;   
        } 
      } 
    }
  }
};

void setup() {
  Serial.begin(115200);

  pinMode(M1, OUTPUT);
  pinMode(M2, OUTPUT);
  pinMode(LED_BUILTIN,OUTPUT);
  digitalWrite(LED_BUILTIN,LOW);

  BLEDevice::init("");
  pBLEScan = BLEDevice::getScan();  //create new scan
  pBLEScan->setAdvertisedDeviceCallbacks(new MyAdvertisedDeviceCallbacks());
  pBLEScan->setActiveScan(true);  //active scan uses more power, but get results faster
  pBLEScan->setInterval(100);
  pBLEScan->setWindow(99);  // less or equal setInterval value
}

void loop() {
  // put your main code here, to run repeatedly:
  BLEScanResults *foundDevices = pBLEScan->start(scanTime, false);
  //Serial.print("Devices found: ");
  //Serial.println(foundDevices->getCount());
  //Serial.println("Scan done!");
  pBLEScan->clearResults();  // delete results fromBLEScan buffer to release memory

      int pwmValue = map(lastRSSI, minRSSI, maxRSSI, minPWM, maxPWM);
      
      pwmValue = constrain(pwmValue, minPWM, maxPWM);

      digitalWrite(M1, HIGH);
      digitalWrite(M2, HIGH);

      analogWrite(E1, pwmValue);   //PWM Speed Control
      analogWrite(E2, pwmValue);   //PWM Speed Control

       // Timeout: If device not seen, fade PWM to 0
  static unsigned long lastSeen = millis();
  
  if (lastRSSI > thresholdRSSI) lastSeen = millis();

  if (millis() - lastSeen > timeOut) {

    if(debug) Serial.println("Device lost → PWM = 0");
    
    digitalWrite(LED_BUILTIN,LOW);
    digitalWrite(M1, LOW);
    digitalWrite(M2,LOW);
    analogWrite(E1, minPWM);   //PWM Speed Control to 
    analogWrite(E2, minPWM);   //PWM Speed Control
  }
  delay(200);
}
