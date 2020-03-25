GoBabyGo Project Repository
=====

This repo holds the firmware, software, hardware, and other files fort the GoBabyGo utilization project.


#### Visualize Data with Google Earth

Use the `create_nmea.py` script in the `analysis` folder to convert gathered GPS data into a single [NMEA file](https://www.gpsworld.com/what-exactly-is-gps-nmea-data/) which can be dragged into [Google Earth Pro (free)](https://www.google.com/earth/versions/#earth-pro), the desktop app.

To do this you need Python, once installed run the following in a command prompt or in a terminal where you specify the path to all the data and then specify the name of the NMEA file:

```
python create_nmea.py folder/where/files/are -o outputfile.nmea
```

If you import only tracks, it renders faster  but you dont get each value. If you import the LineStrings then it shows every value and also shows direction and time which is nice.

This could be trimmed down to show per day possibly.