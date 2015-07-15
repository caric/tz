#!/bin/bash

# Louisville is America/Kentucky/Louisville
# Louisville International Airport is SDF

# Jul 10, 2015 - Departure 1 stop	Total travel time:6 h 4 m
# custom air icon	Louisville	Denver	2 h 53 m
# 1,033 mi
# SDF  5:21pm	DEN  6:14pm  	 
# United  3352 Operated by /TRANS STATES AIRLINES DBA UNITED EXPRESS
# Economy / Coach (L) | Confirm seats with the airline *
# Layover: 1 h 15 m
# custom air icon	Denver	Phoenix	1 h 56 m
# 590 mi
# DEN  7:29pm	PHX  8:25pm  
# Terminal 2
 # 
# United  594
# Economy / Coach (L) | Confirm seats with the airline *
# Jul 18, 2015 - Return 1 stop	Total travel time:5 h 50 m
# custom air icon	Phoenix	Houston	2 h 35 m
# 1,013 mi
# PHX  5:00am
# Terminal 2
# IAH  9:35am  
# Terminal C
 # 
# United  1426
# Economy / Coach (T) | Confirm seats with the airline *
# Layover: 0 h 57 m
# custom air icon	Houston	Louisville	2 h 18 m
# 796 mi
# IAH  10:32am
# Terminal B
# SDF  1:50pm  	 
# United  4677 Operated by /EXPRESSJET AIRLINES DBA UNITED EXPRESS
# Economy / Coach (T) | Confirm seats with the airline *

echo ==== fly United 3352 from Louisville to Denver ====
  flt \
          "takeoff" "America/Kentucky/Louisville" 2015 7 10 17 21 \
          "land" "America/Denver" 2015 7 10 18 14 \
          "America/Phoenix"

echo ==== Wait in Denver ====
  flt \
          "land" "America/Denver" 2015 7 10 18 14 \
          "takeoff" "America/Denver" 2015 7 10 19 29 \
          "America/Phoenix"

echo ==== fly United 594 from Denver to Phoenix ====
  flt \
          "takeoff" "America/Denver" 2015 7 10 19 29 \
          "land" "America/Phoenix" 2015 7 10 20 25 \
          "America/Phoenix"

echo ==== fly United 1426 from Phoenix to Houston ====
  flt \
          "takeoff" "America/Phoenix" 2015 7 18 5 0 \
          "land" "America/Chicago" 2015 7 18 9 35 \
          "America/Phoenix"

echo ==== wait in Houston ====
  flt \
          "land" "America/Chicago" 2015 7 18 9 35 \
          "takeoff" "America/Chicago" 2015 7 18 10 32 \
          "America/Phoenix"

echo ==== fly United 4677 from Houston to Louisville ====
  flt \
          "takeoff" "America/Chicago" 2015 7 18 10 32 \
          "land" "America/Kentucky/Louisville" 2015 7 18 13 50 \
          "America/Phoenix"
