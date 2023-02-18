#!/bin/bash

# Phoenix
# PHX 1:25am
# Charlotte
# CLT 8:23am
# 3 h 58 m 
# US Airways 1965
# Economy / Coach (S) | Confirm seats with the airline†
# Layover: 1 h 32 m
# custom air icon	
# Charlotte
# CLT 9:55am
# Louisville
# SDF 11:27am
# 1 h 32 m 
# US Airways 2724 Operated by US AIRWAYS EXPRESS-MESA AIRLINES
# Economy / Coach (S) | Confirm seats with the airline†
# Air

echo ==== fly US Airways 1965 from Phoenix To Charlotte ====
  flt \
          "takeoff" "America/Phoenix" 2014 5 22 1 25 \
          "land" "America/New_York" 2014 5 22 8 23 \
          "America/Phoenix"

echo ==== Wait in Charlotte =====
  flt \
          "land" "America/New_York" 2014 5 22 8 23 \
          "takeoff" "America/New_York" 2014 5 22 9 55 \
          "America/Phoenix"

echo ==== fly US Airways 2724 Charlotte \(CLT\) to Louisville \(SDF\) =====
  flt \
          "takeoff" "America/New_York" 2014 5 22 9 55 \
          "land" "America/Kentucky/Louisville" 2014 5 22 11 27 \
          "America/Phoenix"

