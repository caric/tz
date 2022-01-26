#!/bin/bash

# Louisville is America/Kentucky/Louisville
# Louisville International Airport is SDF

# Southwest Airlines (WN) 4616    
# Scheduled Departure: Louisville, KY (SDF), 9:15 AM, Feb 09    
# Scheduled Arrival: Phoenix, AZ (PHX), 11:30 AM, Feb 09    
# 
---------------    
# 
# Southwest Airlines (WN) 664    
# Scheduled Departure: Phoenix, AZ (PHX), 11:45 AM, Feb 19    
# Scheduled Arrival: Tulsa, OK (TUL), 3:05 PM, Feb 19    
# 
---------------    
# S
# Southwest Airlines (WN) 664    
# Scheduled Departure: Tulsa, OK (TUL), 3:45 PM, Feb 19    
# Scheduled Arrival: Dallas, TX (DAL), 4:55 PM, Feb 19    

# ---------------    

# Southwest Airlines (WN) 6923    
# Scheduled Departure: Dallas, TX (DAL), 6:00 PM, Feb 19    
# Scheduled Arrival: Louisville, KY (SDF), 8:55 PM, Feb 19  

echo ==== fly Southwest 4616 from Louisville to Phoenix ====
  flt \
          "takeoff" "America/Kentucky/Louisville" 2019 2 9 9 15 \
          "land" "America/Phoenix" 2019 2 9 11 30 \
          "America/Phoenix"

echo ==== fly Southwest 664 from Phoenix to Tulsa  ====
  flt \
          "takeoff" "America/Phoenix" 2019 2 19 11 45 \
          "land" "America/Chicago" 2019 2 19 15 5 \
          "America/Phoenix"

echo ==== Wait in Tulsa  ====
  flt \
          "land" "America/Chicago" 2019 2 19 15 5 \
          "takeoff" "America/Chicago" 2019 2 19 15 45 \
          "America/Phoenix"

echo ==== fly southwest 664 from Tulsa to Dallas ====
  flt \
          "takeoff" "America/Chicago" 2019 2 19 15 45 \
          "land" "America/Chicago" 2019 2 19 16 55 \
          "America/Phoenix"

echo ==== wait in Dallas ====
  flt \
          "land" "America/Chicago" 2019 2 19 16 55 \
          "takeoff" "America/Chicago" 2019 2 19 18 0 \
          "America/Phoenix"

echo ==== fly Southwest 6923 from Dallas to Louisville ====
  flt \
          "takeoff" "America/Chicago" 2019 2 19 18 0 \
          "land" "America/Kentucky/Louisville" 2019 2 19 20 55 \
          "America/Phoenix"
