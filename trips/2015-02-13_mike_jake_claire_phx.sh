#!/bin/bash

# AIR Itinerary
# Passenger(s)
# DWINELL/CLAIRE K
# Jacob
# Mike

echo ==== fly from Milwaukee To Phoenix Southwest flight 144 ====
  flt \
          "takeoff" "America/Chicago" 2015 2 13 17 10 \
          "land" "America/Phoenix" 2015 2 13 20 5 \
          "America/Phoenix"

echo ==== fly from Phoenix To Milwaukee Southwest flight 186 ====
  flt \
          "takeoff" "America/Phoenix" 2015 2 16 16 35 \
          "land" "America/Chicago" 2015 2 16 20 50 \
          "America/Phoenix"

