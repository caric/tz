#!/bin/bash

# Alex's itinerary is as follows:
# March 29th - departs on US Airways Flight 510 departing at 10:35 am arriving in Phoenix at 12:26 pm
# April 4th - departs on US Airways Flight 582 departing at 10:10 am arriving in Milwaukee at 3:32 pm 
# 

echo ==== fly from Milwaukee To Phoenix ====
  flt \
          "takeoff" "America/Chicago" 2014 3 29 10 35 \
          "land" "America/Phoenix" 2014 3 29 12 26 \
          "America/Phoenix"

echo ==== fly from Phoenix To Milwaukee ====
  flt \
          "takeoff" "America/Phoenix" 2014 4 4 10 10 \
          "land" "America/Chicago" 2014 4 4 15 32 \
          "America/Phoenix"

