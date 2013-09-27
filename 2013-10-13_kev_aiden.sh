#!/bin/bash

# AIR Itinerary
# AIR Confirmation: ZO8X9K
# Confirmation Date: 09/25/2013
# Passenger(s)
# GEISS/JAMES KEV
# GEISS/AIDEN JOS
# 
# Date
# Flight
# Departure/Arrival
# Sun Oct 13
# 425
# Depart DAYTON OH (DAY) on Southwest Airlines at 4:25 PM
# Arrive in DENVER CO (DEN) at 5:25 PM
 # 
# 3247
# Change planes to Southwest Airlines in DENVER CO (DEN) at 8:40 PM
# Arrive in PHOENIX AZ (PHX) at 9:40 PM
# Travel Time 8 hrs 15 mins

echo ==== fly from Dayton To Denver ====
  flt \
          "takeoff" "America/New_York" 2013 10 13 16 25 \
          "land" "America/Denver" 2013 10 13 17 25 \
          "America/Phoenix"

echo ==== fly from Denver To Phoenix ====
  flt \
          "takeoff" "America/Denver" 2013 10 13 20 40 \
          "land" "America/Phoenix" 2013 10 13 21 40 \
          "America/Phoenix"
