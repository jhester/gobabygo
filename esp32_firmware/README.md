ESP32 Thing Based GoBabyGo! Firmware
=====

After difficulty deploying and programming SensorTiles we opted to go with the higher power but more feature rich ESP32.

Specifically this breakout board [SparkFun ESP32 Thing](https://www.sparkfun.com/products/13907). Which has a chip that allows BLE and Wifi connections along with decent performance and ease of programming using Arduino. 

We deploy with the [SparkFun ESP32 Thing Motion Shield](https://www.sparkfun.com/products/14430) connected to a [GPS Receiver - GP-20U7 (56 Channel)](https://www.sparkfun.com/products/13740).

Thie allows us to get GPS coordinates, very accurate global time, and IMU data for tracking movement. This is all stored to the USB. GPS updates once per second. IMU updates 10 times a second. Tested and can get a GPS lock indoors and when moved around it can map the movement. 

#### Function
1. Blue led pulses while trying to find a lock, and is solid blue when lock found.
2. The sd card can be taken out without corrupting data, but if inserted again, need to click the reset button and it will pick up from where it left off.
3. files only grow to a set size, then a new file is created for data, in the format of IMU_00001.txt, GPS_00001.txt, IMU_00002.txt and so on
4. the files are synchronized by a local timer which is the first column in each file, so all data can be aligned.
5. the GPS gives exact time (basically the standard time that everything else is set by). So even if a power failure happens we can always get the right time just by asking GPS.

#### Resources
1. [NMEA reference for GPS data](https://www.sparkfun.com/datasheets/GPS/NMEA%20Reference%20Manual-Rev2.1-Dec07.pdf)
2. [Motion breakout guide.](https://learn.sparkfun.com/tutorials/esp32-thing-motion-shield-hookup-guide)

#### TODO and Ideas

**Data Upload:** Use the BLE and Wifi together to create an in-wild auto data upload mechanism. The process would be:
1. Read network.txt SD card for Wifi info and attempt to authenticate with it if it exists.
2. If this file does not exist, OR the network is unavailable. Then go into BLE mode and listen for a connection. Also go about normal data collection.
3. If a connection is made in BLE mode, talk over UART and ask for Wifi SSID and password. Then connect and store it once found.

**Even easier. Have the participants or study coordinator make a file on the SD card with the SSID and password for the network and then the ESP32 will just connect to it.**

![esp 32 imag](https://cdn.sparkfun.com//assets/parts/1/1/5/6/4/13907-01.jpg)

---------


