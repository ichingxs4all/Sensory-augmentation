#define LED_BUILTIN 23
#define PELTIERA 16
#define PELTIERB 17
#define POTPIN A0

int value;

void setup() {
  // put your setup code here, to run once:
 Serial.begin(115200);
}

void loop() {
  value = analogRead(POTPIN);
  Serial.println(value);
  // put your main code here, to run repeatedly:
  value = map(analogRead(POTPIN), 0, 4095 , 0, 255 );
  analogWrite(LED_BUILTIN, value);
  analogWrite(PELTIERA, value);
  analogWrite(PELTIERB, value);
  delay(20);
}
