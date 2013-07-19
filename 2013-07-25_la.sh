#!/bin/bash
#
#AIR Itinerary
#AIR Confirmation: A4C5JG
#Passenger(s)
#GEISS/JAMES KEVIN
#
#Date
#Flight
#Departure/Arrival
#
#Thu Jul 25
#366
#Depart PHOENIX AZ (PHX) on Southwest Airlines at 09:00 AM
#Arrive in BURBANK CA (BUR) at 10:30 AM
#Travel Time 1 hrs 30 mins
#Business Select
#
#Fri Jul 26
#638
#Depart BURBANK CA (BUR) on Southwest Airlines at 4:35 PM
#Arrive in PHOENIX AZ (PHX) at 6:00 PM
#Travel Time 1 hrs 25 mins
#Business Select
#

echo ==== fly from Phoenix to Burbank ====
  flt \
          "takeoff" "America/Phoenix" 2013 7 25 9 0 \
          "land" "America/Los_Angeles" 2013 7 25 10 30 \
          "America/Phoenix"

echo ==== fly from Burbank to Phoenix ====
  flt \
          "takeoff" "America/Los_Angeles" 2013 7 26 16 35 \
          "land" "America/Phoenix" 2013 7 26 18 0 \
          "America/Phoenix"

