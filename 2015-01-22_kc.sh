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
# JAN 27
# TUE
# 12:35 PM	Depart Kansas City, MO (MCI) on Southwest Airlines
# 02:10 PM	Arrive in San Diego, CA (SAN)
# Flight
# #302	Operated by Southwest
# 
# Tuesday, January 27, 2015
# 
# Travel Time 6 h 10 m 
# (1 stop, includes 1 plane change)
# Wanna Get Away
# 03:35 PM	Change connect, change plane to Southwest Airlines in San Diego, CA (SAN) 
# 05:45 PM	Arrive in Phoenix, AZ (PHX)
# Flight
# #4175	Operated by Southwest


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

echo ==== Joy fly Southwest 302 Kansas City \(MCI\) to San Diego \(SAN\) =====
  flt \
          "takeoff" "America/Chicago" 2015 1 27 12 35 \
          "land" "America/Los_Angeles" 2015 1 27 14 10 \
          "America/Phoenix"

echo ==== Joy Wait in San diego =====
  flt \
          "land" "America/Los_Angeles" 2015 1 27 14 10 \
          "takeoff" "America/Los_Angeles" 2015 1 27 15 35 \
          "America/Phoenix"

echo ==== Joy fly Southwest 4175 San Diego \(SAN\) to Phoenix \(PHX\) =====
  flt \
          "takeoff" "America/Los_Angeles" 2015 1 27 15 35 \
          "land" "America/Phoenix" 2015 1 27 17 45 \
          "America/Phoenix"

echo ==== Kevin fly Southwest 1045 Kansas City \(MCI\) to Phoenix \(PHX\) =====
  flt \
          "takeoff" "America/Chicago" 2015 1 29 15 35 \
          "land" "America/Phoenix" 2015 1 29 17 30 \
          "America/Phoenix"

