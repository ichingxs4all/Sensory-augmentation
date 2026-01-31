void readButton(){
  buttonState = digitalRead(BUTTON_PIN);

  if( buttonState != prev_buttonState ){
    if (buttonState == LOW){

    mode++;
    if(mode > max_mode) mode = 0;
    setMODUS(mode);
    sendMode(mode);
  }
  }
  prev_buttonState = buttonState;
}
