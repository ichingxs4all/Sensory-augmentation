//Sensorbox V1.0
//AP mode. connect to 'sensorbox_1'

#include <WiFiManager.h> // https://github.com/tzapu/WiFiManager
WiFiManager wm;


#include <WiFi.h>
#include <WiFiAP.h>
#include <WiFiUdp.h>

#include <OSCMessage.h>
#include <OSCBundle.h>
#include <OSCData.h>

#include <WebServer.h>
#include <ElegantOTA.h> // Install ElegantOTA library through Library Manager

WebServer server(80);

unsigned long ota_progress_millis = 0;

char ssid[] = "sensorbox_1";  // your network SSID (name)
char pass[] = "m4k3s3ns!";    // your network password

// A UDP instance to let us send and receive packets over UDP
WiFiUDP Udp;

const IPAddress outIp(192, 168, 50, 255);  // remote IP 
const unsigned int outPort = 9998;      // remote port 
const unsigned int localPort = 8889;    // local port to listen for UDP packets (here's where we send the packets)

OSCErrorCode error;

unsigned int ledState = HIGH;  // LOW means led is *on*
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
int pattern = 1;
int preset = 0;
int sensora = 0;
int sensorb = 0;
int buttonState = 0;
int prev_buttonState = 0;

const int max_mode = 4;

int prev_mode, prev_level, prev_sensora, prev_sensorb;

int minValueSensorA = 0;
int maxValueSensorA = 4095;
int minValueSensorB = 0;
int maxValueSensorB = 4095;

int invA = false;
int invB = false;

int maxPWMA = 255;
int maxPWMB = 255;
int maxPWMC = 255;
int maxPWMD = 255;

bool sensorA_enable = false;
bool sensorB_enable = false;
bool knob_enable = true;

int setfilter_a = 10;
int setfilter_b = 10;

int spareA;
int spareB;

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

bool debug = true;

float version = 1.0;
String versionStr = "";

#include "MegunoLink.h"
#include "Filter.h"

// Create a new exponential filter with a weight of 10 and initial value of 0. 
ExponentialFilter<long> SENSORA_Filter(5, 0);
ExponentialFilter<long> SENSORB_Filter(5, 0);
ExponentialFilter<long> KNOB_Filter(5, 0);

#include <LittleFS.h>
/* TinyKey Library */
#include <TinyKeyValueStore.h>

#define PRESET_01   "/preset_02.txt" // filename must starts with "/"

TinyKeyValueStore store = TinyKeyValueStore(LittleFS);

int16_t presetBuffer[] = { 0,1,1,0,255,255,255,255,0,4095,0,4095,5,5};

#define KEY_1_MODE    "0"
#define KEY_2_LEVEL   "1"
#define KEY_3_PATTERN  "1"
#define KEY_4_POLARITY "0"
#define KEY_5_MAXPWMA "255"
#define KEY_6_MAXPWMB "255"
#define KEY_7_MAXPWMC "255"
#define KEY_8_MAXPWMD "255"
#define KEY_9_MINSENA "0"
#define KEY_10_MAXSENA "4095"
#define KEY_11_MINSENB "0"
#define KEY_12_MAXSENB "4095"
#define KEY_13_FILTERA "5"
#define KEY_14_FILTERB "5"


void setup() {
  Serial.begin(115200);
  versionConv();
  setupPins();
  setupRGB_Led();
  setupWiFi();
  startupOTA(); 
  //loadPreset(0);
}

void loop() {
  wm.process();
  checkOTA();
  readButton();
  readSensors();
  readOSC();
}
