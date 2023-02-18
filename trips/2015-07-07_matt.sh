#!/bin/bash

# Date
# Flight
# Departure/Arrival
# Tue Jul 7
# 677
# Depart Phoenix (PHX) on Southwest Airlines at 10:05 AM 
# Arrive in Philadelphia (PHL) at 05:45 PM
# 
# Wed Jul 22
# 4108
# Depart Philadelphia (PHL) on Southwest Airlines at 02:50 PM 
# Arrive in Phoenix (PHX) at 04:55 PM

echo ==== fly Southwest 677 from Phoenix to Philadelphia ====
  flt \
          "takeoff" "America/Phoenix" 2015 7 7 10 5 \
          "land" "America/New_York" 2015 7 7 17 45 \
          "America/Phoenix"

echo ==== fly Southwest 4108 from Philadelphia to Phoenix ====
  flt \
          "takeoff" "America/New_York" 2015 7 22 14 50 \
          "land" "America/Phoenix" 2015 7 22 16 55 \
          "America/Phoenix"
