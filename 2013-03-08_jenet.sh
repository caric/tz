#!/bin/bash

# Louisville is America/Kentucky/Louisville
# Louisville International Airport is SDF

  # fly from Louisville to Phoenix
  flt \
          "takeoff" "America/Kentucky/Louisville" 2013 3 8 8 55 \
          "land" "America/Phoenix" 2013 3 8 11 15 \
          "America/Phoenix"

  # fly from Phoenix to Louisville
  flt \
          "takeoff" "America/Phoenix" 2013 3 13 10 00 \
          "land" "America/Kentucky/Louisville" 2013 3 13 16 25 \
          "America/Phoenix"
