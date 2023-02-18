#!/bin/bash
# 
# getting there:
# 
# fly from chicago (ORD) to London Heathrow British Airways Flt BA0296
# takeoff chicago 2014 4 11 at 8:20 pm
# land London 2014 4 12 10:00 am
# 
# returning:
#
# fly from London Heathrow to Chicago (ORD) British Airways flt BA0297
# takeoff London 2014 4 20 3:50 pm
# land chicago 2014 4 20 6:25pm
# duration 4 hr 5 min

ref='America/Phoenix'

echo '===== fly from chicago (ORD) to London Heathrow British Airways fltBA0296 ======'
  flt \
          "takeoff" "America/Chicago" 2014 4 11 20 20 \
          "land" "Europe/London" 2014 4 12 10 00 \
          $ref

echo '====================================================='
echo '==== Holiday in London =============================='
echo '====================================================='

echo '===== fly from London to Chicago (ORD) British Airways fltBA0297 ======'
  flt \
          "takeoff" "Europe/London" 2014 4 20 15 50 \
          "land" "America/Chicago" 2014 4 20 18 25 \
          $ref
