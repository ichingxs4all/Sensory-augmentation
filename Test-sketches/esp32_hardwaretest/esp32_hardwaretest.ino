#include <Adafruit_NeoPixel.h>
// Which pin on the Arduino is connected to the NeoPixels?
#define LEDPIN        5 // On Trinket or Gemma, suggest changing this to 1
#define BUTTONPIN 0
#define KNOBPIN A6
#define LED_BUILTIN 23

// How many NeoPixels are attached to the Arduino?
#define NUMPIXELS 1 // Popular NeoPixel ring size

// When setting up the NeoPixel library, we tell it how many pixels,
// and which pin to use to send signals. Note that for older NeoPixel
// strips you might need to change the third parameter -- see the
// strandtest example for more information on possible values.
Adafruit_NeoPixel pixels(NUMPIXELS, LEDPIN, NEO_GRB + NEO_KHZ800);

int r,g,b;

void setup() {

  Serial.begin(115200);
  pixels.begin(); // INITIALIZE NeoPixel strip object (REQUIRED)
  pixels.clear(); // Set all pixel colors to 'off'
  pixels.show();   // Send the updated pixel colors to the hardware.
}

void loop() {
  if( digitalRead(BUTTONPIN)==LOW){
  r = random(255);
  g = random(255);
  b = random (255);
   pixels.setPixelColor(0, pixels.Color(r, g, b));
   pixels.show();
  }
  analogWrite(LED_BUILTIN, analogRead(KNOBPIN)/16);
  
}
