#!/bin/bash

 #Your Trip Confirmation #: HPPU66
#Manage My Trip
#
				#
#Sun, 31MAY	DEPART	ARRIVE
#DELTA 1772
#MAIN CABIN (H)
#PHOENIX
#1:15pm
#ATLANTA
#7:55pm
#DELTA 5022*
#MAIN CABIN (H)
#ATLANTA
#10:03pm
#WILMINGTON
#11:22pm

echo ==== fly Delta 1772 from Phoenix To Atlanta ====
  flt \
          "takeoff" "America/Phoenix" 2015 5 31 13 15 \
          "land" "America/New_York" 2015 5 31 19 55 \
          "America/Phoenix"

echo ==== Wait in Atlanta =====
  flt \
          "land" "America/New_York" 2015 5 31 19 55 \
          "takeoff" "America/New_York" 2015 5 31 22 3 \
          "America/Phoenix"

echo ==== fly Delta 5022 Atlanta \(ATL\) to Wilmington \(\) =====
  flt \
          "takeoff" "America/New_York" 2015 5 31 22 3 \
          "land" "America/New_York" 2015 5 31 23 22 \
          "America/Phoenix"

#Sat, 06JUN	DEPART	ARRIVE
#DELTA 4955*
#MAIN CABIN (K)
#WILMINGTON
#1:51pm
#ATLANTA
#3:20pm
#DELTA 1115
#MAIN CABIN (K)
#ATLANTA
#4:37pm
#PHOENIX
#5:37pm

echo ==== fly Delta 4955 Wilmington to Atlanta =====
  flt \
          "takeoff" "America/New_York" 2015 6 6 13 51 \
          "land" "America/New_York" 2015 6 6 15 20 \
          "America/Phoenix"

echo ==== Wait in Atlanta =====
  flt \
          "land" "America/New_York" 2015 6 6 15 20 \
          "takeoff" "America/New_York" 2015 6 6 16 37 \
          "America/Phoenix"

echo ==== fly Delta 1115 from Atlanta To Phoenix ====
  flt \
          "takeoff" "America/New_York" 2015 6 6 16 37 \
          "land" "America/Phoenix" 2015 6 6 17 37 \
          "America/Phoenix"

