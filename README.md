# Gps-tracker
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
   
   1.No connections needed.
   Power up with usb type C small power bank, flash lora board with receiver file and you are done !

3. Sender.
   
   1. Connect GPS TX pin to PIN 20 of the lora board.
   2. Connect also GPS ground and Vcc to ground and Vcc of the lora board.
   3. Connect BUZZER to PIN 36 of the lora board.
   Power up with usb type C small power bank or one cell lipo (3.7 Volts), flash lora board with sender file and you are done !
   

   
# How to install
1. Download all files and extract them to a single directory. For example C:\\gps_tracker.
2. Double click Upload Receiver_File_433.bat for receiver board. This will flash Receiver board.
3. Double click Upload Sender_File_433.bat for the sender board. This will flash Sender board.

# What to expect.
Receiver:
The receiver shows The Latitude and Longitude of the sender board as soon as gps has locked postion.
These values retain even if the battery is depleted.
The screen also shows Rssi, SNR and Frequency error.
The on board led blinks when a signal is received.

Sender:
The gps values are send when change location happens.
When the on board PRG button is pressed for more than 5 seconds the receiver will start siren via
the buzzer for 30 seconds.



# Photos
![IMG_20250905_181709-EDIT](https://github.com/user-attachments/assets/d7cca124-4c34-4698-9a94-eae1d5b39b18)
![IMG_20250905_181648-EDIT](https://github.com/user-attachments/assets/d6fae479-c530-49b8-bfaa-dd7ed57d7808)

The receiver should be powered by a small usb type C powerbank.

The sender can be powered by power bank or/and by an external single cell lipo (3.7 Volt).
More than 20 hours should be expected with 1200-1500 mah lipo cell.
When connected by usb powerbank the battery will also be charged.



