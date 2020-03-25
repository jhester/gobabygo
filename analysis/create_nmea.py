#!/usr/bin/env python3

# combine all the valid GPS data into one file
# by Josiah Hester
# created 10/12/2019
import csv
import os
import sys
import natsort
import argparse
from argparse import RawTextHelpFormatter


parser = argparse.ArgumentParser(
    description='''
    This program converts GPS files recorded by the GoBabyGo! Tracker to 
    Google Earth compatible NMEA files, enabling interaction and inspection. 
    
    Developed by Josiah Hester <josiah@northwestern.edu>
    
    Example usage:

    >  ./map.py folder/where/files/are -o outputfile.nmea
''',
formatter_class=RawTextHelpFormatter
)
parser.add_argument("folder", help="specify folder where GPS files are", action="store")
parser.add_argument("-o", help="specify name of output KML file", action="store")
args = parser.parse_args()

# Setup KML file
#kml=simplekml.Kml()
outputfile = open(args.o, "w")

# get sorted list of GPS files 
for file in natsort.natsorted(os.listdir(args.folder)):
	if file.startswith("GPS_"):
		in_filepath = os.path.join(args.folder, file)
		
		validrows = 0
		# load GPS data and skip first invalid rows
		inputfile = csv.reader(open(in_filepath,'r'))
		for row in inputfile:
			if len(row) == 14 and row[3] == 'A':
				# $GPRMC,161229.487,A,3723.2475,N,12158.3416,W,0.13,309.62,120598, ,*10
				#kml.newpoint(name=row[2], coords=[(row[4],row[6])])
				outputfile.write(",".join(row[1:]))
				outputfile.write('\n');
				validrows=validrows+1
		print(in_filepath, "valid rows=", validrows)

# finished processing all files now save the KML
#kml.save(args.o)
outputfile.close()