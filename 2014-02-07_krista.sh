#!/bin/bash

# 02/07/2014 - Departure   1 stop	 Total travel time: 5 h 5 m
# custom air icon	Little Rock	Dallas	 1 h 20 m 
# LIT  12:00pm	 DFW  1:20pm  	 
# American Airlines 1461
# Economy/Coach (O) | Seat 27F | Confirm or change seats with the airline*
# Layover: 1 h 10 m
# custom air icon	Dallas	Phoenix	 2 h 35 m 
# DFW  2:30pm	 PHX  4:05pm  
# Terminal 3
# 
# American Airlines 1519
# Economy/Coach (O) | Seat 24F | Confirm or change seats with the airline*
# 02/09/2014 - Return   1 stop	 Total travel time: 4 h 0 m
# custom air icon	Phoenix	Dallas	 2 h 15 m 
# PHX  4:50pm
# Terminal 3
# DFW  8:05pm  	 
# American Airlines 1519
# Economy/Coach (O) | Seat 24F | Confirm or change seats with the airline*
# Layover: 0 h 45 m
# custom air icon	Dallas	Little Rock	 1 h 0 m 
# DFW  8:50pm	 LIT  9:50pm  	 
# American Airlines 1614
# Economy/Coach (O) | Seat 26F | Confirm or change seats with the airline*
# Airli

echo ==== fly from Little Rock To Dallas ====
  flt \
          "takeoff" "America/Chicago" 2014 2 7 12 00 \
          "land" "America/Chicago" 2014 2 7 13 20 \
          "America/Phoenix"

echo ===== wait in Dallas ======
  flt \
          "land" "America/Chicago" 2014 2 7 13 20 \
          "takeoff" "America/Chicago" 2014 2 7 14 30 \
          "America/Phoenix"

echo ===== fly from Dallas to Phoenix ======
  flt \
          "takeoff" "America/Chicago" 2014 2 7 14 30 \
          "land" "America/Phoenix" 2014 2 7 16 5 \
          "America/Phoenix"

echo ==== fly from Phoenix To Dallas ====
  flt \
          "takeoff" "America/Phoenix" 2014 2 9 16 50 \
          "land" "America/Chicago" 2014 2 9 20 5 \
          "America/Phoenix"

echo ===== wait in Dallas ======
  flt \
          "land" "America/Chicago" 2014 2 9 20 5 \
          "takeoff" "America/Chicago" 2014 2 9 20 50 \
          "America/Phoenix"

echo ===== fly from Dallas to Little Rock ======
  flt \
          "takeoff" "America/Chicago" 2014 2 9 20 50 \
          "land" "America/Chicago" 2014 2 9 21 50 \
          "America/Phoenix"
