#!/bin/bash
# 
# getting there:
# 
# fly from PHX to Philadelphia (PHL) US Airways Flt 1814
# takeoff phoenix 2014 10 21 at 7:05 am
# land philadelphia 2014 10 21 14:32 pm

# fly from philadelphia to 
# takeoff philadelphia 2014 10 21 6:25 pm
# land rome 
#
#Confirmation code F1W9XN
#
#US Airways
# 
#PHX
#
#PHL
#Phoenix to Philadelphia
#Tuesday, October 21, 2014
#
#US Airways
#
#Flight #
#Departure time*
#Arrival time*
#
#1814
#7:05 AM PHX
#2:32 PM PHL
# 
#PHL
#
#FCO
#Philadelphia to Rome-Da Vinci
#Tuesday, October 21, 2014
#
#US Airways
#
#Flight #
#Departure time*
#Arrival time*
#
#
#718
#6:25 PM PHL
#9:10 AM FCO
# 
#FCO
#
#PHL
#Rome-Da Vinci to Philadelphia
#Monday, November 3, 2014
#
#US Airways
#
#
#
#Flight #
#Departure time*
#Arrival time*
#
#
#719
#11:35 AM FCO
#3:45 PM PHL
# 
#PHL
#
#PHX
#Philadelphia to Phoenix
#Monday, November 3, 2014
#
#US Airways
#
#Flight #
#Departure time*
#Arrival time*
#
#1881
#6:05 PM PHL
#9:18 PM PHX
#

ref='America/Phoenix'

echo '===== fly from PHX to Philadelphia (PHL) US Airways Flt 1814 ======='
  flt \
          "takeoff" "America/Phoenix" 2014 10 21 7 5 \
          "land" "America/New_York" 2014 10 21 14 32 \
          $ref

echo ===== wait in Philadelphia ======
  flt \
          "land" "America/New_York" 2014 10 21 14 32 \
          "takeoff" "America/New_York" 2014 10 21 18 25 \
          $ref

echo '===== fly from Philadelphia (PHL) to Rome-Da Vinci (FCO) US Airways Flt 718 ======='
  flt \
          "takeoff" "America/New_York" 2014 10 21 18 25 \
          "land" "Europe/Rome" 2014 10 22 9 10 \
          $ref

echo '===== fly from Rome-Da Vinci (FCO) to Philadelphia (PHL) US Airways Flt 719 ======='
  flt \
          "takeoff" "Europe/Rome" 2014 11 3 11 35 \
          "land" "America/New_York" 2014 11 3 15 45 \
          $ref

echo ===== wait in Philadelphia ======
  flt \
          "land" "America/New_York" 2014 11 3 15 45 \
          "takeoff" "America/New_York" 2014 11 3 18 5 \
          $ref

echo '===== fly from Philadelphia (PHL) to PHX US Airways Flt 1881 ======='
  flt \
          "takeoff" "America/New_York" 2014 11 3 18 5 \
          "land" "America/Phoenix" 2014 11 3 21 18 \
          $ref

