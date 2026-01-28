
#include <WiFi.h>
#include <NetworkClient.h>
#include <WiFiAP.h>

// Set these to your desired credentials.
const char *ssid = "sensorbox";
const char *password = "m4k3s3ns!";

NetworkServer server(80);

#include <Adafruit_NeoPixel.h>
// Which pin on the Arduino is connected to the NeoPixels?
#define NEOPIXEL_LEDPIN        5 // On Trinket or Gemma, suggest changing this to 1
#define BUTTONPIN 0

#define KNOBPIN A6

#define SENSORA A4
#define SENSORB A5
#define SENSORC A7
#define SENSORD A3

#define LED_BUILTIN 23

#define POLARITY_PIN 4

#define PWMA 16
#define PWMB 17
#define PWMC 26
#define PWMD 27

int modus = 1; //Modus 1 = vibration , 2 = touch , 3 = warmth


// How many NeoPixels are attached to the Arduino?
#define NUMPIXELS 1 // Popular NeoPixel ring size

// When setting up the NeoPixel library, we tell it how many pixels,
// and which pin to use to send signals. Note that for older NeoPixel
// strips you might need to change the third parameter -- see the
// strandtest example for more information on possible values.
Adafruit_NeoPixel pixels(NUMPIXELS, NEOPIXEL_LEDPIN, NEO_GRB + NEO_KHZ800);

int r,g,b;

int minValue =0;
int  maxValue = 4095;

void setup() {

  Serial.begin(115200);
  pinMode(POLARITY_PIN,OUTPUT);
  digitalWrite(POLARITY_PIN,HIGH);
  analogWrite(PWMA,0);
  analogWrite(PWMB,0);
  analogWrite(PWMC,0);
  analogWrite(PWMD,0);
  pixels.begin(); // INITIALIZE NeoPixel strip object (REQUIRED)
  pixels.clear(); // Set all pixel colors to 'off'
  pixels.show();   // Send the updated pixel colors to the hardware.

  Serial.println();
  Serial.println("Configuring access point...");

  // You can remove the password parameter if you want the AP to be open.
  // a valid password must have more than 7 characters
  if (!WiFi.softAP(ssid, password)) {
    log_e("Soft AP creation failed.");
    while (1);
  }
  IPAddress myIP = WiFi.softAPIP();
  Serial.print("AP IP address: ");
  Serial.println(myIP);
  server.begin();

  Serial.println("Server started");
}

void loop() {
  NetworkClient client = server.accept();  // listen for incoming clients

  if (client) {                     // if you get a client,
    Serial.println("New Client.");  // print a message out the serial port
    String currentLine = "";        // make a String to hold incoming data from the client
    while (client.connected()) {    // loop while the client's connected
      if (client.available()) {     // if there's bytes to read from the client,
        char c = client.read();     // read a byte, then
        Serial.write(c);            // print it out the serial monitor
        if (c == '\n') {            // if the byte is a newline character

          // if the current line is blank, you got two newline characters in a row.
          // that's the end of the client HTTP request, so send a response:
          if (currentLine.length() == 0) {
            // HTTP headers always start with a response code (e.g. HTTP/1.1 200 OK)
            // and a content-type so the client knows what's coming, then a blank line:
            client.println("HTTP/1.1 200 OK");
            client.println("Content-type:text/html");
            client.println();

            // the content of the HTTP response follows the header:
            client.print("Click <a href=\"/H\">here</a> to turn ON the LED.<br>");
            client.print("Click <a href=\"/L\">here</a> to turn OFF the LED.<br>");

            // The HTTP response ends with another blank line:
            client.println();
            // break out of the while loop:
            break;
          } else {  // if you got a newline, then clear currentLine:
            currentLine = "";
          }
        } else if (c != '\r') {  // if you got anything else but a carriage return character,
          currentLine += c;      // add it to the end of the currentLine
        }

        // Check to see if the client request was "GET /H" or "GET /L":
        if (currentLine.endsWith("GET /H")) {
          digitalWrite(LED_BUILTIN, HIGH);  // GET /H turns the LED on
        }
        if (currentLine.endsWith("GET /L")) {
          digitalWrite(LED_BUILTIN, LOW);  // GET /L turns the LED off
        }
      }
    }
    // close the connection:
    client.stop();
    Serial.println("Client Disconnected.");
  }

  int max = analogRead(KNOBPIN)/16;

  if( digitalRead(BUTTONPIN)==LOW){

  r = random(max);
  g = random(max);
  b = random (max);
   pixels.setPixelColor(0, pixels.Color(r, g, b));
   pixels.show();
   digitalWrite(POLARITY_PIN,LOW);
 
  }
  
  int pwma = map(analogRead(SENSORA),minValue,maxValue,0,max);
  int pwmb = map(analogRead(SENSORB),minValue,maxValue,0,max);
  int pwmc = map(analogRead(SENSORC),minValue,maxValue,0,max);
  int pwmd = map(analogRead(SENSORD),minValue,maxValue,0,max);

  analogWrite(LED_BUILTIN, max);

  analogWrite(PWMA, pwma);
  analogWrite(PWMB, pwmb);
  analogWrite(PWMC, pwmc);
  analogWrite(PWMD, pwmd);

  digitalWrite(POLARITY_PIN,HIGH);

}
