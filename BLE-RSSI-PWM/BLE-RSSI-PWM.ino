#include <BLEDevice.h>

String targetMAC = "AA:BB:CC:DD:EE:FF";   // ← change to your BLE device MAC
int pwmPin = 5;                           // PWM output pin
int pwmChannel = 0;
int pwmFreq = 5000;
int pwmRes = 8;                           // 8-bit (0–255)

int lastRSSI = -100;

class MyAdvertisedDeviceCallbacks : public BLEAdvertisedDeviceCallbacks {
  void onResult(BLEAdvertisedDevice advertisedDevice) {
    if (advertisedDevice.getAddress().toString() == targetMAC) {

      int rssi = advertisedDevice.getRSSI();
      lastRSSI = rssi;

      Serial.print("Target RSSI: ");
      Serial.println(rssi);

      // Convert RSSI (-100 to -30 dBm) → PWM (0 to 255)
      int pwmValue = map(rssi, -100, -30, 0, 255);
      pwmValue = constrain(pwmValue, 0, 255);

      ledcWrite(pwmChannel, pwmValue);

      Serial.print("PWM output = ");
      Serial.println(pwmValue);
    }
  }
};

void setup() {
  Serial.begin(115200);

  // Setup PWM
  ledcSetup(pwmChannel, pwmFreq, pwmRes);
  ledcAttachPin(pwmPin, pwmChannel);

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
  scan->start(2, false);   // Scan continuously (2-second cycles)
  scan->clearResults();

  // Timeout: If device not seen, fade PWM to 0
  static unsigned long lastSeen = millis();
  if (lastRSSI > -100) lastSeen = millis();

  if (millis() - lastSeen > 3000) {
    ledcWrite(pwmChannel, 0);
    Serial.println("Device lost → PWM = 0");
  }
}