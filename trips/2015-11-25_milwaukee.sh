#!/bin/bash

#Confirmation Number: HQK7FS
#	
#Passenger
#Departure/Arrival
#Flight
#Date
#Joy Geiss
#James Geiss
#Elizabeth Geiss
#Depart Phoenix, AZ (PHX) on Southwest Airlines at 3:45 PM
#Arrive in Kansas City, MO (MCI) at 7:10 PM
##1852
#Wed Nov 25
#Travel Time
#7 h hours20 mminutes
#(1 stop,
#includes
#1 plane change)
#Joy Geiss
#James Geiss
#Elizabeth Geiss
#Change planes to Southwest Airlines in Kansas City, MO (MCI) at 10:40 PM
#Arrive in Milwaukee, WI (MKE) at 12:05 AM
##239
#Joy Geiss
#James Geiss
#Elizabeth Geiss
#Depart Milwaukee, WI (MKE) on Southwest Airlines at 5:25 PM
#Arrive in Phoenix, AZ (PHX) at 8:20 PM
##434
#Sun Nov 29
#Travel Time
#3 h hours55 mminutes


echo ==== fly Southwest 1852 from Phoenix To Kansas City ====
  flt \
          "takeoff" "America/Phoenix" 2015 11 25 15 45 \
          "land" "America/Chicago" 2015 11 25 19 10 \
          "America/Phoenix"

echo ==== Wait in Kansas City =====
  flt \
          "land" "America/Chicago" 2015 11 25 19 10 \
          "takeoff" "America/Chicago" 2015 11 25 22 40 \
          "America/Phoenix"

echo ==== fly Southwest 239 Kansas City to Milwaukee =====
  flt \
          "takeoff" "America/Chicago" 2015 11 25 22 40 \
          "land" "America/Chicago" 2015 11 26 0 5 \
          "America/Phoenix"

echo ==== fly Southwest 434 Milwaukee \(MKE\) to Phoenix =====
  flt \
          "takeoff" "America/Chicago" 2015 11 29 17 25 \
          "land" "America/Phoenix" 2015 11 29 20 20 \
          "America/Phoenix"
