# Gps-tracker with map tracking via bluetooth
A simple and reliable GPS tracker with LoraWan boards.

# Description
The transmitter uses a simple GPS module and has about 30 hours of battery life. The receiver includes a “find” button that activates a small buzzer and permanently stores the last known location from the most recent communication.
It’s very useful for locating an airplane without relying on GSM. I know there are plenty of commercial solutions out there, but this one perfectly covers our needs in case of loss.

# Target Frames  
Fpv planes, drones, cars  etc. 

# Hardware Needed
1. Lora 32 - V3 (heltec Board) X2 .
2. Any GPS module with Nmea protocol.
3. A single Buzzer.(optional)
4. A lipo battery 1 cell (1000 up to 2000 mah).(optional)
5. A plastic case.

# Connections
1. Receiver.
   
   1. No connections needed.
   Power up with usb type C small power bank, flash lora board with receiver file and you are done !

3. Sender.
   
   1. Connect GPS TX pin to PIN 20 of the lora board.
   2. Connect also GPS ground and Vcc to ground and Vcc of the lora board.
   3. Connect BUZZER to PIN 36 of the lora board.
   Power up with usb type C small power bank or one cell lipo (3.7 Volts), flash lora board with sender file and you are done !
   <img width="600" height="600" alt="3-1536x2048" src="https://github.com/user-attachments/assets/9a2203cd-7577-4f5f-bf55-153d5cbcd559" />

   
# How to install
1. Download all files and extract them to a single directory. For example C:\\gps_tracker.
2. Double click Upload Receiver_File_433.bat for receiver board. This will flash Receiver board.
3. Double click Upload Sender_File_433.bat for the sender board. This will flash Sender board.


# What to expect
Receiver:
Displays the latitude and longitude of the sender unit once a GPS fix has been acquired.
Coordinates remain stored and visible even if the battery is depleted.
Screen additionally shows RSSI, SNR, and frequency error.
The onboard LED blinks whenever a signal is received.
Visit https://kostaslbc.github.io/ESP32GPSMap/ with your android google chrome explorer and connect to see live map data !

Sender
Transmits GPS coordinates whenever the location changes.
Holding the onboard PRG button for more than 5 seconds triggers the receiver to activate its buzzer, producing a siren for 30 seconds.

Max distance achieved (at 300 m altitude) → 16km. 

# Working Frequency
 Working frequency is 433 Mhz (other frequencies by request) 

# Bands 
 1. 868 MHz → (Europe) 
 2. 915 MHz family (902–928 MHz) → USA, Canada, AU, NZ, LATAM, China, India, South Africa → 100 mW licence-free is OK.
 3. 433 MHz (please check your local regulations)

# Photos
![IMG_20250905_181709-EDIT](https://github.com/user-attachments/assets/d7cca124-4c34-4698-9a94-eae1d5b39b18)
![IMG_20250905_181648-EDIT (1)](https://github.com/user-attachments/assets/7f6fa0d4-9617-4ab7-aeae-7e8fdeb4b9ca)


The receiver should be powered by a small usb type C powerbank.

The sender can be powered with power bank and/or by an external single lipo cell (3.7 Volt).
More than 20 hours should be expected with 1200-1500 mah battery.
When connected by usb powerbank the battery will also be charged.



