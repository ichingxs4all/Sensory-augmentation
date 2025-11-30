#include <BLEDevice.h>


#define LED_BUILTIN 2

String targetMAC = "94:B9:7E:E3:8F:5A";   // ← change to your BLE device MAC
int pwmPin = 23;                           // PWM output pin

int E1 = 16; //gpio16
int M1 = 17; //gpio17
int E2 = 27; //gpio27
int M2 = 14; //gpio14

int pwmChannel = 0;
int pwmFreq = 5000;
int pwmRes = 8;                           // 8-bit (0–255)

int lastRSSI = -100;

class MyAdvertisedDeviceCallbacks : public BLEAdvertisedDeviceCallbacks {
  void onResult(BLEAdvertisedDevice advertisedDevice) {
    digitalWrite(LED_BUILTIN,LOW);
    if (advertisedDevice.getAddress().toString() == targetMAC) {

      int rssi = advertisedDevice.getRSSI();
      lastRSSI = rssi;

      Serial.print("Target RSSI: ");
      Serial.print(rssi);
      Serial.print("  ,  ");

      // Convert RSSI (-100 to -30 dBm) → PWM (0 to 255)
      int pwmValue = map(rssi, -100, -30, 0, 255);
      pwmValue = constrain(pwmValue, 0, 255);
      
      digitalWrite(M1,HIGH);
      digitalWrite(M2, HIGH);

      analogWrite(E1, pwmValue);   //PWM Speed Control
      analogWrite(E2, pwmValue);   //PWM Speed Control

      ledcWrite(pwmChannel, pwmValue);

      Serial.print("PWM output = ");
      Serial.println(pwmValue);
    }
  }
};

void setup() {
  Serial.begin(115200);
  pinMode(M1, OUTPUT);
  pinMode(M2, OUTPUT);
  pinMode(LED_BUILTIN,OUTPUT);
  

  // Setup PWM
  //ledcSetup(pwmChannel, pwmFreq, pwmRes);
  //ledcAttachPin(pwmPin, pwmChannel);

  Serial.println("BLE RSSI Tracker starting...");

  BLEDevice::init("");
  BLEScan* scan = BLEDevice::getScan();
  scan->setAdvertisedDeviceCallbacks(new MyAdvertisedDeviceCallbacks());
  scan->setActiveScan(true);
  scan->setInterval(100);
  scan->setWindow(80);
}

void loop() {
  BLEScan* scan = BLEDevice::getScan();
  scan->start(1, false);   // Scan continuously (2-second cycles)
  scan->clearResults();

  // Timeout: If device not seen, fade PWM to 0
  static unsigned long lastSeen = millis();
  if (lastRSSI > -100) lastSeen = millis();

  if (millis() - lastSeen > 3000) {
    //ledcWrite(pwmChannel, 0);
    Serial.println("Device lost → PWM = 0");
    digitalWrite(LED_BUILTIN,HIGH);
  }
}