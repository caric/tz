#!/bin/bash

# Louisville is America/Kentucky/Louisville
# Louisville International Airport is SDF

#Southwest Airlines (WN) 1874	
#Scheduled Departure: Louisville, KY (SDF), 6:10 AM, Mar 28	
#Scheduled Arrival: Phoenix, AZ (PHX), 7:10 AM, Mar 28	
#
#---------------	
#
#Southwest Airlines (WN) 1796
#Scheduled Departure: Phoenix, AZ (PHX), 10:20 AM, Apr 04
#Scheduled Arrival: Louisville, KY (SDF), 4:45 PM, Apr 04

echo ==== fly Southwest 1874 from Louisville to Phoenix ====
  flt \
          "takeoff" "America/Kentucky/Louisville" 2019 3 28 6 10 \
          "land" "America/Phoenix" 2019 3 28 7 10 \
          "America/Phoenix"

echo ==== fly Southwest 1796 from Phoneix to Louisville ====
  flt \
          "takeoff" "America/Phoenix" 2019 4 4 10 20 \
          "land" "America/Kentucky/Louisville" 2019 4 4 16 45 \
          "America/Phoenix"

