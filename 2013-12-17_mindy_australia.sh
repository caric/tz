#!/bin/bash
# 
# getting there:
# 
# fly from chicago (ORD) to los angeles (LAX) American flt1617
# Boeing 737-800
# takeoff chicago 2013 12 17 at 6:25 pm
# land Los Angeles 2013 12 17 8:55 pm
# duration 4 hr 30 min
# 
# wait in los angeles
# land Los Angeles 2013 12 17 8:55 pm
# takeoff Los Angeles 2013 12 17 11:55 pm
# 
# fly from Los Angeles (LAX) to Sydney (SYD) Quantas flt7366
# Boeing 747
# takeoff Los Angeles 2013 12 17 11:55 pm
# land Sydney 2013-12-19 9:40 am
# duration 14 hr 45 min
# 
# returning:
# fly from Sydney (SYD) to Melbourne (MEL) Quantas flt7341
# Boeing 737
# takeoff Sydney 2014-01-04 8:00am
# land melbourne 2014-01-04 9:35 am
# 
# wait in melbourne (MEL)
# land melbourne 2014-01-04 9:35 am
# takeoff melbourne 2014-01-04 11:20 am
# 
# fly from melbourne (MEL) to Los Angeles (LAX) Quantas flt7349
# Airbus
# takeoff melbourne 2014-01-04 11:20 am
# land Los Angeles 2014 1 4 6:40 am
# duration 14 hr 20 min
# 
# wait in Los Angeles (LAX)
# land Los Angeles 2014 1 4 6:40 am
# takeoff Los Angeles 2014 1 4 9:20 am
# 
# fly from Los Angeles (LAX) to Chicago (ORD) American flt1200
# Boeing 737-800
# takeoff Los Angeles 2014 1 4 9:20 am
# land chicago 2014 1 4 3:25pm
# duration 4 hr 5 min

ref='America/Phoenix'

echo '===== fly from chicago (ORD) to Los Angeles (LAX) American flt1617 ======'
  flt \
          "takeoff" "America/Chicago" 2013 12 17 18 25 \
          "land" "America/Los_Angeles" 2013 12 17 20 55 \
          $ref

echo ===== wait in Los Angeles ======
  flt \
          "land" "America/Los_Angeles" 2013 12 17 20 55 \
          "takeoff" "America/Los_Angeles" 2013 12 17 23 55 \
          $ref

echo '==== fly from Los Angeles (LAX) to Sydney (SYD) Quantas flt7366 ====='
  flt \
          "takeoff" "America/Los_Angeles" 2013 12 17 23 55 \
          "land" "Australia/Sydney" 2013 12 19 9 40 \
          $ref

echo '====================================================='
echo '==== Christmas in Australia ========================='
echo '====================================================='

echo '==== Fly from Sydney (SYD) to Melbourne (MEL) Quantas flt7341 ======='
  flt \
          "takeoff" "Australia/Sydney" 2014 1 4 8 0 \
          "land" "Australia/Melbourne" 2014 1 4 9 35 \
          $ref

echo '===== wait in Melbourne (MEL) ======'
  flt \
          "land" "Australia/Melbourne" 2014 1 4 9 35 \
          "takeoff" "Australia/Melbourne" 2014 1 4 11 20 \
          $ref

echo '===== fly from Melbourne (MEL) to Los Angeles (LAX) Quantas flt7349 ======'
  flt \
          "takeoff" "Australia/Melbourne" 2014 1 4 11 20 \
          "land" "America/Los_Angeles" 2014 1 4 6 40 \
          $ref

echo '===== wait in Los Angeles (LAX) ======'
  flt \
          "land" "America/Los_Angeles" 2014 1 4 6 40 \
          "takeoff" "America/Los_Angeles" 2014 1 4 9 20 \
          $ref

echo '===== fly from Los Angeles (LAX) to Chicago (ORD) American flt1200 ======'
  flt \
          "takeoff" "America/Los_Angeles" 2014 1 4 9 20 \
          "land" "America/Chicago" 2014 1 4 15 25 \
          $ref
