void setupWiFi(){

  WiFi.mode(WIFI_STA); // explicitly set mode, esp defaults to STA+AP 
    //reset settings - wipe credentials for testing
    //wm.resetSettings();

    wm.setConfigPortalBlocking(false);
    wm.setConfigPortalTimeout(60);
    //automatically connect using saved credentials if they exist
    //If connection fails it starts an access point with the specified name
    if(wm.autoConnect("AutoConnectAP")){
        Serial.println("connected...yeey :)");
    }
    else {
        Serial.println("Configportal running");
    }


  // Connect to WiFi network
  Serial.println();
  Serial.println("Configuring access point...");

  // You can remove the password parameter if you want the AP to be open.
  // a valid password must have more than 7 characters
  //if (!WiFi.softAP(ssid)) {
  //  log_e("Soft AP creation failed.");
  //  while (1)
  //    ;
  //}
  //IPAddress myIP = WiFi.softAPIP();
  IPAddress myIP = WiFi.localIP();
  Serial.print("IP address: ");
  Serial.println(myIP);
  Serial.println("Starting UDP");
  Udp.begin(localPort);

  Serial.print("Local port: ");
#ifdef ESP32
  Serial.println(localPort);
  Serial.print("Sending OSC messages to: ");
  Serial.print(outIp);
  Serial.print(" on port: ");
  Serial.println(outPort);
#else
  if(debug)Serial.println(Udp.localPort());
#endif
}