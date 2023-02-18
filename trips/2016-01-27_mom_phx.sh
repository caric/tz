#!/bin/bash

# Date
# Flight
# Departure/Arrival
# Wed Jan 27
# 1826
# Depart KANSAS CITY, MO (MCI) on Southwest Airlines at 4:15 PM
# Arrive in PHOENIX, AZ (PHX) at 6:10 PM
# Travel Time 2 hrs 55 mins
# Wanna Get Away
# Image removed by sender.
# Date
# Flight
# Departure/Arrival
# Mon Feb 1
# 2540
# Depart PHOENIX, AZ (PHX) on Southwest Airlines at 7:45 PM
# Arrive in KANSAS CITY, MO (MCI) at 11:20 PM
# Travel Time 2 hrs 35 mins
# Wanna Get Away

echo ==== fly from KC To Phoenix SW1826 ====
  flt \
          "takeoff" "America/Chicago" 2016 1 27 16 15 \
          "land" "America/Phoenix" 2016 1 27 18 10 \
          "America/Phoenix"

echo ==== fly from Phoenix To KC SW2540 ====
  flt \
          "takeoff" "America/Phoenix" 2016 2 1 19 45 \
          "land" "America/Chicago" 2016 2 1 23 20 \
          "America/Phoenix"
