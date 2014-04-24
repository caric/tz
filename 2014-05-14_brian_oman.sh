#!/bin/bash

# Wed, May 14, 2014
# Phoenix Sky Harbor International Airport, (PHX) to Salalah Airport, (SLL)
#
# Flight: 		United Flight 1245    (on Boeing 737)
# Depart: 		7:35 AM, Phoenix, AZ (PHX)
# Arrive: 		2:57 PM, Washington DC, Dulles Airport (IAD)
# 4hr 22min
#
# change of planes. time between flights 3h 13min
#
# Flight: 		United Flight 976 (on Boeing 777)
# Depart: 		06:10 PM, Washington DC, Dulles Airport (IAD)
# Arrive: 		3:35 pM, Dubai, United Arab Emirates Dubai international airport (DXB)
# 13hr 25min
#
# change airlines time between flights 5hr 10min
#
# Flight: 		Oman aviation 618 (on Embraer 175)
# Depart: 		8:45 PM, Dubai (DXB)
# Arrive: 		10:40pm Salalah Airport (SLL)
# 1 hr 55min
#
#
# Total Travel Time: 28hr 5 min
# ______________________________________________________
# 
echo ===== fly from phoenix to Washington DC \(Dulles\) ======
  flt \
          "takeoff" "America/Phoenix" 2014 5 14 7 35 \
          "land" "America/New_York" 2014 5 14 14 57 \
          "America/Phoenix"

echo ===== wait in DC ======
  flt \
          "land" "America/New_York" 2014 5 14 14 57 \
          "takeoff" "America/New_York" 2014 5 14 18 10 \
          "America/Phoenix"

echo ==== fly from DC to Dubai =====
  flt \
          "takeoff" "America/New_York" 2014 5 14 18 10 \
          "land" "Asia/Dubai" 2014 5 15 15 35 \
          "America/Phoenix"

echo ==== wait in Dubai ====
  flt \
          "land" "Asia/Dubai" 2014 5 15 15 35 \
          "takeoff" "Asia/Dubai" 2014 5 15 20 45 \
          "America/Phoenix"

echo ==== fly from dubai to salalah ====
  flt \
          "takeoff" "Asia/Dubai" 2014 5 15 20 45 \
          "land" "Asia/Muscat" 2014 5 15 22 40 \
          "America/Phoenix"


# 
#  sat, Jul 12, 2014
#Salalah, (SLL) to Phoenix Sky Harbor International Airport, (PHX)
#
#Flight: 		Oman aviation 617 (on Embraer 175)
#Depart: 		5:50 PM, Salalah (SLL)
#Arrive: 		7:35pm dubai (DXB)
# 1 hr 45 min
#
# change of airlines. time between flights 4hr 35min
#
#Flight: 		United Flight 802 (on boeing 777)
#Depart: 		12:10am dubai (DXB)
#Arrive: 		6:15am Washington DC Dulles (IAD)
# 14hr 5min
#
# change planes. time between flights: 12hr 20min
#
#Flight: 		United Flight 939 (on airbus A320)
#Depart: 		6:35pm Dulles
#Arrive: 		8:28pm PHX
# 4hr 53 min
#
#Total Travel Time: 37 hrs 38 mins 

echo ==== fly from salalah to dubai ====
  flt \
          "takeoff" "Asia/Muscat" 2014 7 12 17 50 \
          "land" "Asia/Dubai" 2014 7 12 19 35 \
          "America/Phoenix"

echo ==== wait in dubai ====
  flt \
          "land" "Asia/Dubai" 2014 7 12 19 35 \
          "takeoff" "Asia/Dubai" 2014 7 13 0 10 \
          "America/Phoenix"

echo ==== fly from dubai to washington DC \(Dulles\) ====
  flt \
          "takeoff" "Asia/Dubai" 2014 7 13 0 10 \
          "land" "America/New_York" 2014 7 13 6 15 \
          "America/Phoenix"

echo ==== wait in DC ====
  flt \
          "land" "America/New_York" 2014 7 13 6 15 \
          "takeoff" "America/New_York" 2014 7 13 18 35 \
          "America/Phoenix"


echo ==== fly from chicago to phoenix ====
  flt \
          "takeoff" "America/New_York" 2014 7 13 18 35 \
          "land" "America/Phoenix" 2014 7 13 20 28 \
          "America/Phoenix"
