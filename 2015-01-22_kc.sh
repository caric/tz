#!/bin/bash


# DEPART
# JAN 24
# SAT
# 12:50 PM	Depart Phoenix, AZ (PHX) on Southwest Airlines 
# 01:00 PM	Arrive in San Diego, CA (SAN)
# Flight
# #2566	Operated by Southwest
# 
# Saturday, January 24, 2015
# 
# Travel Time 5 h 10 m 
# (1 stop, includes 1 plane change)
# Wanna Get Away
# 01:55 PM	Change connect, change plane to Southwest Airlines in San Diego, CA (SAN) 
# 07:00 PM	Arrive in Kansas City, MO (MCI)
# Flight
#14	Operated by Southwest
# RETURN

# RETURN
# JAN 28
# WED
# 04:30 PM	Depart Kansas City, MO (MCI) on Southwest Airlines 
# 05:40 PM	Arrive in Albuquerque, NM (ABQ)
# Flight
# #546	Operated by Southwest
# 
# Wednesday, January 28, 2015
# 
# Travel Time 4 h 35 m 
# (1 stop, includes 1 plane change)
# Business Select
# 06:50 PM	Change connect, change plane to Southwest Airlines in Albuquerque, NM (ABQ) 
# 08:05 PM	Arrive in Phoenix, AZ (PHX)
# Flight
# #870	Operated by Southwest

echo ==== fly Southwest 2566 from Phoenix To San diego \(SAN\) ====
  flt \
          "takeoff" "America/Phoenix" 2015 1 24 12 50 \
          "land" "America/Los_Angeles" 2015 1 24 13 0 \
          "America/Phoenix"

echo ==== Wait in San diego =====
  flt \
          "land" "America/Los_Angeles" 2015 1 24 13 0 \
          "takeoff" "America/Los_Angeles" 2015 1 24 13 55 \
          "America/Phoenix"

echo ==== fly Southwest 14 San diego \(SAN\) to Kansas City \(MCI\) =====
  flt \
          "takeoff" "America/Los_Angeles" 2015 1 24 13 55 \
          "land" "America/Chicago" 2015 1 24 19 0 \
          "America/Phoenix"

echo ==== RETURN ====
echo ==== RETURN ====
echo ==== RETURN ====

echo ==== fly Southwest 546 Kansas City \(MCI\) to Albuquerque \(ABQ\) =====
  flt \
          "takeoff" "America/Chicago" 2015 1 28 16 30 \
          "land" "America/Denver" 2015 1 28 17 40 \
          "America/Phoenix"

echo ==== Wait in Albuquerque =====
  flt \
          "land" "America/Denver" 2015 1 28 17 40 \
          "takeoff" "America/Denver" 2015 1 28 18 50 \
          "America/Phoenix"

echo ==== Joy fly Southwest 4175 San Diego \(SAN\) to Phoenix \(PHX\) =====
  flt \
          "takeoff" "America/Denver" 2015 1 28 18 50 \
          "land" "America/Phoenix" 2015 1 28 20 5 \
          "America/Phoenix"
