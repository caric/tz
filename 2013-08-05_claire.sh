#!/bin/bash

# AIR Itinerary
# AIR Confirmation: A5JP8D
# Passenger(s)
# DWINELL/CLAIRE K
#
# Date
# Flight
# Departure/Arrival
# Mon Aug 5
# 404
# Depart MILWAUKEE WI (MKE) on Southwest Airlines at 06:50 AM
# Arrive in PHOENIX AZ (PHX) at 08:25 AM
# Travel Time 3 hrs 35 mins
#
# Sun Aug 11
# 3860
# Depart PHOENIX AZ (PHX) on Southwest Airlines at 4:10 PM
# Arrive in MILWAUKEE WI (MKE) at 9:25 PM
# Travel Time 3 hrs 15 mins

echo ==== fly from Milwaukee To Phoenix ====
  flt \
          "takeoff" "America/Chicago" 2013 8 5 6 50 \
          "land" "America/Phoenix" 2013 8 5 8 25 \
          "America/Phoenix"

echo ==== fly from Phoenix To Milwaukee ====
  flt \
          "takeoff" "America/Phoenix" 2013 8 11 16 10 \
          "land" "America/Chicago" 2013 8 11 21 25 \
          "America/Phoenix"

