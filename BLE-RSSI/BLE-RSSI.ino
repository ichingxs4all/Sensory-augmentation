#include <BLEDevice.h>

class MyAdvertisedDeviceCallbacks : public BLEAdvertisedDeviceCallbacks {
  void onResult(BLEAdvertisedDevice advertisedDevice) {
    Serial.print("Device found: ");
    Serial.println(advertisedDevice.toString().c_str());

    // Get RSSI (signal strength)
    int rssi = advertisedDevice.getRSSI();
    Serial.print("  RSSI: ");
    Serial.print(rssi);
    Serial.println(" dBm");
  }
};

void setup() {
  Serial.begin(115200);
  Serial.println("Starting BLE scan...");

  BLEDevice::init("");   // Initialize BLE
  BLEScan* scan = BLEDevice::getScan();
  scan->setAdvertisedDeviceCallbacks(new MyAdvertisedDeviceCallbacks());
  scan->setActiveScan(true);   // Active scan gives more info, but uses more power
  scan->setInterval(100);
  scan->setWindow(80);
}

void loop() {
  BLEScan* scan = BLEDevice::getScan();
  scan->start(5, false);  // Scan for 5 seconds
  scan->clearResults();   // Free memory
  delay(2000);
}
