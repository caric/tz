#!/bin/bash

# Flight 1: Tuesday, 03/15/2022 Est. Travel Time: 5h 25m
#FLIGHT 2995
#DEPARTS PHX 02:15PM
#ARRIVES DAL 06:30PM Dallas (Love)
#
#Stop:  Change planes
#FLIGHT 2407
#DEPARTS DAL 07:20PM Dallas (Love)
#ARRIVES MCO 10:40PM
#Orlando
#
#Flight 2: Saturday, 03/19/2022 Est. Travel Time: 7h 5m
#FLIGHT 3073
#DEPARTS MCO 05:15PM Orlando
#ARRIVES DAL 07:10PM Dallas (Love)
#
#Stop:  Change planes
#FLIGHT 3596
#DEPARTS DAL 08:40PM Dallas (Love)
#ARRIVES PHX 09:20PM Phoenix

ref='America/Phoenix'

echo ==== fly Southwest 2995 from Phoenix to Dallas ====
  flt \
          "takeoff" "America/Phoenix" 2022 3 15 14 15 \
          "land" "America/Chicago" 2022 3 15 18 30 \
          $ref

echo ===== wait in Dallas ======
  flt \
          "land" "America/Chicago" 2022 3 15 18 30 \
          "takeoff" "America/Chicago" 2022 3 15 19 20 \
          $ref

echo ==== fly Southwest 2407 from Dallas to Orlando ====
  flt \
          "takeoff" "America/Chicago" 2022 3 15 19 20 \
          "land" "America/New_York" 2019 3 15 22 40 \
          $ref

echo ==== fly Southwest 3073 from Orlando to Dallas ====
  flt \
          "takeoff" "America/New_York" 2022 3 19 17 15 \
          "land" "America/Chicago" 2022 3 19 19 10 \
          $ref

echo ===== wait in Dallas ======
  flt \
          "land" "America/Chicago" 2022 3 19 19 10 \
          "takeoff" "America/Chicago" 2022 3 19 20 40 \
          $ref

echo ==== fly Southwest 3596 from Dallas to Phoenix ====
  flt \
          "takeoff" "America/Chicago" 2022 3 19 20 40 \
          "land" "America/Phoenix" 2022 3 19 21 20 \
          $ref

