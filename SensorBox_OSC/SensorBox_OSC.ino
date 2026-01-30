#include <WiFi.h>
#include <WiFiAP.h>
#include <WiFiUdp.h>
#include <OSCMessage.h>
#include <OSCBundle.h>
#include <OSCData.h>

char ssid[] = "sensorbox_1";  // your network SSID (name)
char pass[] = "m4k3s3ns!";    // your network password

// A UDP instance to let us send and receive packets over UDP
WiFiUDP Udp;

const IPAddress outIp(192, 168, 4, 2);  // remote IP 
const unsigned int outPort = 9999;      // remote port 
const unsigned int localPort = 8888;    // local port to listen for UDP packets (here's where we send the packets)


OSCErrorCode error;
unsigned int ledState = LOW;  // LOW means led is *on*
unsigned int pwma, pwmb, pwmc, pwmd;


#include <Adafruit_NeoPixel.h>
// Which pin on the ESP32 is connected to the NeoPixels?
#define NEOPIXEL_LEDPIN 5  

// How many NeoPixels are attached to the ESP32?
#define NUMPIXELS 1  // Popular NeoPixel ring size

Adafruit_NeoPixel pixels(NUMPIXELS, NEOPIXEL_LEDPIN, NEO_GRB + NEO_KHZ800);

int r, g, b;
int mode = 0;
int polarity_state = 0;
int level = 0;
int sensora = 0;
int sensorb = 0;
int buttonState = 0;
int prev_buttonState = 0;

const int max_mode = 4;

int prev_mode, prev_level, prev_sensora, prev_sensorb;

int minValue = 0;
int maxValue = 4095;

bool sensorA_enable = true;
bool sensorB_enable = false;

#define BUTTON_PIN 0
#define POLARITY_PIN 4

#define KNOBPIN A6

#define SENSORA A4
#define SENSORB A5
#define SENSORC A7
#define SENSORD A3

#define LED_BUILTIN 23
#define PWMA 27
#define PWMB 26
#define PWMC 16
#define PWMD 17

bool debug = false;

#include "MegunoLink.h"
#include "Filter.h"

// Create a new exponential filter with a weight of 10 and initial value of 0. 
ExponentialFilter<long> SENSORA_Filter(5, 0);
ExponentialFilter<long> SENSORB_Filter(5, 0);
ExponentialFilter<long> SENSORC_Filter(5, 0);
ExponentialFilter<long> SENSORD_Filter(5, 0);
ExponentialFilter<long> KNOB_Filter(5, 0);

void setup() {
  if (debug) Serial.begin(115200);
  setupPins();
  setupRGB_Led();
  setupWiFi();
}

void loop() {
  readButton();
  readSensors();
  readOSC();
}
