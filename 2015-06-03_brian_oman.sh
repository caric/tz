#!/bin/bash

# Jun 3, 2015 - Departure  4 stops 	Total travel time:31 h 6 m
# Phoenix	Detroit	3 h 45 m
# 1,678 mi
# PHX  9:54am
# Terminal 3
# DTW  4:39pm  
# Terminal EM
 # 
# Delta  134
# Economy / Coach (U) | Confirm seats with the airline *
# Layover: 1 h 49 m
# Detroit	Amsterdam	7 h 37 m
# 3,920 mi
# DTW  6:28pm
# Terminal EM
# AMS  8:05am +1 day 	 
# Delta  134
# Economy / Coach (U) | Confirm seats with the airline *
# Layover: 2 h 10 m
# Amsterdam	Doha	6 h 25 m
# 3,059 mi
# AMS  10:15am	DOH  5:40pm  	 
# KLM  441
# Economy / Coach (T) | 42G | Confirm or change seats with the airline*
# Layover: 0 h 45 m
# Doha	Muscat	1 h 40 m
# 451 mi
# DOH  6:25pm	MCT  9:05pm  	 
# KLM  441
# Economy / Coach (T) | 42G | Confirm or change seats with the airline*
# Layover: 5 h 10 m
# Muscat	Salalah	1 h 45 m
# 539 mi
# MCT  2:15am	SLL  4:00am   (Arrives on Jun 5, 2015)	 
# Oman Air  901
# Economy / Coach (N) | Confirm seats with the airline *

echo ===== fly from phoenix to Detroit \(DTW\) ======
  flt \
          "takeoff" "America/Phoenix" 2015 6 3 9 54 \
          "land" "America/New_York" 2015 6 3 16 39 \
          "America/Phoenix"

echo ===== wait in Detroit ======
  flt \
          "land" "America/New_York" 2015 6 3 16 39 \
          "takeoff" "America/New_York" 2015 6 3 18 28 \
          "America/Phoenix"

echo ==== fly from Detroit to Amsterdam AMS =====
  flt \
          "takeoff" "America/New_York" 2015 6 3 18 28 \
          "land" "Europe/Amsterdam" 2015 6 4 8 5 \
          "America/Phoenix"

echo ==== wait in Amsterdam ====
  flt \
          "land" "Europe/Amsterdam" 2015 6 4 8 5 \
          "takeoff" "Europe/Amsterdam" 2015 6 4 10 15 \
          "America/Phoenix"

echo ==== fly from amsterdam to Doha Qatar DOH ====
  flt \
          "takeoff" "Europe/Amsterdam" 2015 6 4 10 15 \
          "land" "Asia/Qatar" 2015 6 4 17 40 \
          "America/Phoenix"

echo ==== wait in Doha ====
  flt \
          "land" "Asia/Qatar" 2015 6 4 17 40 \
          "takeoff" "Asia/Qatar" 2015 6 4 18 25 \
          "America/Phoenix"

echo ==== fly from Doha Qatar to Muscat MCT ====
  flt \
          "takeoff" "Asia/Qatar" 2015 6 4 18 25 \
          "land" "Asia/Muscat" 2015 6 4 21 5 \
          "America/Phoenix"

echo ==== wait in Muscat ====
  flt \
          "land" "Asia/Muscat" 2015 6 4 21 5 \
          "takeoff" "Asia/Muscat" 2015 6 5 2 15 \
          "America/Phoenix"

echo ==== fly from muscat to salalah  ====
  flt \
          "takeoff" "Asia/Muscat" 2015 6 5 2 15 \
          "land" "Asia/Muscat" 2015 6 5 4 0 \
          "America/Phoenix"

# Jun 25, 2015 - Return  2 stops 	Total travel time:27 h 20 m
# Salalah	Dubai	1 h 50 m
# 573 mi
# SLL  4:50pm	DXB  6:40pm  
# Terminal 1
 # 
# Oman Air  617
# Economy / Coach (L) | Confirm seats with the airline *
# Layover: 3 h 40 m
# Dubai	Atlanta	15 h 53 m
# 7,594 mi
# DXB  10:20pm
# Terminal 1
# ATL  6:13am +1 day  
# Terminal I
 # 
# Delta  7
# Economy / Coach (U) | Confirm seats with the airline *
# Layover: 2 h 8 m
# Atlanta	Phoenix	3 h 49 m
# 1,584 mi
# ATL  8:21am
# Terminal S
# PHX  9:10am  
# Terminal 3
# (Arrives on Jun 26, 2015)	 
# Delta  1546
# Economy / Coach (U) | Confirm seats with the airline *
# 

echo ==== fly from Salalah to Dubai  ====
  flt \
          "takeoff" "Asia/Muscat" 2015 6 25 16 50 \
          "land" "Asia/Dubai" 2015 6 25 18 40 \
          "America/Phoenix"

echo ==== wait in Dubai ====
  flt \
          "land" "Asia/Dubai" 2015 6 25 18 40 \
          "takeoff" "Asia/Dubai" 2015 6 25 22 20 \
          "America/Phoenix"

echo ==== fly from dubai to atlanta ====
  flt \
          "takeoff" "Asia/Dubai" 2015 6 25 22 20 \
          "land" "America/New_York" 2015 6 26 6 13 \
          "America/Phoenix"

echo ==== wait in atlanta ====
  flt \
          "land" "America/New_York" 2015 6 26 6 13 \
          "takeoff" "America/New_York" 2015 6 26 8 21 \
          "America/Phoenix"

echo ==== fly from atlanta to phoenix ====
  flt \
          "takeoff" "America/New_York" 2015 6 26 8 21 \
          "land" "America/Phoenix" 2015 6 26 9 10 \
          "America/Phoenix"

