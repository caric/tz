#!/bin/bash

#Air itinerary
#AIR Confirmation: RMKOZ4
#Date
#Flight
#Departure/Arrival
#Wed Jan 13
#2673
#Depart PHOENIX, AZ (PHX) on Southwest Airlines at 5:00 PM
    #Stops: 	
#Denver, CO
#Arrive in ST. LOUIS, MO (STL) at 10:30 PM
#Travel Time 4 hrs 30 mins
#Wanna Get Away
#
#Date
#Flight
#Departure/Arrival
#Fri Jan 15
#1193
#Depart ST. LOUIS, MO (STL) on Southwest Airlines at 06:30 AM
#Arrive in DALLAS (LOVE FIELD), TX (DAL) at 08:20 AM
#Wanna Get Away
 #
#968
#Change planes to Southwest Airlines in DALLAS (LOVE FIELD), TX (DAL) at 09:15 AM
#Arrive in PHOENIX, AZ (PHX) at 10:55 AM
#Travel Time 5 hrs 25 mins
#Wanna Get Away
#

echo ==== fly from Phoenix To Denver SW2673 ====
  flt \
          "takeoff" "America/Phoenix" 2016 1 13 17 00 \
          "land" "America/Denver" 2016 1 13 18 45 \
          "America/Phoenix"

echo ==== wait in Denver SW2673 ====
  flt \
          "land" "America/Denver" 2016 1 13 18 45 \
          "takeoff" "America/Denver" 2016 1 13 19 35 \
          "America/Phoenix"

echo ==== fly from Denver to St. Louis SW2673 ====
  flt \
          "takeoff" "America/Denver" 2016 1 13 19 35 \
          "land" "America/Chicago" 2016 1 13 22 30 \
          "America/Phoenix"

echo ==== fly from St. Louis To Dallas SW1193 ====
  flt \
          "takeoff" "America/Chicago" 2016 1 15 6 30 \
          "land" "America/Chicago" 2016 1 15 8 20 \
          "America/Phoenix"

echo ==== wait in Dallas SW968 ====
  flt \
          "land" "America/Chicago" 2016 1 15 8 20 \
          "takeoff" "America/Chicago" 2016 1 15 9 15 \
          "America/Phoenix"

echo ==== fly from dallas to phoenix SW968 ====
  flt \
          "takeoff" "America/Chicago" 2016 1 15 9 15 \
          "land" "America/Phoenix" 2016 1 15 10 55 \
          "America/Phoenix"

