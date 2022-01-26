#!/bin/bash

echo ==== fly 636 from Seattle To Phoenix ====
  flt \
          "takeoff" "America/Los_Angeles" 2019 3 22 5 30 \
          "land" "America/Phoenix" 2019 3 22 8 35 \
          "America/Phoenix"

echo ==== fly 631 from Phoenix To Seattle ====
  flt \
          "takeoff" "America/Phoenix" 2019 3 30 5 20 \
          "land" "America/Los_Angeles" 2019 3 30 8 35 \
          "America/Phoenix"

