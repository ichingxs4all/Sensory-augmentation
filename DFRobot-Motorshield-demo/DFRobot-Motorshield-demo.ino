//Arduino PWM Speed Control：
//int E1 = 5; //gpio16
//int M1 = 4; //gpio17
//int E2 = 6; //gpio27
//int M2 = 7; //gpio14

int E1 = 16; //gpio16
int M1 = 17; //gpio17
int E2 = 27; //gpio27
int M2 = 14; //gpio14

void setup()
{
    pinMode(M1, OUTPUT);
    pinMode(M2, OUTPUT);
}

void loop()
{
  int value;
  for(value = 0 ; value <= 50; value+=5)
  {
    digitalWrite(M1,HIGH);
    digitalWrite(M2, HIGH);
    analogWrite(E1, value);   //PWM Speed Control
    analogWrite(E2, value);   //PWM Speed Control
    delay(30);
  }
}