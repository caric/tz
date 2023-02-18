#!/bin/bash

# Mon, May 27, 2013
# Phoenix Sky Harbor International Airport, (PHX) to Muscat, (MCT)
#
# Flight: 		United Flight 502    (on Airbus A320-100/200)
# Depart: 		11:55 AM, Phoenix, AZ (PHX)
# Arrive: 		05:15 PM, Chicago, IL (ORD)
#
# Requested Seats: 	32B, 32A 
#
# 1 Stop - change planes in Chicago, (ORD)
# Connection Time:  2   hrs    10 mins 
#
#
# Flight: 		United Flight 7681    operated by Swiss Intl Air Lines  (on Airbus A330-300)
# Depart: 		07:25 PM, Chicago, IL (ORD)
# Arrive: 		11:00 AM, Zurich, Switzerland (ZRH)
#
#
#
# 1 Stop - change planes in Zurich, (ZRH)
# Connection Time:  1  hr    45 mins 
#
#
# Flight: 		United Flight 7686    operated by Swiss Intl Air Lines  (on Airbus A330-300)
# Depart: 		12:45 PM, Zurich, Switzerland (ZRH)
# Arrive: 		10:35 PM, Next day Muscat, Oman (MCT)
#
#
# 1 Stop - change planes Dubai, United Arab Emirates (DXB) 
#
#
# Total Travel Time: 23 hrs 40 mins 
# ______________________________________________________
# 
echo ===== fly from phoenix to chicago ======
  flt \
          "takeoff" "America/Phoenix" 2013 5 27 11 55 \
          "land" "America/Chicago" 2013 5 27 17 15 \
          "America/Phoenix"

echo ===== wait in chicago ======
  flt \
          "land" "America/Chicago" 2013 5 27 17 15 \
          "takeoff" "America/Chicago" 2013 5 27 19 25 \
          "America/Phoenix"

echo ==== fly from chicago to zurich =====
  flt \
          "takeoff" "America/Chicago" 2013 5 27 19 25 \
          "land" "Europe/Zurich" 2013 5 28 11 00 \
          "America/Phoenix"

echo ==== wait in zurich ====
  flt \
          "land" "Europe/Zurich" 2013 5 28 11 00 \
          "takeoff" "Europe/Zurich" 2013 5 28 12 45 \
          "America/Phoenix"

echo ==== fly from zurich to oman ====
  flt \
          "takeoff" "Europe/Zurich" 2013 5 28 12 45 \
          "land" "Asia/Muscat" 2013 5 28 22 35 \
          "America/Phoenix"


# 
# For your boarding pass, use reference code B7KSW6 for online or airport checkin.
# 
# 
#  Mon, Jul 8, 2013
#Muscat, (MCT) to Phoenix Sky Harbor International Airport, (PHX)
#
#Flight: 		United Flight 7685    operated by Swiss Intl Air Lines  (on Airbus A330-300)
#Depart: 		11:35 PM, Muscat, Oman (MCT)
#Arrive: 		06:20 AM, Zurich, Switzerland (ZRH)
#
#
#1 Stop - change planes Dubai, United Arab Emirates (DXB) 
#
#
#1 Stop - change planes in Zurich, (ZRH)
#Connection Time:  6   hrs    35 mins 
#
#
#Flight: 		United Flight 7680    operated by Swiss Intl Air Lines  (on Airbus A330-300)
#Depart: 		12:55 PM, Zurich, Switzerland (ZRH)
#Arrive: 		03:40 PM, Chicago, IL (ORD)
#
#
#
#1 Stop - change planes in Chicago, (ORD)
#Connection Time:  5   hrs    25 mins 
#
#
#Flight: 		United Flight 1245    (on Boeing 737-900)
#Depart: 		09:05 PM, Chicago, IL (ORD)
#Arrive: 		10:54 PM, Next day Phoenix, AZ (PHX)
#
#Requested Seats: 	23E, 24E 
#
#Total Travel Time: 34 hrs 19 mins 

echo ==== fly from oman to zurich ====
  flt \
          "takeoff" "Asia/Muscat" 2013 7 8 23 35 \
          "land" "Europe/Zurich" 2013 7 9 6 20 \
          "America/Phoenix"

echo ==== wait in zurich ====
  flt \
          "land" "Europe/Zurich" 2013 7 9 6 20 \
          "takeoff" "Europe/Zurich" 2013 7 9 12 55 \
          "America/Phoenix"

echo ==== fly from zurich to chicago ====
  flt \
          "takeoff" "Europe/Zurich" 2013 7 9 12 55 \
          "land" "America/Chicago" 2013 7 9 15 40 \
          "America/Phoenix"

echo ==== wait in chicago ====
  flt \
          "land" "America/Chicago" 2013 7 9 15 40 \
          "takeoff" "America/Chicago" 2013 7 9 21 5 \
          "America/Phoenix"


echo ==== fly from chicago to phoenix ====
  flt \
          "takeoff" "America/Chicago" 2013 7 9 21 5 \
          "land" "America/Phoenix" 2013 7 9 22 54 \
          "America/Phoenix"
