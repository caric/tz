#!/bin/bash

# Wednesday 23-Oct-2013
# Total price: $219.80
# JAMES GEISS 
# US Airways frequent flyer #40058431467	 US Airways confirmation code: DE12JR 
# Airline ticket number(s):  0377313585134 
# Depart	 10:20 am	 Phoenix (PHX)	Terminal 4	 US Airways
# Arrive	 1:26 pm	 Seattle (SEA)		 Flight 435 - Status
# Seat 25A, Economy/Coach Class (K), 3hr 6mn, Airbus A320
# 
# Thursday 24-Oct-2013
# Depart	 5:45 pm	 Seattle (SEA)		 US Airways
# Arrive	 8:33 pm	 Phoenix (PHX)	 Terminal 4	 Flight 586 - Status
# Seat unconfirmed


echo ==== fly 435 from Phoenix To Seattle ====
  flt \
          "takeoff" "America/Phoenix" 2013 10 23 10 20 \
          "land" "America/Los_Angeles" 2013 10 23 13 26 \
          "America/Phoenix"

echo ==== fly 586 from Seattle To Phoenix ====
  flt \
          "takeoff" "America/Los_Angeles" 2013 10 24 17 45 \
          "land" "America/Phoenix" 2013 10 24 20 33 \
          "America/Phoenix"

