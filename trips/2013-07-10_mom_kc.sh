#!/bin/bash

# AIR Itinerary
# AIR Confirmation: AMJJDF
# Passenger(s)
# GEISS/NORMA E
#
# Date
# Flight
# Departure/Arrival
# Wed Jul 10
# 559
# Depart KANSAS CITY INTL (MCI) at 06:05 AM on Southwest Airlines
# Arrive in PHOENIX AZ (PHX) at 06:50 AM
# Travel Time 2 hrs 45 mins
#
# Wed Jul 17
# 849
# Depart PHOENIX AZ (PHX) at 6:40 PM on Southwest Airlines
# Arrive in KANSAS CITY INTL (MCI) at 11:10 PM
# Travel Time 2 hrs 30 mins
# 

echo ==== fly from KC To Phoenix ====
  flt \
          "takeoff" "America/Chicago" 2013 7 10 6 5 \
          "land" "America/Phoenix" 2013 7 10 6 50 \
          "America/Phoenix"

echo ==== fly from Phoenix To KC ====
  flt \
          "takeoff" "America/Phoenix" 2013 7 17 18 40 \
          "land" "America/Chicago" 2013 7 17 23 10 \
          "America/Phoenix"
