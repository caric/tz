#!/bin/bash

#AIR Confirmation: HDBJGW
#Confirmation Date: 09/3/2015
#Passenger(s)
#Rapid Rewards #
#Ticket #
#Expiration
#Est. Points Earned
#GEISS/JOSEPH F
#Join or Add #
#5262140243721
#Sep 2, 2016
#1462
#
#GEISS/NORMA E
#353265242
#5262140243722
#Sep 2, 2016
#1462
#
#Rapid Rewards points earned are only estimates. Not a member - visit http://www.southwest.com/rapidrewards and sign up today!
#
#Date
#Flight
#Departure/Arrival
#Wed Oct 14
#2107
#Depart KANSAS CITY, MO (MCI) on Southwest Airlines at 07:00 AM
#Arrive in PHOENIX, AZ (PHX) at 07:55 AM
#Travel Time 2 hrs 55 mins
#Wanna Get Away
#
#Mon Oct 19
#414
#Depart PHOENIX, AZ (PHX) on Southwest Airlines at 08:20 AM
#Arrive in KANSAS CITY, MO (MCI) at 12:55 PM
#Travel Time 2 hrs 35 mins
#Wanna Get Away
#
echo ==== HDBJGW fly from KC To Phoenix SW Flight 2107 ====
  flt \
          "takeoff" "America/Chicago" 2015 10 14 7 0 \
          "land" "America/Phoenix" 2015 10 14 7 55 \
          "America/Phoenix"

echo ==== fly from Phoenix To KC SW Flight 414 ====
  flt \
          "takeoff" "America/Phoenix" 2015 10 19 8 20 \
          "land" "America/Chicago" 2015 10 19 12 55 \
          "America/Phoenix"
