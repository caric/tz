#!/bin/bash


# Adult Passenger(s)	Rapid Rewards #	Options
# JAMES GEISS	00000387888270	Add EarlyBird Check-In
# Subscribe to Flight Status Messaging
# DEPART
# JAN 23
# FRI
# 11:55 AM	Depart Phoenix, AZ (PHX) on Southwest Airlines 
# 04:05 PM	Arrive in Nashville, TN (BNA)
# Flight
# #4558	Operated by Southwest
# 
# Friday, January 23, 2015
# 
# Travel Time 5 h 30 m 
# (1 stop, includes 1 plane change)
# Wanna Get Away
# 04:45 PM	Change connect, change plane to Southwest Airlines in Nashville, TN (BNA)
# 06:25 PM	Arrive in Kansas City, MO (MCI)
# Flight
# #188	Operated by Southwest
# 
# Wifi logoWiFi available
# RETURN
# JAN 29
# THU
# 03:35 PM	Depart Kansas City, MO (MCI) on Southwest Airlines 
# 05:30 PM	Arrive in Phoenix, AZ (PHX)
# Flight
# #1045	Operated by Southwest
# 
# Thursday, January 29, 2015
# 
# Travel Time 2 h 55 m 
# (Nonstop)
# Wanna Get Away
# 
echo ==== fly Southwest 4558 from Phoenix To Nashville \(BNA\) ====
  flt \
          "takeoff" "America/Phoenix" 2015 1 23 11 55 \
          "land" "America/Chicago" 2015 1 23 16 5 \
          "America/Phoenix"

echo ==== Wait in Nashville =====
  flt \
          "land" "America/Chicago" 2015 1 23 16 5 \
          "takeoff" "America/Chicago" 2015 1 23 16 45 \
          "America/Phoenix"

echo ==== fly Southwest 188 Nashville \(BNA\) to Kansas City \(MCI\) =====
  flt \
          "takeoff" "America/Chicago" 2015 1 23 16 45 \
          "land" "America/Chicago" 2015 1 23 18 25 \
          "America/Phoenix"

echo ==== fly Southwest 1045 Kansas City \(MCI\) to Nashville \(BNA\) =====
  flt \
          "takeoff" "America/Chicago" 2015 1 29 15 35 \
          "land" "America/Phoenix" 2015 1 29 17 30 \
          "America/Phoenix"

