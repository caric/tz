#!/bin/bash

#Air Confirmation
#Passenger(s)
#8KG39B
#JOY ELIZABETH GEISS
#JAMES KEVIN GEISS
#ELIZABETH PERSEPHONE GEISS
#	
#Date
#Flight
#Departure/Arrival
#Fri May 8
#154
#Depart Phoenix (PHX) on Southwest Airlines at 07:30 AM 
#Arrive in Denver (DEN) at 10:25 AM
# 
#4469
#Change planes to Southwest Airlines in Denver (DEN) at 11:45 AM 
#Arrive in Dayton (DAY) at 04:15 PM
#
#Mon May 11
#277
#Depart Dayton (DAY) on Southwest Airlines at 06:35 AM 
#Arrive in Denver (DEN) at 07:30 AM
# 
#285
#Change planes to Southwest Airlines in Denver (DEN) at 08:25 AM 
#Arrive in Phoenix (PHX) at 09:20 AM

echo ==== fly Southwest 154 from Phoenix To Denver ====
  flt \
          "takeoff" "America/Phoenix" 2015 5 8 7 30 \
          "land" "America/Denver" 2015 5 8 10 25 \
          "America/Phoenix"

echo ==== Wait in Denver =====
  flt \
          "land" "America/Denver" 2015 5 8 10 25 \
          "takeoff" "America/Denver" 2015 5 8 11 45 \
          "America/Phoenix"

echo ==== fly Southwest 4469 Denver \(DEN\) to Dayton \(DAY\) =====
  flt \
          "takeoff" "America/Denver" 2015 5 8 11 45 \
          "land" "America/New_York" 2015 5 8 16 15 \
          "America/Phoenix"

echo ==== fly Southwest 277 Dayton \(DAY\) to Denver \(DEN\) =====
  flt \
          "takeoff" "America/New_York" 2015 5 11 6 35 \
          "land" "America/Denver" 2015 5 11 7 30 \
          "America/Phoenix"

echo ==== Wait in Denver =====
  flt \
          "land" "America/Denver" 2015 5 11 7 30 \
          "takeoff" "America/Denver" 2015 5 11 8 25 \
          "America/Phoenix"

echo ==== fly Southwest 285 from Denver To Phoenix ====
  flt \
          "takeoff" "America/Denver" 2015 5 11 8 25 \
          "land" "America/Phoenix" 2015 5 11 9 20 \
          "America/Phoenix"

