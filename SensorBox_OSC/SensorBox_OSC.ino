/*---------------------------------------------------------------------------------------------

  Open Sound Control (OSC) library for the ESP8266/ESP32

  Example for receiving open sound control (OSC) messages on the ESP8266/ESP32
  Send integers '0' or '1' to the address "/led" to turn on/off the built-in LED of the esp8266.

  This example code is in the public domain.

--------------------------------------------------------------------------------------------- */
#ifdef ESP8266
#include <ESP8266WiFi.h>
#else
#include <WiFi.h>
#include <WiFiAP.h>
#endif
#include <WiFiUdp.h>
#include <OSCMessage.h>
#include <OSCBundle.h>
#include <OSCData.h>

char ssid[] = "sensorbox_1";  // your network SSID (name)
char pass[] = "m4k3s3ns!";    // your network password

// A UDP instance to let us send and receive packets over UDP
WiFiUDP Udp;

const IPAddress outIp(192, 168, 4, 2);  // remote IP (not needed for receive)
const unsigned int outPort = 9999;      // remote port (not needed for receive)
const unsigned int localPort = 8888;    // local port to listen for UDP packets (here's where we send the packets)


OSCErrorCode error;
unsigned int ledState = LOW;  // LOW means led is *on*
unsigned int pwma, pwmb, pwmc, pwmd;


#include <Adafruit_NeoPixel.h>
// Which pin on the Arduino is connected to the NeoPixels?
#define NEOPIXEL_LEDPIN 5  // On Trinket or Gemma, suggest changing this to 1

// How many NeoPixels are attached to the Arduino?
#define NUMPIXELS 1  // Popular NeoPixel ring size

// When setting up the NeoPixel library, we tell it how many pixels,
// and which pin to use to send signals. Note that for older NeoPixel
// strips you might need to change the third parameter -- see the
// strandtest example for more information on possible values.
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

  OSCMessage msg;
  int size = Udp.parsePacket();

  if (size > 0) {
    while (size--) {
      msg.fill(Udp.read());
    }
    if (!msg.hasError()) {
      msg.dispatch("/led", led);
      msg.dispatch("/polarity", polarity);
      msg.dispatch("/pwm_a", pwm_a);
      msg.dispatch("/pwm_b", pwm_b);
      msg.dispatch("/pwm_c", pwm_c);
      msg.dispatch("/pwm_d", pwm_d);
      msg.dispatch("/rgb", rgb);
      msg.dispatch("/mode", mode_set);
    } else {
      error = msg.getError();
      Serial.print("error: ");
      Serial.println(error);
    }
  }
}
