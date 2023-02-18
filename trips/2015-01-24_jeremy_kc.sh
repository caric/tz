#!/bin/bash


	
	
	
#	Carrier	Flight #	Departing	Arriving	Fare Code
#	
#	carrier
#American 
#2969 	CINCINNATI  
#SAT 24JAN
#8:30 AM	CHICAGO OHARE  
#
#9:09 AM	Q
#		
#OPERATED BY ENVOY AIR AS AMERICAN EAGLE
#  CHECK-IN WITH AMERICAN EAGLE
#	Jeremy Geiss 	Seat 10A 	Economy	 	Food For Purchase
#	
#	carrier
#American Airlines 
#4379 	CHICAGO OHARE  
##SAT 24JAN
#11:40 AM	KANSAS CITY INTL  
#
#1:13 PM	O
#		
#OPERATED BY REPUBLIC AIRLINES AS AMERICAN EAGLE
#  CHECK-IN WITH AMERICAN EAGLE
#	Jeremy Geiss 	Seat 20C 	Economy	 	Food For Purchase
#	
#	carrier
#American Airlines 
#4324 	KANSAS CITY INTL  
#THU 29JAN
#11:43 AM	CHICAGO OHARE  
#
#1:20 PM	N
#		
#OPERATED BY REPUBLIC AIRLINES AS AMERICAN EAGLE
#  CHECK-IN WITH AMERICAN EAGLE
#	Jeremy Geiss 	Seat 16C 	Economy	 	Food For Purchase
#	
#	carrier
#American 
#3274 	CHICAGO OHARE  
#THU 29JAN
#3:30 PM	CINCINNATI  
#
#5:36 PM	N
#		
##OPERATED BY ENVOY AIR AS AMERICAN EAGLE
#  CHECK-IN WITH AMERICAN EAGLE
#	Jeremy Geiss 	Seat 11C 	Economy	 	Food For Purchase
	
#
echo ==== fly American 2969 from Cincinnati To Chicago Ohare \(\) ====
  flt \
          "takeoff" "America/New_York" 2015 1 24 8 30 \
          "land" "America/Chicago" 2015 1 24 9 9 \
          "America/Phoenix"

echo ==== Wait in Chicago =====
  flt \
          "land" "America/Chicago" 2015 1 24 9 9 \
          "takeoff" "America/Chicago" 2015 1 24 11 40 \
          "America/Phoenix"

echo ==== fly American 4379 Chicago/O\'hare to Kansas City \(MCI\) =====
  flt \
          "takeoff" "America/Chicago" 2015 1 24 11 40 \
          "land" "America/Chicago" 2015 1 24 13 13 \
          "America/Phoenix"

echo ==== fly American 4324 Kansas City to Chicago O\'hare =====
  flt \
          "takeoff" "America/Chicago" 2015 1 29 11 43 \
          "land" "America/Chicago" 2015 1 29 13 20 \
          "America/Phoenix"

echo ==== fly American 3274 Chicago O\'hare to Cincinnati =====
  flt \
          "takeoff" "America/Chicago" 2015 1 29 15 30 \
          "land" "America/New_York" 2015 1 29 17 36 \
          "America/Phoenix"

