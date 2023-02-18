#!/bin/bash

# AIR Confirmation: ZOG3IE
# Passenger(s)
# BENTH/CANDICE L
# 
# GATLIN/ERIC D
#
# Date
# Flight
# Departure/Arrival
# Fri Jan 17
# 625
# Depart KANSAS CITY, MO (MCI) on Southwest Airlines at 1:35 PM
# Arrive in PHOENIX, AZ (PHX) at 3:35 PM
# Travel Time 3 hrs 0 mins
# 
# Mon Jan 20
# 3235
# Depart PHOENIX, AZ (PHX) on Southwest Airlines at 5:50 PM
# Arrive in KANSAS CITY, MO (MCI) at 9:25 PM
# Travel Time 2 hrs 35 mins

echo ==== fly from KC To Phoenix ====
  flt \
          "takeoff" "America/Chicago" 2014 1 17 13 35 \
          "land" "America/Phoenix" 2014 1 17 15 35 \
          "America/Phoenix"

echo ==== fly from Phoenix To KC ====
  flt \
          "takeoff" "America/Phoenix" 2014 1 20 17 50 \
          "land" "America/Chicago" 2014 1 20 21 25 \
          "America/Phoenix"
