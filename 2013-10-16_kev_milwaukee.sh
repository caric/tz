#!/bin/bash

# AIR Itinerary
# AIR Confirmation: ZU8WL7
# Passenger(s)
# GEISS/JAMES KEV
# 
# Date
# Flight
# Departure/Arrival
# Wed Oct 16
# 2519
# Depart PHOENIX AZ (PHX) on Southwest Airlines at 4:40 PM
# Arrive in MILWAUKEE WI (MKE) at 10:00 PM
# Travel Time 3 hrs 20 mins

echo ==== fly 2519 from Phoenix To Milwaukee ====
  flt \
          "takeoff" "America/Phoenix" 2013 10 16 16 40 \
          "land" "America/Chicago" 2013 10 16 22 00 \
          "America/Phoenix"

