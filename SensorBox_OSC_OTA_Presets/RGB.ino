void setupRGB_Led(){
  pixels.begin();  // INITIALIZE NeoPixel strip object (REQUIRED)
  pixels.clear();  // Set all pixel colors to 'off'
  pixels.show();   // Send the updated pixel colors to the hardware.
}

void setRGB_Mode( int mode){
  switch (mode) {
  case 1:
  set_RGB_Led(255,255,255);
  break;

  case 2:
  set_RGB_Led(255,0,0);
  break;

  case 3:
  set_RGB_Led(0,255,0);
  break;

  case 4:
  set_RGB_Led(0,0,255);
  break;

  default:
  set_RGB_Led(0,0,0);
  break;

  }
}

void set_RGB_Led( int r , int g, int b){
  pixels.setPixelColor(0, pixels.Color(r, g, b));
  pixels.show();

}