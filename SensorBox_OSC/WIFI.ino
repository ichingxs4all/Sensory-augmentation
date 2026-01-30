void setupWiFi(){
  // Connect to WiFi network
  if(debug){
  Serial.println();
  Serial.println("Configuring access point...");
  }

  // You can remove the password parameter if you want the AP to be open.
  // a valid password must have more than 7 characters
  if (!WiFi.softAP(ssid)) {
    log_e("Soft AP creation failed.");
    while (1)
      ;
  }
  IPAddress myIP = WiFi.softAPIP();
  if(debug){
  Serial.print("AP IP address: ");
  Serial.println(myIP);
  Serial.println("Starting UDP");
  }
  Udp.begin(localPort);

  if(debug)Serial.print("Local port: ");
#ifdef ESP32
  if(debug)Serial.println(localPort);
#else
  if(debug)Serial.println(Udp.localPort());
#endif
}