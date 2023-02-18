#!/bin/bash

# AIR Itinerary
# AIR Confirmation: 8W832O
# Confirmation Date: 05/4/2015
# Passenger(s)
# Rapid Rewards #
# Ticket #
# Expiration
# Est. Points Earned
# GEISS/NORMA ELLEN
# 353265242
# 5262105748250
# May 3, 2016
# 2047
# 
# Date
# Flight
# Departure/Arrival
# Wed May 20
# 826
# Depart KANSAS CITY, MO (MCI) on Southwest Airlines at 12:45 PM
# Arrive in PHOENIX, AZ (PHX) at 1:35 PM
# Travel Time 2 hrs 50 mins
# Wanna Get Away
# 
# Tue May 26
# 3316
# Depart PHOENIX, AZ (PHX) on Southwest Airlines at 7:20 PM
# Arrive in KANSAS CITY, MO (MCI) at 11:50 PM
# Travel Time 2 hrs 30 mins

echo ==== fly from KC To Phoenix ====
  flt \
          "takeoff" "America/Chicago" 2015 5 20 12 45 \
          "land" "America/Phoenix" 2015 5 20 13 35 \
          "America/Phoenix"

echo ==== fly from Phoenix To KC ====
  flt \
          "takeoff" "America/Phoenix" 2015 5 26 19 20 \
          "land" "America/Chicago" 2015 5 26 23 50 \
          "America/Phoenix"
